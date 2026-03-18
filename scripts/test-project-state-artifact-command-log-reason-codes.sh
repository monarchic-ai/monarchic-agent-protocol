#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-artifacts.sh"
script_label="test-project-state-artifact-command-log-reason-codes"

source "${repo_root}/scripts/project-state-command-log-test-lib.sh"

project_state_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'project_state_command_log_cleanup' EXIT

project_state_command_log_expect_status_and_index_reason_codes \
  "Expected status mismatch to fail." \
  "Expected non-contiguous command index to fail."

echo "[${script_label}] PASS: command-log failures emit deterministic reason codes."
