#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-artifacts.sh"
script_label="test-project-state-artifact-proof-gate"

source "${repo_root}/scripts/project-state-artifact-test-lib.sh"

project_state_artifact_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'project_state_artifact_cleanup' EXIT

project_state_artifact_reset_fixtures
project_state_artifact_assert_baseline_passes

rm -f "${PROJECT_STATE_ARTIFACT_TMP_REPO}/PROJECT_PROOF.json"

set +e
project_state_artifact_run_check >/dev/null 2>"${PROJECT_STATE_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected missing PROJECT_PROOF.json to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_ARTIFACT_MISSING" "${PROJECT_STATE_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for missing-proof reason code check:" >&2
  cat "${PROJECT_STATE_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

project_state_artifact_reset_fixtures

"${PROJECT_STATE_ARTIFACT_PYTHON_CMD}" - "${PROJECT_STATE_ARTIFACT_TMP_REPO}/PROJECT_PROOF.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    proof = json.load(handle)

proof["status"] = "pass"
proof["reason_code"] = "OK"
proof["signature_count"] = 0
proof["sampled_batches"] = 1
proof["proofs"] = []

with open(path, "w", encoding="utf-8") as handle:
    json.dump(proof, handle, indent=2)
    handle.write("\n")
PY

set +e
project_state_artifact_run_check >/dev/null 2>"${PROJECT_STATE_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected empty proofs with pass status to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_LIST_EMPTY" "${PROJECT_STATE_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for empty-proof-list reason code check:" >&2
  cat "${PROJECT_STATE_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

project_state_artifact_reset_fixtures

"${PROJECT_STATE_ARTIFACT_PYTHON_CMD}" - "${PROJECT_STATE_ARTIFACT_TMP_REPO}/PROJECT_PROOF.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    proof = json.load(handle)

proof["task_id"] = "task-project-state-proof-gate-mismatch"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(proof, handle, indent=2)
    handle.write("\n")
PY

set +e
project_state_artifact_run_check >/dev/null 2>"${PROJECT_STATE_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected mismatched proof task_id to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_TASK_ID_MISMATCH" "${PROJECT_STATE_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for proof task_id mismatch reason code check:" >&2
  cat "${PROJECT_STATE_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

echo "[${script_label}] PASS: default project-state artifact gate fails fast on missing, empty, or mismatched proof metadata."
