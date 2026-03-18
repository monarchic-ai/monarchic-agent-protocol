#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-artifacts.sh"
script_label="test-project-state-artifact-milestone-count-types"

source "${repo_root}/scripts/project-state-artifact-test-lib.sh"

project_state_artifact_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'project_state_artifact_cleanup' EXIT

project_state_artifact_reset_fixtures
project_state_artifact_assert_baseline_passes

"${PROJECT_STATE_ARTIFACT_PYTHON_CMD}" - "${PROJECT_STATE_ARTIFACT_TMP_REPO}/PROJECT_STATUS.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    report = json.load(handle)

report["total_milestones"] = float(report["total_milestones"])

with open(path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
PY

set +e
project_state_artifact_run_check >/dev/null 2>"${PROJECT_STATE_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected non-integer report total_milestones to fail." >&2
  exit 1
fi

if ! grep -q "PROJECT_STATUS.json total_milestones must be an integer" "${PROJECT_STATE_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for report total_milestones type check:" >&2
  cat "${PROJECT_STATE_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

project_state_artifact_reset_fixtures

"${PROJECT_STATE_ARTIFACT_PYTHON_CMD}" - "${PROJECT_STATE_ARTIFACT_TMP_REPO}/PROJECT_SUMMARY.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    update = json.load(handle)

update["milestones_done"] = float(update["milestones_done"])

with open(path, "w", encoding="utf-8") as handle:
    json.dump(update, handle, indent=2)
    handle.write("\n")
PY

set +e
project_state_artifact_run_check >/dev/null 2>"${PROJECT_STATE_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected non-integer update milestones_done to fail." >&2
  exit 1
fi

if ! grep -q "PROJECT_SUMMARY.json milestones_done must be an integer" "${PROJECT_STATE_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for update milestones_done type check:" >&2
  cat "${PROJECT_STATE_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

echo "[${script_label}] PASS: milestone count type checks are deterministic."
