#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_FILE="${1:-$ROOT_DIR/schemas/v1/schema.json}"

python3 - <<'PY' "$OUT_FILE"
import json
from pathlib import Path
import sys

out_path = Path(sys.argv[1])
out_path.parent.mkdir(parents=True, exist_ok=True)

refs = [
    "task.json",
    "artifact.json",
    "event.json",
    "gate_result.json",
    "failure_class.json",
    "run_context.json",
    "dataset_ref.json",
    "experiment_spec.json",
    "objective_spec.json",
    "eval_result.json",
    "provenance.json",
]

payload = {
    "$id": "https://monarchic.ai/schema/v1/schema.json",
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "title": "Monarchic AI Protocol v1",
    "oneOf": [{"$ref": ref} for ref in refs],
}

out_path.write_text(json.dumps(payload, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")
print(f"wrote {out_path}")
PY
