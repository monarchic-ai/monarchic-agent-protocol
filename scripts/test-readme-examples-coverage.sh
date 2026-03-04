#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
readme_path="${repo_root}/README.md"
proto_examples_dir="${repo_root}/examples/proto"

if [[ ! -f "${readme_path}" ]]; then
  echo "[test-readme-examples-coverage] Missing README: ${readme_path}" >&2
  exit 1
fi

if [[ ! -d "${proto_examples_dir}" ]]; then
  echo "[test-readme-examples-coverage] Missing protobuf examples directory: ${proto_examples_dir}" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-readme-examples-coverage] python or python3 is required" >&2
  exit 1
fi

"${python_cmd}" - "${repo_root}" "${readme_path}" "${proto_examples_dir}" <<'PY'
import re
import sys
from pathlib import Path

repo_root = Path(sys.argv[1])
readme_path = Path(sys.argv[2])
proto_examples_dir = Path(sys.argv[3])

required_non_protobuf_entries = [
    ("Rust", "examples/rust/task.rs"),
    ("TypeScript", "examples/ts/task.ts"),
    ("JSON (non-protobuf)", "examples/json/objective_spec.minimal.json"),
]

with readme_path.open("r", encoding="utf-8") as handle:
    lines = [line.rstrip("\n") for line in handle]

heading = "### Examples"
try:
    start = lines.index(heading)
except ValueError:
    print(
        f"[test-readme-examples-coverage] README is missing section heading: {heading}",
        file=sys.stderr,
    )
    sys.exit(1)

end = len(lines)
for index in range(start + 1, len(lines)):
    line = lines[index]
    if line.startswith("### ") or line.startswith("## "):
        end = index
        break

pattern = re.compile(r"^- ([^:]+): `([^`]+)`$")
documented_entries = []
for raw_line in lines[start + 1 : end]:
    match = pattern.match(raw_line.strip())
    if not match:
        continue
    label = match.group(1).strip()
    relative_path = match.group(2).strip()
    documented_entries.append((label, relative_path))

if not documented_entries:
    print(
        "[test-readme-examples-coverage] README Examples section does not contain any parsable example entries.",
        file=sys.stderr,
    )
    sys.exit(1)

seen_entries = set()
duplicate_entries = []
for entry in documented_entries:
    if entry in seen_entries:
        duplicate_entries.append(entry)
        continue
    seen_entries.add(entry)
if duplicate_entries:
    print(
        "[test-readme-examples-coverage] README Examples section contains duplicate entries: "
        + ", ".join(f"{label}:{path}" for label, path in duplicate_entries),
        file=sys.stderr,
    )
    sys.exit(1)

for label, relative_path in documented_entries:
    if not (repo_root / relative_path).is_file():
        print(
            "[test-readme-examples-coverage] README Examples entry points to missing file: "
            f"{label}: {relative_path}",
            file=sys.stderr,
        )
        sys.exit(1)

documented_entry_set = set(documented_entries)
missing_non_protobuf_entries = [
    f"{label}: {path}"
    for label, path in required_non_protobuf_entries
    if (label, path) not in documented_entry_set
]
if missing_non_protobuf_entries:
    print(
        "[test-readme-examples-coverage] README Examples section is missing required non-protobuf entries: "
        + ", ".join(missing_non_protobuf_entries),
        file=sys.stderr,
    )
    sys.exit(1)

documented_proto_paths = sorted(
    path for label, path in documented_entries if label.startswith("Protobuf ")
)
actual_proto_paths = sorted(
    path.relative_to(repo_root).as_posix()
    for path in proto_examples_dir.glob("*/*")
    if path.is_file()
)

if documented_proto_paths != actual_proto_paths:
    print(
        "[test-readme-examples-coverage] README protobuf example paths are out of sync with examples/proto/*/*.",
        file=sys.stderr,
    )
    print(
        "[test-readme-examples-coverage] Expected protobuf paths: "
        + ", ".join(actual_proto_paths),
        file=sys.stderr,
    )
    print(
        "[test-readme-examples-coverage] Documented protobuf paths: "
        + ", ".join(documented_proto_paths),
        file=sys.stderr,
    )
    sys.exit(1)

print(
    "[test-readme-examples-coverage] PASS: README examples include required non-protobuf entries and valid protobuf path coverage."
)
PY
