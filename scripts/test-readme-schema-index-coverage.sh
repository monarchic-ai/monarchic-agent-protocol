#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
readme_path="${repo_root}/README.md"
schema_index_path="${repo_root}/schemas/v1/schema.json"

if [[ ! -f "${readme_path}" ]]; then
  echo "[test-readme-schema-index-coverage] Missing README: ${readme_path}" >&2
  exit 1
fi

if [[ ! -f "${schema_index_path}" ]]; then
  echo "[test-readme-schema-index-coverage] Missing schema index: ${schema_index_path}" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-readme-schema-index-coverage] python or python3 is required" >&2
  exit 1
fi

"${python_cmd}" - "${readme_path}" "${schema_index_path}" <<'PY'
import json
import re
import sys

readme_path = sys.argv[1]
schema_index_path = sys.argv[2]

with open(schema_index_path, "r", encoding="utf-8") as f:
    schema_index = json.load(f)

one_of = schema_index.get("oneOf")
if not isinstance(one_of, list) or not one_of:
    print(
        "[test-readme-schema-index-coverage] schemas/v1/schema.json must contain a non-empty oneOf list.",
        file=sys.stderr,
    )
    sys.exit(1)

expected_refs = []
for entry in one_of:
    if not isinstance(entry, dict):
        print(
            "[test-readme-schema-index-coverage] Every oneOf entry in schemas/v1/schema.json must be an object.",
            file=sys.stderr,
        )
        sys.exit(1)
    ref = entry.get("$ref")
    if not isinstance(ref, str) or not ref:
        print(
            "[test-readme-schema-index-coverage] Every oneOf entry in schemas/v1/schema.json must contain a string $ref.",
            file=sys.stderr,
        )
        sys.exit(1)
    ref_path = ref.split("#", 1)[0]
    if not ref_path.endswith(".json"):
        print(
            f"[test-readme-schema-index-coverage] Unsupported $ref target in schema index: {ref}",
            file=sys.stderr,
        )
        sys.exit(1)
    expected_refs.append(f"schemas/v1/{ref_path}")

with open(readme_path, "r", encoding="utf-8") as f:
    lines = [line.rstrip("\n") for line in f]

heading = "### Schema index coverage"
try:
    start = lines.index(heading)
except ValueError:
    print(
        f"[test-readme-schema-index-coverage] README is missing section heading: {heading}",
        file=sys.stderr,
    )
    sys.exit(1)

end = len(lines)
for i in range(start + 1, len(lines)):
    if lines[i].startswith("### ") or lines[i].startswith("## "):
        end = i
        break

section_lines = lines[start + 1 : end]
pattern = re.compile(r"^- `([^`]+)`(?: .*)?$")
documented_refs = []
for line in section_lines:
    match = pattern.match(line.strip())
    if not match:
        continue
    path = match.group(1)
    if path.startswith("schemas/v1/") and path.endswith(".json"):
        documented_refs.append(path)

if documented_refs != expected_refs:
    print(
        "[test-readme-schema-index-coverage] README schema index coverage list is out of sync with schemas/v1/schema.json.",
        file=sys.stderr,
    )
    print(
        "[test-readme-schema-index-coverage] Expected order: "
        + ", ".join(expected_refs),
        file=sys.stderr,
    )
    print(
        "[test-readme-schema-index-coverage] Documented order: "
        + ", ".join(documented_refs),
        file=sys.stderr,
    )
    sys.exit(1)

print(
    "[test-readme-schema-index-coverage] PASS: README schema index coverage matches schemas/v1/schema.json."
)
PY
