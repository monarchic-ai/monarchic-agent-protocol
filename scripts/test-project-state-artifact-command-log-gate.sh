#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-artifacts.sh"
script_label="test-project-state-artifact-command-log-gate"

source "${repo_root}/scripts/project-state-command-log-test-lib.sh"

project_state_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'project_state_command_log_cleanup' EXIT

project_state_command_log_expect_status_and_index_reason_codes \
  "Expected command-log status mismatch to fail." \
  "Expected non-contiguous command index to fail."

project_state_command_log_expect_reason_code_after_mutation \
  "COMMAND_LOG_FIRST_COMMAND_INVALID" \
  "Expected first-command order drift to fail." <<'PY'
if len(command_log["commands"]) < 2:
    raise SystemExit("Need at least two command entries for order-drift regression test.")

first_command = command_log["commands"][0]["command"]
second_command = command_log["commands"][1]["command"]
command_log["commands"][0]["command"] = second_command
command_log["commands"][1]["command"] = first_command
PY

echo "[${script_label}] PASS: default project-state artifact gate surfaces deterministic command-log reason codes for status, index, and verification-order drift."
