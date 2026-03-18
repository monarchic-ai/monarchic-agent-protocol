#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-artifacts.sh"
script_label="test-project-state-artifact-pass-progression"

source "${repo_root}/scripts/project-state-artifact-test-lib.sh"

project_state_artifact_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'project_state_artifact_cleanup' EXIT

project_state_artifact_reset_fixtures
project_state_artifact_assert_baseline_passes

"${PROJECT_STATE_ARTIFACT_PYTHON_CMD}" - "${PROJECT_STATE_ARTIFACT_TMP_REPO}/PROJECT_ACTIVITY_LOG.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    implementation_log = json.load(handle)

if len(implementation_log) < 2:
    raise SystemExit("Need at least two implementation log entries for progression regression test.")

latest_milestone = implementation_log[-1]["milestone_completed"]
implementation_log[-2]["milestone_completed"] = latest_milestone

with open(path, "w", encoding="utf-8") as handle:
    json.dump(implementation_log, handle, indent=2)
    handle.write("\n")
PY

set +e
project_state_artifact_run_check >/dev/null 2>"${PROJECT_STATE_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected non-advancing pass milestone to fail." >&2
  exit 1
fi

if ! grep -q "requires milestone progression" "${PROJECT_STATE_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for pass progression check:" >&2
  cat "${PROJECT_STATE_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

echo "[${script_label}] PASS: pass status requires milestone progression."
