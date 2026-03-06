#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"

if [[ ! -x "${check_script}" ]]; then
  echo "[test-self-host-artifact-proof-gate] Missing executable: ${check_script}" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-self-host-artifact-proof-gate] python or python3 is required" >&2
  exit 1
fi

tmp_repo="$(mktemp -d)"
stderr_log="$(mktemp)"
trap 'rm -rf "${tmp_repo}" "${stderr_log}"' EXIT

mkdir -p "${tmp_repo}/scripts"
cp "${check_script}" "${tmp_repo}/scripts/test-self-host-artifacts.sh"
chmod +x "${tmp_repo}/scripts/test-self-host-artifacts.sh"

reset_fixtures() {
  cp "${repo_root}/SELF_HOST_MILESTONES.json" "${tmp_repo}/SELF_HOST_MILESTONES.json"
  cp "${repo_root}/SELF_HOST_REPORT.json" "${tmp_repo}/SELF_HOST_REPORT.json"
  cp "${repo_root}/SELF_HOST_UPDATE.json" "${tmp_repo}/SELF_HOST_UPDATE.json"
  cp "${repo_root}/SELF_HOST_IMPLEMENTATION_LOG.json" "${tmp_repo}/SELF_HOST_IMPLEMENTATION_LOG.json"
  cp "${repo_root}/SELF_HOST_PROOF.json" "${tmp_repo}/SELF_HOST_PROOF.json"

  while IFS= read -r relative_path; do
    [[ -z "${relative_path}" ]] && continue
    source_path="${repo_root}/${relative_path}"
    if [[ ! -f "${source_path}" ]]; then
      continue
    fi
    mkdir -p "$(dirname "${tmp_repo}/${relative_path}")"
    cp "${source_path}" "${tmp_repo}/${relative_path}"
  done < <("${python_cmd}" - "${tmp_repo}/SELF_HOST_REPORT.json" <<'PY'
import json
import sys

with open(sys.argv[1], "r", encoding="utf-8") as handle:
    report = json.load(handle)

for key in ("new_files", "changed_files"):
    for path in report.get(key, []):
        if isinstance(path, str) and path:
            print(path)
PY
  )
}

reset_fixtures

if ! bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[test-self-host-artifact-proof-gate] Expected baseline fixtures to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

rm -f "${tmp_repo}/SELF_HOST_PROOF.json"

set +e
bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-self-host-artifact-proof-gate] Expected missing SELF_HOST_PROOF.json to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_ARTIFACT_MISSING" "${stderr_log}"; then
  echo "[test-self-host-artifact-proof-gate] Unexpected stderr output for missing-proof reason code check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

reset_fixtures

"${python_cmd}" - "${tmp_repo}/SELF_HOST_PROOF.json" <<'PY'
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
bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-self-host-artifact-proof-gate] Expected empty proofs with pass status to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_LIST_EMPTY" "${stderr_log}"; then
  echo "[test-self-host-artifact-proof-gate] Unexpected stderr output for empty-proof-list reason code check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

reset_fixtures

"${python_cmd}" - "${tmp_repo}/SELF_HOST_PROOF.json" <<'PY'
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
bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-self-host-artifact-proof-gate] Expected mismatched proof task_id to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_TASK_ID_MISMATCH" "${stderr_log}"; then
  echo "[test-self-host-artifact-proof-gate] Unexpected stderr output for proof task_id mismatch reason code check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[test-self-host-artifact-proof-gate] PASS: default self-host artifact gate fails fast on missing, empty, or mismatched proof metadata."
