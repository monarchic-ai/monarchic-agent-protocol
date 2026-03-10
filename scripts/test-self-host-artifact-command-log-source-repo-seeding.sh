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

mapfile -t first_core_pair < <(self_host_command_log_first_core_path_pair_in_root "${source_repo}")
missing_relative_path="${first_core_pair[0]:-}"
missing_path="${first_core_pair[1]:-}"

rm -f "${missing_path}"

self_host_command_log_expect_failure_contains \
  "${missing_relative_path}" \
  "Expected seeded source-repo validation to fail after removing ${missing_relative_path}." \
  self_host_command_log_assert_seeded_source_repo_core_paths "${source_repo}"

self_host_command_log_prepare_seeded_source_repo_baseline "${script_label}" "${repo_root}" "${source_repo}" "${check_script}"

echo "[${script_label}] PASS: command-log wrapper seeding covers every wrapper-owned core artifact path, centralizes first-core-path pair resolution and failure-output assertions, exposes empty report file lists, and preserves a passing baseline gate."
