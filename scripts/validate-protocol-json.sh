#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
python_bin="${PYTHON_BIN:-}"

if [[ -z "${python_bin}" ]]; then
  if command -v python >/dev/null 2>&1; then
    python_bin="python"
  elif command -v python3 >/dev/null 2>&1; then
    python_bin="python3"
  else
    echo "[validate-protocol-json] python or python3 is required" >&2
    exit 1
  fi
fi

if [[ "$#" -ne 2 ]]; then
  echo "[validate-protocol-json] Usage: bash scripts/validate-protocol-json.sh <schema_path> <payload_path>" >&2
  exit 1
fi

schema_input="$1"
payload_input="$2"

if [[ "${schema_input}" = /* ]]; then
  schema_path="${schema_input}"
else
  schema_path="${repo_root}/${schema_input}"
fi

if [[ "${payload_input}" = /* ]]; then
  payload_path="${payload_input}"
else
  payload_path="${repo_root}/${payload_input}"
fi

if [[ ! -f "${schema_path}" ]]; then
  echo "[validate-protocol-json] Schema file not found: ${schema_input}" >&2
  exit 1
fi

if [[ ! -f "${payload_path}" ]]; then
  echo "[validate-protocol-json] Payload file not found: ${payload_input}" >&2
  exit 1
fi

SCHEMA_PATH="${schema_path}" PAYLOAD_PATH="${payload_path}" REPO_ROOT="${repo_root}" "${python_bin}" <<'PY'
import json
import os
import sys
from pathlib import Path

from jsonschema import Draft202012Validator, RefResolver

schema_path = Path(os.environ["SCHEMA_PATH"]).resolve()
payload_path = Path(os.environ["PAYLOAD_PATH"]).resolve()
repo_root = Path(os.environ["REPO_ROOT"]).resolve()
schema_dir = schema_path.parent


def rel(path: Path) -> str:
    try:
        return str(path.relative_to(repo_root))
    except ValueError:
        return str(path)


def load_json(path: Path):
    with path.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def build_store(base_dir: Path):
    store = {}
    for candidate in sorted(base_dir.glob("*.json")):
        schema = load_json(candidate)
        store[candidate.name] = schema
        if isinstance(schema, dict):
            schema_id = schema.get("$id")
            if isinstance(schema_id, str) and schema_id:
                store[schema_id] = schema
    return store


try:
    schema = load_json(schema_path)
except Exception as exc:
    print(
        f"[validate-protocol-json] Failed to parse schema JSON {rel(schema_path)}: {exc}",
        file=sys.stderr,
    )
    raise SystemExit(1)

if not isinstance(schema, dict):
    print(
        f"[validate-protocol-json] Schema must be a JSON object: {rel(schema_path)}",
        file=sys.stderr,
    )
    raise SystemExit(1)

try:
    payload = load_json(payload_path)
except Exception as exc:
    print(
        f"[validate-protocol-json] Failed to parse payload JSON {rel(payload_path)}: {exc}",
        file=sys.stderr,
    )
    raise SystemExit(1)

store = build_store(schema_dir)
validator = Draft202012Validator(
    schema,
    resolver=RefResolver.from_schema(schema, store=store),
)

errors = sorted(validator.iter_errors(payload), key=lambda err: list(err.path))
if errors:
    for error in errors:
        path = ".".join(str(part) for part in error.path) or "<root>"
        print(
            "[validate-protocol-json] Validation error at "
            f"{path}: {error.message}",
            file=sys.stderr,
        )
    raise SystemExit(1)

print(
    "[validate-protocol-json] PASS: "
    f"{rel(payload_path)} is valid against {rel(schema_path)}."
)
PY
