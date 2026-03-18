#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
proof_path="${repo_root}/PROJECT_PROOF.json"

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-project-state-proof-artifacts] reason_code=PYTHON_MISSING python or python3 is required" >&2
  exit 1
fi

if [[ ! -f "${proof_path}" ]]; then
  echo "[test-project-state-proof-artifacts] reason_code=PROOF_ARTIFACT_MISSING Missing required proof artifact: ${proof_path}" >&2
  exit 1
fi

"${python_cmd}" - "${repo_root}" "${proof_path}" <<'PY'
import hashlib
import json
import re
import sys
from pathlib import Path

repo_root = Path(sys.argv[1]).resolve()
proof_path = Path(sys.argv[2])


def fail(reason_code: str, message: str) -> None:
    print(f"[test-project-state-proof-artifacts] reason_code={reason_code} {message}", file=sys.stderr)
    sys.exit(1)


def is_strict_int(value: object) -> bool:
    return isinstance(value, int) and not isinstance(value, bool)


try:
    with proof_path.open("r", encoding="utf-8") as handle:
        proof_manifest = json.load(handle)
except FileNotFoundError:
    fail("PROOF_ARTIFACT_MISSING", f"Missing required proof artifact: {proof_path}")
except json.JSONDecodeError as exc:
    fail("PROOF_JSON_INVALID", f"PROJECT_PROOF.json is not valid JSON: {exc}")

required_keys = [
    "task_id",
    "status",
    "reason_code",
    "signature_count",
    "sampled_batches",
    "proofs",
    "note",
]
if not isinstance(proof_manifest, dict):
    fail("PROOF_NOT_OBJECT", "PROJECT_PROOF.json must be a JSON object.")
if list(proof_manifest.keys()) != required_keys:
    fail(
        "PROOF_KEY_ORDER_INVALID",
        "PROJECT_PROOF.json must use keys in this order: "
        f"{required_keys}, found {list(proof_manifest.keys())}.",
    )

task_id = proof_manifest["task_id"]
if not isinstance(task_id, str) or not task_id.strip():
    fail("TASK_ID_INVALID", "PROJECT_PROOF.json task_id must be a non-empty string.")

status = proof_manifest["status"]
if status not in {"pass", "fail", "blocked"}:
    fail(
        "PROOF_STATUS_INVALID",
        "PROJECT_PROOF.json status must be one of ['blocked', 'fail', 'pass'], "
        f"found {status!r}.",
    )

reason_code = proof_manifest["reason_code"]
if not isinstance(reason_code, str) or not reason_code.strip():
    fail("REASON_CODE_MISSING", "PROJECT_PROOF.json reason_code must be a non-empty string.")

signature_count = proof_manifest["signature_count"]
if not is_strict_int(signature_count) or signature_count < 0:
    fail(
        "SIGNATURE_COUNT_INVALID",
        "PROJECT_PROOF.json signature_count must be a non-negative integer.",
    )

sampled_batches = proof_manifest["sampled_batches"]
if not is_strict_int(sampled_batches) or sampled_batches < 1:
    fail(
        "SAMPLED_BATCHES_INVALID",
        "PROJECT_PROOF.json sampled_batches must be a positive integer.",
    )

proofs = proof_manifest["proofs"]
if not isinstance(proofs, list):
    fail("PROOFS_NOT_ARRAY", "PROJECT_PROOF.json proofs must be an array.")

note = proof_manifest["note"]
if not isinstance(note, str) or not note.strip():
    fail("NOTE_INVALID", "PROJECT_PROOF.json note must be a non-empty string.")

if signature_count != len(proofs):
    fail(
        "SIGNATURE_COUNT_MISMATCH",
        "PROJECT_PROOF.json signature_count must equal proofs length "
        f"({len(proofs)}), found {signature_count}.",
    )

sha256_pattern = re.compile(r"^[0-9a-f]{64}$")
seen_paths = set()
previous_path_value = None

for index, proof in enumerate(proofs):
    if not isinstance(proof, dict):
        fail("PROOF_ENTRY_NOT_OBJECT", f"Proof entry at index {index} must be an object.")
    if list(proof.keys()) != ["path", "sha256"]:
        fail(
            "PROOF_ENTRY_KEYS_INVALID",
            "Proof entry at index "
            f"{index} must use keys ['path', 'sha256'], found {list(proof.keys())}.",
        )

    proof_path_value = proof["path"]
    if not isinstance(proof_path_value, str) or not proof_path_value.strip():
        fail(
            "PROOF_PATH_INVALID",
            f"Proof entry at index {index} must include a non-empty path string.",
        )
    if proof_path_value in seen_paths:
        fail("PROOF_PATH_DUPLICATE", f"Duplicate proof path detected: {proof_path_value}.")
    seen_paths.add(proof_path_value)
    if previous_path_value is not None and proof_path_value < previous_path_value:
        fail(
            "PROOF_PATH_ORDER_INVALID",
            "Proof entries must be sorted by path in ascending lexicographic order for "
            "deterministic manifest generation, found out-of-order entry "
            f"{proof_path_value!r} after {previous_path_value!r}.",
        )
    previous_path_value = proof_path_value

    sha256_value = proof["sha256"]
    if not isinstance(sha256_value, str) or not sha256_pattern.fullmatch(sha256_value):
        fail(
            "PROOF_SHA256_INVALID",
            "Proof entry at index "
            f"{index} must include a lowercase hex sha256 digest, found {sha256_value!r}.",
        )

    resolved = (repo_root / proof_path_value).resolve()
    if repo_root not in resolved.parents and resolved != repo_root:
        fail(
            "PROOF_PATH_OUTSIDE_REPO",
            f"Proof path must stay within repository root: {proof_path_value}.",
        )
    if not resolved.is_file():
        fail("PROOF_PATH_MISSING", f"Proof path does not exist: {proof_path_value}.")

    computed_sha256 = hashlib.sha256(resolved.read_bytes()).hexdigest()
    if computed_sha256 != sha256_value:
        fail(
            "PROOF_SHA256_MISMATCH",
            f"sha256 mismatch for {proof_path_value}: expected {sha256_value}, got {computed_sha256}.",
        )

if status == "pass":
    if reason_code != "OK":
        fail(
            "PASS_REASON_CODE_INVALID",
            "PROJECT_PROOF.json reason_code must be 'OK' when status is 'pass'.",
        )
    if not proofs:
        fail(
            "PROOF_LIST_EMPTY",
            "Status is 'pass' but proofs is empty; provide at least one proof artifact.",
        )
    if signature_count < sampled_batches:
        fail(
            "SIGNATURE_COUNT_BELOW_SAMPLED_BATCHES",
            "Status is 'pass' but signature_count is below sampled_batches "
            f"({signature_count} < {sampled_batches}).",
        )
else:
    if reason_code == "OK":
        fail(
            "NON_PASS_REASON_CODE_INVALID",
            "PROJECT_PROOF.json reason_code must not be 'OK' when status is not 'pass'.",
        )

print(
    "[test-project-state-proof-artifacts] PASS: proof artifact manifest is deterministic "
    "and signatures are valid."
)
PY
