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

self_host_command_log_seed_source_repo_with_empty_report_lists "${script_label}" "${repo_root}" "${source_repo}"

self_host_command_log_setup "${script_label}" "${source_repo}" "${check_script}"

self_host_command_log_reset_fixtures
self_host_command_log_assert_baseline_passes

if [[ -n "$(self_host_command_log_report_paths)" ]]; then
  echo "[${script_label}] Expected the temp report to expose no report-listed paths." >&2
  exit 1
fi

restored_relative_path="$(self_host_command_log_core_paths | head -n 1)"

if [[ -z "${restored_relative_path}" ]]; then
  echo "[${script_label}] Expected wrapper core-path helper to expose at least one restorable path." >&2
  exit 1
fi

restored_path="$(self_host_command_log_tmp_path_for_relative_path "${restored_relative_path}")"

if [[ ! -f "${restored_path}" ]]; then
  echo "[${script_label}] Expected baseline fixtures to copy ${restored_relative_path}." >&2
  exit 1
fi

rm -f "${restored_path}"

if [[ -e "${restored_path}" ]]; then
  echo "[${script_label}] Expected ${restored_relative_path} to be removed before reset." >&2
  exit 1
fi

self_host_command_log_reset_fixtures

if [[ ! -f "${restored_path}" ]]; then
  echo "[${script_label}] Expected reset to restore ${restored_relative_path}." >&2
  exit 1
fi

self_host_command_log_assert_baseline_passes

echo "[${script_label}] PASS: shared command-log fixture setup restores wrapper-owned core artifact paths and preserves a passing baseline gate when report file lists are empty."
