#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-log-key-order"

source "${repo_root}/scripts/self-host-artifact-test-lib.sh"

self_host_artifact_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_artifact_cleanup' EXIT

self_host_artifact_reset_fixtures
self_host_artifact_assert_baseline_passes

"${SELF_HOST_ARTIFACT_PYTHON_CMD}" - "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_IMPLEMENTATION_LOG.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    implementation_log = json.load(handle)

latest = implementation_log[-1]
implementation_log[-1] = {
    "task_id": latest["task_id"],
    "timestamp": latest["timestamp"],
    "summary": latest["summary"],
    "milestone_completed": latest["milestone_completed"],
    "files": latest["files"],
    "verification": latest["verification"],
    "gate": latest["gate"],
}

with open(path, "w", encoding="utf-8") as handle:
    json.dump(implementation_log, handle, indent=2)
    handle.write("\n")
PY

set +e
self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected key-order mismatch to fail." >&2
  exit 1
fi

if ! grep -q "Latest implementation log entry must use keys in this order" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for key-order check:" >&2
  cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

echo "[${script_label}] PASS: implementation log key-order checks are deterministic."
