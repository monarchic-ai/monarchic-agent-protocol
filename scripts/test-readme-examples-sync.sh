#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
root_readme_path="${repo_root}/README.md"
examples_readme_path="${repo_root}/examples/README.md"
proto_examples_dir="${repo_root}/examples/proto"

if [[ ! -f "${root_readme_path}" ]]; then
  echo "[test-readme-examples-sync] Missing README: ${root_readme_path}" >&2
  exit 1
fi

if [[ ! -f "${examples_readme_path}" ]]; then
  echo "[test-readme-examples-sync] Missing examples README: ${examples_readme_path}" >&2
  exit 1
fi

if [[ ! -d "${proto_examples_dir}" ]]; then
  echo "[test-readme-examples-sync] Missing protobuf examples directory: ${proto_examples_dir}" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-readme-examples-sync] python or python3 is required" >&2
  exit 1
fi

"${python_cmd}" - "${repo_root}" "${root_readme_path}" "${examples_readme_path}" "${proto_examples_dir}" <<'PY'
import re
import sys
from pathlib import Path

repo_root = Path(sys.argv[1])
root_readme = Path(sys.argv[2])
examples_readme = Path(sys.argv[3])
proto_examples_dir = Path(sys.argv[4])

required_non_protobuf_labels = {"Rust", "TypeScript", "JSON (non-protobuf)"}
pattern = re.compile(r"^- ([^:]+): `([^`]+)`(?:.*)?$")


def fail(message: str) -> None:
    print(f"[test-readme-examples-sync] {message}", file=sys.stderr)
    raise SystemExit(1)


def parse_examples_section(path: Path):
    lines = path.read_text(encoding="utf-8").splitlines()
    headings = ["### Examples", "## Examples", "# Examples"]
    start = None
    for heading in headings:
        if heading in lines:
            start = lines.index(heading)
            break

    if start is None:
        fail(
            f"{path.relative_to(repo_root)} is missing an Examples heading "
            f"(accepted: {', '.join(headings)})."
        )

    end = len(lines)
    for i in range(start + 1, len(lines)):
        if lines[i].startswith("#"):
            end = i
            break

    entries = []
    for raw in lines[start + 1 : end]:
        raw = raw.strip()
        if not raw:
            continue
        match = pattern.match(raw)
        if match:
            label = match.group(1).strip()
            relative_path = match.group(2).strip()
            entries.append((label, relative_path))

    if not entries:
        fail(f"{path.relative_to(repo_root)} has no parsable examples entries.")

    return entries


def check_duplicates(entries, label):
    seen = set()
    duplicates = []
    for entry in entries:
        if entry in seen:
            duplicates.append(entry)
        seen.add(entry)

    if duplicates:
        rendered = ", ".join(
            f"{entry_label}:{entry_path}" for entry_label, entry_path in duplicates
        )
        fail(f"{label} contains duplicate example entries: {rendered}")


root_entries = parse_examples_section(root_readme)
examples_entries = parse_examples_section(examples_readme)

check_duplicates(root_entries, "README.md")
check_duplicates(examples_entries, "examples/README.md")

root_set = set(root_entries)
examples_set = set(examples_entries)
if root_set != examples_set:
    only_root = sorted(root_set - examples_set)
    only_examples = sorted(examples_set - root_set)
    if only_root:
        fail(
            "README.md has example entries missing from examples/README.md: "
            + ", ".join(f"{label}:{path}" for label, path in only_root)
        )
    fail(
        "examples/README.md has example entries missing from README.md: "
        + ", ".join(f"{label}:{path}" for label, path in only_examples)
    )

for label, relative_path in root_entries:
    if not (repo_root / relative_path).is_file():
        fail(f"Example entry points to missing file: {label}: {relative_path}")

root_labels = {label for label, _ in root_entries}
missing_non_protobuf = sorted(required_non_protobuf_labels - root_labels)
if missing_non_protobuf:
    fail(
        "Missing required non-protobuf example labels: "
        + ", ".join(missing_non_protobuf)
    )

actual_proto_paths = sorted(
    path.relative_to(repo_root).as_posix()
    for path in proto_examples_dir.glob("*/*")
    if path.is_file()
)
documented_proto_paths = sorted(
    relative_path
    for label, relative_path in root_entries
    if label.startswith("Protobuf ")
)
if actual_proto_paths != documented_proto_paths:
    fail(
        "Protobuf example entries are out of sync with examples/proto/*/*; "
        f"expected {actual_proto_paths}, documented {documented_proto_paths}."
    )

print(
    "[test-readme-examples-sync] PASS: README and examples/README example entries are synchronized with required non-protobuf labels and protobuf paths."
)
PY
