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

restored_relative_path="$(self_host_command_log_first_core_path)"
restored_path="$(self_host_command_log_first_core_path_in_root "$(self_host_command_log_tmp_root)")"

if [[ ! -f "${restored_path}" ]]; then
  echo "[${script_label}] Expected baseline fixtures to copy ${restored_relative_path}." >&2
  exit 1
fi

rm -f "${restored_path}"

if [[ -e "${restored_path}" ]]; then
  echo "[${script_label}] Expected ${restored_relative_path} to be removed before reset." >&2
  exit 1
fi

self_host_command_log_reset_and_assert_baseline

if [[ ! -f "${restored_path}" ]]; then
  echo "[${script_label}] Expected reset to restore ${restored_relative_path}." >&2
  exit 1
fi

echo "[${script_label}] PASS: shared command-log fixture setup restores wrapper-owned core artifact paths and preserves a passing baseline gate when report file lists are empty."
