#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-shared-fixtures"

source "${repo_root}/scripts/self-host-artifact-test-lib.sh"

source_repo="$(mktemp -d)"
python_cmd="$(self_host_artifact_choose_python "${script_label}")"

cleanup() {
  rm -rf "${source_repo}"
  self_host_artifact_cleanup
}
trap cleanup EXIT

for relative_path in \
  "SELF_HOST_MILESTONES.json" \
  "SELF_HOST_REPORT.json" \
  "SELF_HOST_UPDATE.json" \
  "SELF_HOST_IMPLEMENTATION_LOG.json" \
  "SELF_HOST_PROOF.json" \
  "SELF_HOST_COMMAND_LOG.json"; do
  cp "${repo_root}/${relative_path}" "${source_repo}/${relative_path}"
done

"${python_cmd}" - "${source_repo}/SELF_HOST_REPORT.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    report = json.load(handle)

report["new_files"] = []
report["changed_files"] = []

with open(path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
PY

self_host_artifact_setup "${script_label}" "${source_repo}" "${check_script}"
self_host_artifact_reset_fixtures

for relative_path in "SELF_HOST_PROOF.json" "SELF_HOST_COMMAND_LOG.json"; do
  if [[ ! -f "${SELF_HOST_ARTIFACT_TMP_REPO}/${relative_path}" ]]; then
    echo "[${script_label}] Expected shared fixtures to copy ${relative_path} without relying on report file lists." >&2
    exit 1
  fi
done

rm -f "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_PROOF.json" "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_COMMAND_LOG.json"

self_host_artifact_reset_fixtures

for relative_path in "SELF_HOST_PROOF.json" "SELF_HOST_COMMAND_LOG.json"; do
  if [[ ! -f "${SELF_HOST_ARTIFACT_TMP_REPO}/${relative_path}" ]]; then
    echo "[${script_label}] Expected reset to restore ${relative_path}." >&2
    exit 1
  fi
done

self_host_artifact_assert_baseline_passes

echo "[${script_label}] PASS: shared self-host artifact fixtures restore required core artifacts without depending on report file lists."
