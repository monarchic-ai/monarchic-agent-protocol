#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-artifacts.sh"
script_label="test-project-state-artifact-command-log-source-repo-seeding"

source "${repo_root}/scripts/project-state-command-log-test-lib.sh"

source_repo="$(mktemp -d)"

cleanup() {
  rm -rf "${source_repo}"
  project_state_command_log_cleanup
}
trap cleanup EXIT

project_state_command_log_prepare_seeded_source_repo "${script_label}" "${repo_root}" "${source_repo}"

project_state_report_relative_path="$(project_state_command_log_report_relative_path)"
project_state_command_log_mutate_report_json_in_root "${script_label}" "${source_repo}" <<'PY'
report["changed_files"] = ["scripts/project-state-command-log-test-lib.sh"]
PY

project_state_command_log_expect_failure_contains \
  "${project_state_report_relative_path}" \
  "Expected seeded source-repo empty report-list validation to fail after restoring a changed_files entry for ${project_state_report_relative_path}." \
  project_state_command_log_assert_report_paths_empty_in_root "${source_repo}"

project_state_command_log_prepare_seeded_source_repo "${script_label}" "${repo_root}" "${source_repo}"

project_state_command_log_remove_existing_first_core_path_pair_in_root missing_relative_path missing_path "${source_repo}"

project_state_command_log_expect_failure_contains \
  "${missing_relative_path}" \
  "Expected seeded source-repo validation to fail after removing ${missing_relative_path}." \
  project_state_command_log_assert_seeded_source_repo_core_paths "${source_repo}"

project_state_command_log_prepare_seeded_source_repo_baseline "${script_label}" "${repo_root}" "${source_repo}" "${check_script}"

echo "[${script_label}] PASS: command-log wrapper seeding covers every wrapper-owned core artifact path, centralizes seeded empty-report-list validation plus first-core-path removal and failure-output assertions, exposes empty report file lists, and preserves a passing baseline gate."
