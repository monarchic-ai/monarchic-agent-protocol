#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-artifacts.sh"
script_label="test-project-state-artifact-command-log-format"

source "${repo_root}/scripts/project-state-command-log-test-lib.sh"

project_state_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'project_state_command_log_cleanup' EXIT

project_state_command_log_expect_stderr_contains_after_mutation \
  "command index must be a contiguous integer sequence" \
  "Expected non-contiguous command index to fail." <<'PY'
if not command_log["commands"]:
    raise SystemExit("Need at least one command entry for regression test.")

command_log["commands"][0]["index"] = 99
PY

echo "[${script_label}] PASS: command log format validation is deterministic."
