#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-command-log-first-command"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

self_host_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_command_log_cleanup' EXIT

self_host_command_log_reset_and_assert_baseline

command_log_path="$(self_host_command_log_tmp_path)"

self_host_command_log_mutate_json "${command_log_path}" <<'PY'
if not command_log["commands"]:
    raise SystemExit("Need at least one command entry for regression test.")

command_log["commands"][0]["command"] = "bash scripts/test-self-host-proof-artifacts.sh --drifted"
PY

self_host_command_log_expect_stderr_contains \
  "reason_code=COMMAND_LOG_FIRST_COMMAND_INVALID" \
  "Expected a drifted first command to fail."

echo "[${script_label}] PASS: first command validation is deterministic."
