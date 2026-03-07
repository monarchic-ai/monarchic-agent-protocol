#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-command-log-reason-codes"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

self_host_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_command_log_cleanup' EXIT

self_host_command_log_reset_fixtures
self_host_command_log_assert_baseline_passes

command_log_path="$(self_host_command_log_tmp_path)"

self_host_command_log_mutate_json "${command_log_path}" <<'PY'
command_log["status"] = "blocked"
PY

self_host_command_log_expect_reason_code "COMMAND_LOG_STATUS_MISMATCH" "Expected status mismatch to fail."

self_host_command_log_reset_fixtures

self_host_command_log_mutate_json "${command_log_path}" <<'PY'
if not command_log["commands"]:
    raise SystemExit("Need at least one command entry for regression test.")

command_log["commands"][0]["index"] = 99
PY

self_host_command_log_expect_reason_code "COMMAND_LOG_INDEX_INVALID" "Expected non-contiguous command index to fail."

echo "[${script_label}] PASS: command-log failures emit deterministic reason codes."
