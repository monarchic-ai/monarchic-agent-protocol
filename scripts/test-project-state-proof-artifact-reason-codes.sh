#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-project-state-proof-artifacts.sh"
fixture_root="${repo_root}/fixtures/project-state"
proof_path="${fixture_root}/PROJECT_PROOF.json"

if [[ ! -x "${check_script}" ]]; then
  echo "[test-project-state-proof-artifact-reason-codes] Missing executable: ${check_script}" >&2
  exit 1
fi

if [[ ! -f "${proof_path}" ]]; then
  echo "[test-project-state-proof-artifact-reason-codes] Missing proof manifest: ${proof_path}" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-project-state-proof-artifact-reason-codes] python or python3 is required" >&2
  exit 1
fi

tmp_repo="$(mktemp -d)"
stderr_log="$(mktemp)"
trap 'rm -rf "${tmp_repo}" "${stderr_log}"' EXIT

mkdir -p "${tmp_repo}/scripts"
cp "${check_script}" "${tmp_repo}/scripts/test-project-state-proof-artifacts.sh"
chmod +x "${tmp_repo}/scripts/test-project-state-proof-artifacts.sh"
cp "${proof_path}" "${tmp_repo}/PROJECT_PROOF.json"

while IFS= read -r relative_path; do
  [[ -z "${relative_path}" ]] && continue
  source_path="${repo_root}/${relative_path}"
  if [[ ! -f "${source_path}" ]]; then
    continue
  fi
  mkdir -p "$(dirname "${tmp_repo}/${relative_path}")"
  cp "${source_path}" "${tmp_repo}/${relative_path}"
done < <("${python_cmd}" - "${tmp_repo}/PROJECT_PROOF.json" <<'PY'
import json
import sys

with open(sys.argv[1], "r", encoding="utf-8") as handle:
    manifest = json.load(handle)

for entry in manifest.get("proofs", []):
    if isinstance(entry, dict):
        path = entry.get("path")
        if isinstance(path, str) and path:
            print(path)
PY
)

if ! bash "${tmp_repo}/scripts/test-project-state-proof-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[test-project-state-proof-artifact-reason-codes] Expected baseline proof manifest to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

"${python_cmd}" - "${tmp_repo}/PROJECT_PROOF.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    manifest = json.load(handle)

manifest["status"] = "pass"
manifest["reason_code"] = "OK"
manifest["signature_count"] = 0
manifest["proofs"] = []

with open(path, "w", encoding="utf-8") as handle:
    json.dump(manifest, handle, indent=2)
    handle.write("\n")
PY

set +e
bash "${tmp_repo}/scripts/test-project-state-proof-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-project-state-proof-artifact-reason-codes] Expected empty proofs for pass status to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_LIST_EMPTY" "${stderr_log}"; then
  echo "[test-project-state-proof-artifact-reason-codes] Unexpected stderr output for proof-list-empty reason code check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

cp "${proof_path}" "${tmp_repo}/PROJECT_PROOF.json"

"${python_cmd}" - "${tmp_repo}" "${tmp_repo}/PROJECT_PROOF.json" <<'PY'
import hashlib
import json
import sys
from pathlib import Path

repo = Path(sys.argv[1])
manifest_path = Path(sys.argv[2])

proof_dir = repo / "proof-artifacts"
proof_dir.mkdir(parents=True, exist_ok=True)

z_path = proof_dir / "z-proof.txt"
a_path = proof_dir / "a-proof.txt"
z_path.write_text("z-proof\n", encoding="utf-8")
a_path.write_text("a-proof\n", encoding="utf-8")

with manifest_path.open("r", encoding="utf-8") as handle:
    manifest = json.load(handle)

manifest["status"] = "pass"
manifest["reason_code"] = "OK"
manifest["sampled_batches"] = 1
manifest["signature_count"] = 2
manifest["proofs"] = [
    {
        "path": "proof-artifacts/z-proof.txt",
        "sha256": hashlib.sha256(z_path.read_bytes()).hexdigest(),
    },
    {
        "path": "proof-artifacts/a-proof.txt",
        "sha256": hashlib.sha256(a_path.read_bytes()).hexdigest(),
    },
]

with manifest_path.open("w", encoding="utf-8") as handle:
    json.dump(manifest, handle, indent=2)
    handle.write("\n")
PY

set +e
bash "${tmp_repo}/scripts/test-project-state-proof-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-project-state-proof-artifact-reason-codes] Expected out-of-order proof entries to fail." >&2
  exit 1
fi

if ! grep -q "reason_code=PROOF_PATH_ORDER_INVALID" "${stderr_log}"; then
  echo "[test-project-state-proof-artifact-reason-codes] Unexpected stderr output for proof path ordering reason code check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[test-project-state-proof-artifact-reason-codes] PASS: proof manifest failures emit deterministic reason codes."
