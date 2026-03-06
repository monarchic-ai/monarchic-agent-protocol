#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-proof-gate"

source "${repo_root}/scripts/self-host-artifact-test-lib.sh"

self_host_artifact_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_artifact_cleanup' EXIT

self_host_artifact_reset_fixtures
self_host_artifact_assert_baseline_passes

rm -f "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_PROOF.json"

set +e
self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected missing SELF_HOST_PROOF.json to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_ARTIFACT_MISSING" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for missing-proof reason code check:" >&2
  cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

self_host_artifact_reset_fixtures

"${SELF_HOST_ARTIFACT_PYTHON_CMD}" - "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_PROOF.json" <<'PY'
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
self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected empty proofs with pass status to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_LIST_EMPTY" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for empty-proof-list reason code check:" >&2
  cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

self_host_artifact_reset_fixtures

"${SELF_HOST_ARTIFACT_PYTHON_CMD}" - "${SELF_HOST_ARTIFACT_TMP_REPO}/SELF_HOST_PROOF.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    proof = json.load(handle)

proof["task_id"] = "task-self-host-proof-gate-mismatch"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(proof, handle, indent=2)
    handle.write("\n")
PY

set +e
self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected mismatched proof task_id to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_TASK_ID_MISMATCH" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
  echo "[${script_label}] Unexpected stderr output for proof task_id mismatch reason code check:" >&2
  cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
  exit 1
fi

echo "[${script_label}] PASS: default self-host artifact gate fails fast on missing, empty, or mismatched proof metadata."
