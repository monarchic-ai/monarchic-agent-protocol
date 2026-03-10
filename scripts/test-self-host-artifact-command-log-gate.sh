#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-command-log-gate"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

self_host_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_command_log_cleanup' EXIT

command_log_path="$(self_host_command_log_reset_and_resolve_tmp_path)"

self_host_command_log_mutate_json "${command_log_path}" <<'PY'
command_log["status"] = "blocked"
PY

self_host_command_log_expect_reason_code "COMMAND_LOG_STATUS_MISMATCH" "Expected command-log status mismatch to fail."

command_log_path="$(self_host_command_log_reset_and_resolve_tmp_path)"

self_host_command_log_mutate_json "${command_log_path}" <<'PY'
if not command_log["commands"]:
    raise SystemExit("Need at least one command entry for regression test.")

command_log["commands"][0]["index"] = 99
PY

self_host_command_log_expect_reason_code "COMMAND_LOG_INDEX_INVALID" "Expected non-contiguous command index to fail."

command_log_path="$(self_host_command_log_reset_and_resolve_tmp_path)"

self_host_command_log_mutate_json "${command_log_path}" <<'PY'
if len(command_log["commands"]) < 2:
    raise SystemExit("Need at least two command entries for order-drift regression test.")

first_command = command_log["commands"][0]["command"]
second_command = command_log["commands"][1]["command"]
command_log["commands"][0]["command"] = second_command
command_log["commands"][1]["command"] = first_command
PY

self_host_command_log_expect_reason_code "COMMAND_LOG_FIRST_COMMAND_INVALID" "Expected first-command order drift to fail."

echo "[${script_label}] PASS: default self-host artifact gate surfaces deterministic command-log reason codes for status, index, and verification-order drift."
