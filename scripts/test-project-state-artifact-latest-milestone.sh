#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-artifacts.sh"
script_label="test-project-state-artifact-latest-milestone"

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

report["milestone_completed"] = "M01"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
PY

set +e
project_state_artifact_run_check >/dev/null 2>"${PROJECT_STATE_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected stale milestone_completed value to fail." >&2
  exit 1
fi

if ! grep -q "must reference the latest done milestone" "${PROJECT_STATE_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for latest milestone check:" >&2
  cat "${PROJECT_STATE_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

echo "[${script_label}] PASS: latest done milestone checks are deterministic."
