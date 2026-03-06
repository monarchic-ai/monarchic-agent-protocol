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
    echo "[lint-schemas] python or python3 is required" >&2
    exit 1
  fi
fi

echo "[lint-schemas] Validating JSON syntax under schemas/"
REPO_ROOT="${repo_root}" "${python_bin}" <<'PY'
import json
import os
import sys

repo_root = os.environ["REPO_ROOT"]
schemas_root = os.path.join(repo_root, "schemas")
json_files = []

for current_root, _, filenames in os.walk(schemas_root):
    for filename in filenames:
        if filename.endswith(".json"):
            json_files.append(os.path.join(current_root, filename))

json_files.sort()

if not json_files:
    print("[lint-schemas] No JSON files found under schemas/.", file=sys.stderr)
    raise SystemExit(1)

for path in json_files:
    try:
        with open(path, "r", encoding="utf-8") as handle:
            json.load(handle)
    except Exception as exc:
        rel_path = os.path.relpath(path, repo_root)
        print(f"[lint-schemas] Invalid JSON in {rel_path}: {exc}", file=sys.stderr)
        raise SystemExit(1)

print(f"[lint-schemas] Parsed {len(json_files)} JSON files successfully.")
PY

echo "[lint-schemas] Running semantic schema checks"
bash "${repo_root}/scripts/test-json-schema.sh"
echo "[lint-schemas] Schema lint checks passed"
