#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-status-alignment"

source "${repo_root}/scripts/self-host-artifact-test-lib.sh"

self_host_artifact_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_artifact_cleanup' EXIT

self_host_artifact_reset_fixtures
self_host_artifact_assert_baseline_passes

"${SELF_HOST_ARTIFACT_PYTHON_CMD}" - "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_UPDATE.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    update = json.load(handle)

update["status"] = "fail"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(update, handle, indent=2)
    handle.write("\n")
PY

set +e
self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected status mismatch to fail." >&2
  exit 1
fi

if ! grep -q "status must match SELF_HOST_REPORT.json status" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for status mismatch check:" >&2
  cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

self_host_artifact_reset_fixtures

"${SELF_HOST_ARTIFACT_PYTHON_CMD}" - "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_REPORT.json" "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_UPDATE.json" <<'PY'
import json
import sys

report_path = sys.argv[1]
update_path = sys.argv[2]

with open(report_path, "r", encoding="utf-8") as handle:
    report = json.load(handle)
with open(update_path, "r", encoding="utf-8") as handle:
    update = json.load(handle)

report["status"] = "unknown"
update["status"] = "unknown"

with open(report_path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
with open(update_path, "w", encoding="utf-8") as handle:
    json.dump(update, handle, indent=2)
    handle.write("\n")
PY

set +e
self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected invalid status values to fail." >&2
  exit 1
fi

if ! grep -q "SELF_HOST_REPORT.json status must be one of" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for invalid report status check:" >&2
  cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

echo "[${script_label}] PASS: status checks are deterministic."
