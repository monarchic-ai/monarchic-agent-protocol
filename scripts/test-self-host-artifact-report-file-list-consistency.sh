#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-report-file-list-consistency"

source "${repo_root}/scripts/self-host-artifact-test-lib.sh"

self_host_artifact_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_artifact_cleanup' EXIT

self_host_artifact_reset_fixtures
self_host_artifact_assert_baseline_passes

"${SELF_HOST_ARTIFACT_PYTHON_CMD}" - "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_REPORT.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    report = json.load(handle)

if not report["new_files"]:
    report["new_files"] = ["SELF_HOST_REPORT.json"]
report["new_files"].append(report["new_files"][0])

with open(path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
PY

set +e
self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected duplicate new_files entry to fail." >&2
  exit 1
fi

if ! grep -q "new_files must not contain duplicates" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for duplicate new_files check:" >&2
  cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

self_host_artifact_reset_fixtures

"${SELF_HOST_ARTIFACT_PYTHON_CMD}" - "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_REPORT.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    report = json.load(handle)

overlap_item = (
    report["changed_files"][0]
    if report["changed_files"]
    else (report["new_files"][0] if report["new_files"] else "SELF_HOST_REPORT.json")
)

if overlap_item not in report["new_files"]:
    report["new_files"].append(overlap_item)
if overlap_item not in report["changed_files"]:
    report["changed_files"].append(overlap_item)

with open(path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
PY

set +e
self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected overlapping file lists to fail." >&2
  exit 1
fi

if ! grep -q "new_files and changed_files must be disjoint" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for list-overlap check:" >&2
  cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

echo "[${script_label}] PASS: report file-list consistency checks are deterministic."
