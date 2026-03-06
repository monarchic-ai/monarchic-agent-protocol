#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
schema_dir="${SCHEMA_DIR:-${repo_root}/schemas/v1}"
manifest_path="${LEGACY_REF_MANIFEST_PATH:-${repo_root}/checks/legacy-unresolved-schema-refs.json}"

if [[ ! -d "${schema_dir}" ]]; then
  echo "[test-legacy-unresolved-schema-refs] Missing schema directory: ${schema_dir}" >&2
  exit 1
fi

if [[ ! -f "${manifest_path}" ]]; then
  echo "[test-legacy-unresolved-schema-refs] Missing manifest: ${manifest_path}" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-legacy-unresolved-schema-refs] python or python3 is required" >&2
  exit 1
fi

"${python_cmd}" - "${schema_dir}" "${manifest_path}" <<'PY'
import json
import sys
from collections.abc import Iterator
from pathlib import Path

schema_dir = Path(sys.argv[1]).resolve()
manifest_path = Path(sys.argv[2]).resolve()

required_manifest_keys = ["schema", "ref"]


def fail(message: str) -> None:
    print(f"[test-legacy-unresolved-schema-refs] {message}", file=sys.stderr)
    raise SystemExit(1)


def iter_refs(node: object) -> Iterator[str]:
    if isinstance(node, dict):
        ref = node.get("$ref")
        if isinstance(ref, str):
            yield ref
        for value in node.values():
            yield from iter_refs(value)
    elif isinstance(node, list):
        for item in node:
            yield from iter_refs(item)


def find_duplicates(values: list[tuple[str, str]]) -> list[tuple[str, str]]:
    seen: set[tuple[str, str]] = set()
    duplicates: set[tuple[str, str]] = set()
    for value in values:
        if value in seen:
            duplicates.add(value)
        else:
            seen.add(value)
    return sorted(duplicates)


try:
    with manifest_path.open("r", encoding="utf-8") as handle:
        manifest = json.load(handle)
except json.JSONDecodeError as exc:
    fail(f"Manifest is not valid JSON: {exc}")

if not isinstance(manifest, list):
    fail("Manifest must be a JSON array.")

expected_pairs: list[tuple[str, str]] = []
for index, item in enumerate(manifest):
    if not isinstance(item, dict):
        fail(f"Manifest entry at index {index} must be an object.")
    if list(item.keys()) != required_manifest_keys:
        fail(
            "Manifest entry at index "
            f"{index} must use keys {required_manifest_keys} in order, "
            f"found {list(item.keys())}."
        )
    schema_name = item["schema"]
    ref_value = item["ref"]
    if not isinstance(schema_name, str) or not schema_name.strip():
        fail(f"Manifest entry at index {index} has invalid schema value: {schema_name!r}.")
    if not isinstance(ref_value, str) or not ref_value.strip():
        fail(f"Manifest entry at index {index} has invalid ref value: {ref_value!r}.")
    expected_pairs.append((schema_name, ref_value))

manifest_duplicates = find_duplicates(expected_pairs)
if manifest_duplicates:
    fail(f"Manifest must not contain duplicate entries, found {manifest_duplicates}.")

if expected_pairs != sorted(expected_pairs):
    fail("Manifest entries must be sorted lexicographically by (schema, ref).")

observed_pairs: set[tuple[str, str]] = set()
for schema_path in sorted(schema_dir.glob("*.json")):
    try:
        with schema_path.open("r", encoding="utf-8") as handle:
            schema_payload = json.load(handle)
    except json.JSONDecodeError as exc:
        fail(f"Schema file {schema_path.name} is invalid JSON: {exc}")

    for ref in iter_refs(schema_payload):
        local_target = ref.split("#", 1)[0]
        if not local_target or "://" in local_target:
            continue
        if not local_target.endswith(".schema.json"):
            continue
        if (schema_dir / local_target).is_file():
            continue
        observed_pairs.add((schema_path.name, local_target))

sorted_observed = sorted(observed_pairs)
if sorted_observed != expected_pairs:
    expected_set = set(expected_pairs)
    observed_set = set(sorted_observed)
    missing_from_manifest = sorted(observed_set - expected_set)
    stale_manifest_entries = sorted(expected_set - observed_set)
    if missing_from_manifest:
        fail(
            "Manifest is missing unresolved refs: "
            + ", ".join(f"{schema}:{ref}" for schema, ref in missing_from_manifest)
        )
    fail(
        "Manifest contains stale refs that now resolve or no longer exist: "
        + ", ".join(f"{schema}:{ref}" for schema, ref in stale_manifest_entries)
    )

print(
    "[test-legacy-unresolved-schema-refs] PASS: unresolved legacy .schema.json refs "
    f"match manifest ({len(expected_pairs)} entries)."
)
PY
