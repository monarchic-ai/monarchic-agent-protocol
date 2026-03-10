#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-command-log-source-repo-seeding"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

source_repo="$(mktemp -d)"

cleanup() {
  rm -rf "${source_repo}"
  self_host_command_log_cleanup
}
trap cleanup EXIT

self_host_command_log_prepare_seeded_source_repo "${script_label}" "${repo_root}" "${source_repo}"

self_host_report_relative_path="$(self_host_command_log_report_relative_path)"
self_host_command_log_mutate_report_json_in_root "${script_label}" "${source_repo}" <<'PY'
report["changed_files"] = ["scripts/self-host-command-log-test-lib.sh"]
PY

self_host_command_log_expect_failure_contains \
  "${self_host_report_relative_path}" \
  "Expected seeded source-repo empty report-list validation to fail after restoring a changed_files entry for ${self_host_report_relative_path}." \
  self_host_command_log_assert_report_paths_empty_in_root "${source_repo}"

self_host_command_log_prepare_seeded_source_repo "${script_label}" "${repo_root}" "${source_repo}"

self_host_command_log_assign_existing_first_core_path_pair_in_root missing_relative_path missing_path "${source_repo}"

rm -f "${missing_path}"

self_host_command_log_expect_failure_contains \
  "${missing_relative_path}" \
  "Expected seeded source-repo validation to fail after removing ${missing_relative_path}." \
  self_host_command_log_assert_seeded_source_repo_core_paths "${source_repo}"

self_host_command_log_prepare_seeded_source_repo_baseline "${script_label}" "${repo_root}" "${source_repo}" "${check_script}"

echo "[${script_label}] PASS: command-log wrapper seeding covers every wrapper-owned core artifact path, centralizes seeded empty-report-list validation plus first-core-path pair assignment and failure-output assertions, exposes empty report file lists, and preserves a passing baseline gate."
