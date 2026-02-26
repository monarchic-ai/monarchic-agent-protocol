#!/usr/bin/env bash
set -euo pipefail

proto_file="${1:-schemas/v1/monarchic_agent_protocol.proto}"
proto_dir="$(cd "$(dirname "${proto_file}")" && pwd)"
proto_file="${proto_dir}/$(basename "${proto_file}")"

if [[ ! -f "${proto_file}" ]]; then
  echo "Missing ${proto_file}" >&2
  exit 1
fi

if ! command -v protoc >/dev/null 2>&1; then
  echo "protoc not found in PATH" >&2
  exit 1
fi

if ! command -v protoc-gen-jsonschema >/dev/null 2>&1; then
  echo "protoc-gen-jsonschema not found in PATH" >&2
  echo "Install with: go install github.com/chrusty/protoc-gen-jsonschema/cmd/protoc-gen-jsonschema@latest" >&2
  exit 1
fi

tmp_dir="$(mktemp -d)"
trap 'rm -rf "${tmp_dir}"' EXIT

protoc -I "${proto_dir}" \
  --jsonschema_out="${tmp_dir}" \
  "${proto_file}"

declare -A outputs=(
  [Task]="task.json"
  [Artifact]="artifact.json"
  [Event]="event.json"
  [GateResult]="gate_result.json"
  [RunContext]="run_context.json"
  [RunOutcome]="run_outcome.json"
)

for msg in "${!outputs[@]}"; do
  target="schemas/v1/${outputs[$msg]}"
  src="$(find "${tmp_dir}" -type f -iname "monarchic.agent_protocol.v1.${msg}.schema.json" -o -type f -iname "${msg}.schema.json" -o -type f -iname "*.${msg}.schema.json" -o -type f -iname "*${msg}.schema.json" | head -n 1)"
  if [[ -z "${src}" ]]; then
    echo "Failed to find generated schema for ${msg}" >&2
    echo "Generated files:" >&2
    find "${tmp_dir}" -type f | sort >&2
    exit 1
  fi
  cp "${src}" "${target}"
done

export PROTO_FILE="${proto_file}"
python3 - <<'PY'
import json
import re
import os
import sys
from pathlib import Path

proto_path = Path(os.environ["PROTO_FILE"])
text = proto_path.read_text(encoding="utf-8")
start = text.find("enum AgentRole")
if start == -1:
    print(f"AgentRole enum not found in {proto_path}", file=sys.stderr)
    raise SystemExit(1)
sub = text[start:]
open_idx = sub.find("{")
close_idx = sub.find("}")
if open_idx == -1 or close_idx == -1 or close_idx <= open_idx:
    print(f"AgentRole enum block not found in {proto_path}", file=sys.stderr)
    raise SystemExit(1)
block = sub[open_idx + 1 : close_idx]
entries = re.findall(r"([A-Z0-9_]+)\s*=\s*\d+\s*;", block)
if not entries:
    print(f"AgentRole enum not found in {proto_path}", file=sys.stderr)
    raise SystemExit(1)
values = []
for name in entries:
    if name.endswith("UNSPECIFIED"):
        continue
    values.append(name.lower())

schema = {
    "$id": "https://monarchic.ai/schema/v1/agent_role.json",
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "title": "AgentRole",
    "type": "string",
    "enum": values,
}

Path("schemas/v1/agent_role.json").write_text(
    json.dumps(schema, indent=2, sort_keys=False) + "\n",
    encoding="utf-8",
)
PY

cat > schemas/v1/schema.json <<'JSON'
{
  "$id": "https://monarchic.ai/schema/v1/schema.json",
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "title": "Monarchic AI Protocol v1",
  "oneOf": [
    { "$ref": "task.json" },
    { "$ref": "artifact.json" },
    { "$ref": "event.json" },
    { "$ref": "gate_result.json" },
    { "$ref": "run_context.json" },
    { "$ref": "run_outcome.json" }
  ]
}
JSON

python3 - <<'PY'
import json
import re
from pathlib import Path

schema_dir = Path("schemas/v1")

def normalize_enums(node):
    if isinstance(node, dict):
        if "enum" in node and isinstance(node["enum"], list):
            values = node["enum"]
            if values and all(isinstance(v, str) and re.fullmatch(r"[A-Z0-9_]+", v) for v in values):
                lowered = [v.lower() for v in values]
                node["enum"] = list(dict.fromkeys(values + lowered))
        for value in node.values():
            normalize_enums(value)
    elif isinstance(node, list):
        for item in node:
            normalize_enums(item)

for path in schema_dir.glob("*.json"):
    if path.name == "schema.json":
        continue
    data = json.loads(path.read_text(encoding="utf-8"))
    if isinstance(data, dict) and "additionalProperties" in data:
        data["additionalProperties"] = True
    normalize_enums(data)
    path.write_text(json.dumps(data, indent=2, sort_keys=False) + "\n", encoding="utf-8")
PY

echo "JSON Schemas generated under schemas/v1"
