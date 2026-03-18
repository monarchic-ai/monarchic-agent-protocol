#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-artifacts.sh"
script_label="test-project-state-artifact-shared-fixtures"

source "${repo_root}/scripts/project-state-artifact-test-lib.sh"

source_repo="$(mktemp -d)"

cleanup() {
  rm -rf "${source_repo}"
  project_state_artifact_cleanup
}
trap cleanup EXIT

project_state_artifact_seed_source_repo_with_empty_report_lists "${script_label}" "${repo_root}" "${source_repo}"

project_state_artifact_setup "${script_label}" "${source_repo}" "${check_script}"
project_state_artifact_reset_fixtures

for relative_path in "PROJECT_PROOF.json" "PROJECT_COMMAND_LOG.json"; do
  if [[ ! -f "${PROJECT_STATE_ARTIFACT_TMP_REPO}/${relative_path}" ]]; then
    echo "[${script_label}] Expected shared fixtures to copy ${relative_path} without relying on report file lists." >&2
    exit 1
  fi
done

rm -f "${PROJECT_STATE_ARTIFACT_TMP_REPO}/PROJECT_PROOF.json" "${PROJECT_STATE_ARTIFACT_TMP_REPO}/PROJECT_COMMAND_LOG.json"

project_state_artifact_reset_fixtures

for relative_path in "PROJECT_PROOF.json" "PROJECT_COMMAND_LOG.json"; do
  if [[ ! -f "${PROJECT_STATE_ARTIFACT_TMP_REPO}/${relative_path}" ]]; then
    echo "[${script_label}] Expected reset to restore ${relative_path}." >&2
    exit 1
  fi
done

project_state_artifact_assert_baseline_passes

echo "[${script_label}] PASS: shared project-state artifact fixtures restore required core artifacts without depending on report file lists."
