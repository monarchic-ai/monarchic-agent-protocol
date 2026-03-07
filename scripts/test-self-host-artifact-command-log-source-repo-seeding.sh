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

self_host_command_log_seed_source_repo_with_empty_report_lists "${script_label}" "${repo_root}" "${source_repo}"
self_host_command_log_assert_seeded_source_repo_core_paths "${source_repo}"

missing_relative_path="$(self_host_command_log_core_paths | head -n 1)"

if [[ -z "${missing_relative_path}" ]]; then
  echo "[${script_label}] Expected wrapper core-path helper to expose at least one seeded artifact path." >&2
  exit 1
fi

rm -f "${source_repo}/${missing_relative_path}"

if validation_output="$(self_host_command_log_assert_seeded_source_repo_core_paths "${source_repo}" 2>&1)"; then
  echo "[${script_label}] Expected seeded source-repo validation to fail after removing ${missing_relative_path}." >&2
  exit 1
fi

if [[ "${validation_output}" != *"${missing_relative_path}"* ]]; then
  echo "[${script_label}] Expected seeded source-repo validation to mention ${missing_relative_path}, got: ${validation_output}" >&2
  exit 1
fi

self_host_command_log_seed_source_repo_with_empty_report_lists "${script_label}" "${repo_root}" "${source_repo}"
self_host_command_log_assert_seeded_source_repo_core_paths "${source_repo}"

self_host_command_log_setup "${script_label}" "${source_repo}" "${check_script}"
self_host_command_log_reset_fixtures
self_host_command_log_assert_baseline_passes

self_host_command_log_assert_report_paths_empty

echo "[${script_label}] PASS: command-log wrapper seeding covers every wrapper-owned core artifact path, exposes empty report file lists, and preserves a passing baseline gate."
