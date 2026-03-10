#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-command-log-shared-fixtures"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"
source_repo="$(mktemp -d)"

cleanup() {
  rm -rf "${source_repo}"
  self_host_command_log_cleanup
}
trap cleanup EXIT

self_host_command_log_prepare_seeded_source_repo_baseline "${script_label}" "${repo_root}" "${source_repo}" "${check_script}"

self_host_command_log_assign_existing_first_core_path_pair_in_tmp_root restored_relative_path restored_path

rm -f "${restored_path}"

if [[ -e "${restored_path}" ]]; then
  echo "[${script_label}] Expected ${restored_relative_path} to be removed before reset." >&2
  exit 1
fi

self_host_command_log_reset_and_assert_baseline

self_host_command_log_assign_existing_first_core_path_pair_in_tmp_root restored_again_relative_path restored_again_path

if [[ "${restored_again_relative_path}" != "${restored_relative_path}" ]]; then
  echo "[${script_label}] Expected reset to restore the same first core relative path ${restored_relative_path}, found ${restored_again_relative_path}." >&2
  exit 1
fi

if [[ "${restored_again_path}" != "${restored_path}" ]]; then
  echo "[${script_label}] Expected reset to restore the same first core rooted path ${restored_path}, found ${restored_again_path}." >&2
  exit 1
fi

echo "[${script_label}] PASS: shared command-log fixture setup restores wrapper-owned core artifact paths through centralized first-core-path pair assignment and preserves a passing baseline gate when report file lists are empty."
