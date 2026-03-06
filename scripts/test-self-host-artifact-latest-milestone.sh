#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-latest-milestone"

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

report["milestone_completed"] = "M01"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
PY

set +e
self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected stale milestone_completed value to fail." >&2
  exit 1
fi

if ! grep -q "must reference the latest done milestone" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for latest milestone check:" >&2
  cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

echo "[${script_label}] PASS: latest done milestone checks are deterministic."
