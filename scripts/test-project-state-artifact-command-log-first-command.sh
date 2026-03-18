#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-artifacts.sh"
script_label="test-project-state-artifact-command-log-first-command"

source "${repo_root}/scripts/project-state-command-log-test-lib.sh"

project_state_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'project_state_command_log_cleanup' EXIT

project_state_command_log_expect_stderr_contains_after_mutation \
  "reason_code=COMMAND_LOG_FIRST_COMMAND_INVALID" \
  "Expected a drifted first command to fail." <<'PY'
if not command_log["commands"]:
    raise SystemExit("Need at least one command entry for regression test.")

command_log["commands"][0]["command"] = "bash scripts/test-project-state-proof-artifacts.sh --drifted"
PY

echo "[${script_label}] PASS: first command validation is deterministic."
