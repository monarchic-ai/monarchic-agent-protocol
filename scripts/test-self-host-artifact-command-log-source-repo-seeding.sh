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

seeded_core_path_count=0

while IFS= read -r relative_path; do
  [[ -z "${relative_path}" ]] && continue
  seeded_core_path_count=$((seeded_core_path_count + 1))

  if [[ ! -f "${source_repo}/${relative_path}" ]]; then
    echo "[${script_label}] Expected wrapper seeding helper to copy ${relative_path}." >&2
    exit 1
  fi
done < <(self_host_command_log_core_paths)

if [[ "${seeded_core_path_count}" -eq 0 ]]; then
  echo "[${script_label}] Expected wrapper core-path helper to expose at least one seeded artifact path." >&2
  exit 1
fi

self_host_command_log_setup "${script_label}" "${source_repo}" "${check_script}"
self_host_command_log_reset_fixtures
self_host_command_log_assert_baseline_passes

if [[ -n "$(self_host_command_log_report_paths)" ]]; then
  echo "[${script_label}] Expected wrapper-seeded temp report to expose no report-listed paths." >&2
  exit 1
fi

echo "[${script_label}] PASS: command-log wrapper seeding covers every wrapper-owned core artifact path, exposes empty report file lists, and preserves a passing baseline gate."
