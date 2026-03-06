#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-pass-progression"

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

if len(implementation_log) < 2:
    raise SystemExit("Need at least two implementation log entries for progression regression test.")

latest_milestone = implementation_log[-1]["milestone_completed"]
implementation_log[-2]["milestone_completed"] = latest_milestone

with open(path, "w", encoding="utf-8") as handle:
    json.dump(implementation_log, handle, indent=2)
    handle.write("\n")
PY

set +e
self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected non-advancing pass milestone to fail." >&2
  exit 1
fi

if ! grep -q "requires milestone progression" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for pass progression check:" >&2
  cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

echo "[${script_label}] PASS: pass status requires milestone progression."
