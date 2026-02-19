#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
changelog_path="${repo_root}/schemas/SCHEMA_CHANGELOG.md"

if [[ ! -f "${changelog_path}" ]]; then
  echo "[test-schema-changelog-format] Missing changelog: ${changelog_path}" >&2
  exit 1
fi

if ! grep -Fxq "# Schema Change Log" "${changelog_path}"; then
  echo "[test-schema-changelog-format] Missing required heading: # Schema Change Log" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-schema-changelog-format] python or python3 is required" >&2
  exit 1
fi

"${python_cmd}" - "${changelog_path}" <<'PY'
import re
import sys

changelog_path = sys.argv[1]
with open(changelog_path, "r", encoding="utf-8") as f:
    lines = [line.rstrip("\n") for line in f]

entry_indices = [i for i, line in enumerate(lines) if line.startswith("## ")]
if not entry_indices:
    print(
        "[test-schema-changelog-format] Expected at least one changelog entry heading (## YYYY-MM-DD).",
        file=sys.stderr,
    )
    sys.exit(1)

first_entry_index = entry_indices[0]
entry_end = entry_indices[1] if len(entry_indices) > 1 else len(lines)
entry_lines = lines[first_entry_index:entry_end]

entry_date = lines[first_entry_index][3:].strip()
if not re.fullmatch(r"\d{4}-\d{2}-\d{2}", entry_date):
    print(
        f"[test-schema-changelog-format] Latest entry heading must be ## YYYY-MM-DD, got: {lines[first_entry_index]}",
        file=sys.stderr,
    )
    sys.exit(1)

required_prefixes = [
    "- task_id:",
    "- summary:",
    "- schema_files:",
    "- validation:",
]

missing = []
for prefix in required_prefixes:
    has_value = False
    for line in entry_lines:
        if line.startswith(prefix) and line[len(prefix):].strip():
            has_value = True
            break
    if not has_value:
        missing.append(prefix)

if missing:
    print(
        "[test-schema-changelog-format] Latest entry is missing required field(s): "
        + ", ".join(missing),
        file=sys.stderr,
    )
    sys.exit(1)

print("[test-schema-changelog-format] PASS: changelog entry format is valid.")
PY
