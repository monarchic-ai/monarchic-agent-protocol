#!/usr/bin/env bash
set -euo pipefail

python_bin="${PYTHON_BIN:-}"
if [[ -z "${python_bin}" ]]; then
  if command -v python >/dev/null 2>&1; then
    python_bin="python"
  elif command -v python3 >/dev/null 2>&1; then
    python_bin="python3"
  else
    echo "python or python3 is required" >&2
    exit 1
  fi
fi

"${python_bin}" <<'PY'
import json
import os
import sys
from jsonschema import Draft202012Validator, RefResolver

repo_root = os.getcwd()
schema_dir = os.path.join(repo_root, "schemas", "v1")
valid_task_fixture_path = os.path.join(
    repo_root,
    "schemas",
    "fixtures",
    "valid",
    "task.minimal.json",
)
negative_fixture_path = os.path.join(
    repo_root,
    "schemas",
    "fixtures",
    "invalid",
    "broken_local_ref_schema.json",
)
invalid_task_fixture_path = os.path.join(
    repo_root,
    "schemas",
    "fixtures",
    "invalid",
    "task.missing_goal.json",
)


def load_json(path):
    with open(path, "r", encoding="utf-8") as handle:
        return json.load(handle)


def load_schemas_from_dir(directory):
    schemas = {}
    for name in sorted(os.listdir(directory)):
        path = os.path.join(directory, name)
        if name.endswith(".json") and os.path.isfile(path):
            schemas[name] = load_json(path)
    return schemas

def iter_refs(node):
    if isinstance(node, dict):
        ref = node.get("$ref")
        if isinstance(ref, str):
            yield ref
        for value in node.values():
            yield from iter_refs(value)
    elif isinstance(node, list):
        for item in node:
            yield from iter_refs(item)

def is_symbolic_schema_ref(ref):
    # Generated schema bundles may emit symbolic refs like
    # "monarchic.agent_protocol.v1.RunContext.schema.json" that are
    # resolved by $id/store, not by local filesystem paths.
    return ref.endswith(".schema.json") and "/" not in ref

def find_missing_local_refs(schemas, base_dir):
    missing_refs = []
    for schema_name, schema in schemas.items():
        Draft202012Validator.check_schema(schema)
        for ref in iter_refs(schema):
            local_target = ref.split("#", 1)[0]
            if not local_target or "://" in local_target:
                continue
            if is_symbolic_schema_ref(local_target):
                continue
            ref_path = os.path.join(base_dir, local_target)
            if not os.path.isfile(ref_path):
                missing_refs.append((schema_name, ref))
    return missing_refs

def build_task_validator(schemas):
    task_schema = schemas.get("task.json")
    if task_schema is None:
        print("Task schema missing: schemas/v1/task.json", file=sys.stderr)
        raise SystemExit(1)

    schema_store = {}
    for schema_name, schema in schemas.items():
        if isinstance(schema, dict):
            schema_id = schema.get("$id")
            if isinstance(schema_id, str):
                schema_store[schema_id] = schema
        schema_store[schema_name] = schema

    return Draft202012Validator(
        task_schema,
        resolver=RefResolver.from_schema(task_schema, store=schema_store),
    )

def collect_validation_errors(validator, payload):
    return sorted(
        validator.iter_errors(payload),
        key=lambda error: list(error.path),
    )

def validate_valid_task_fixture(schemas, fixture_path):
    validator = build_task_validator(schemas)
    fixture_payload = load_json(fixture_path)
    validation_errors = collect_validation_errors(validator, fixture_payload)
    if validation_errors:
        for error in validation_errors:
            path = ".".join(str(part) for part in error.path) or "<root>"
            print(
                f"Valid task fixture failed validation at {path}: {error.message}",
                file=sys.stderr,
            )
        raise SystemExit(1)

def validate_invalid_task_fixture(schemas, fixture_path):
    validator = build_task_validator(schemas)
    fixture_payload = load_json(fixture_path)
    validation_errors = collect_validation_errors(validator, fixture_payload)
    if not validation_errors:
        print(
            "Invalid task fixture check failed: fixture unexpectedly passed validation.",
            file=sys.stderr,
        )
        raise SystemExit(1)
    if not any(
        error.validator in {"anyOf", "type"} and list(error.path) == ["role"]
        for error in validation_errors
    ):
        print(
            "Invalid task fixture check failed: expected a type error for role.",
            file=sys.stderr,
        )
        for error in validation_errors:
            path = ".".join(str(part) for part in error.path) or "<root>"
            print(
                f"Observed invalid fixture error at {path}: {error.message}",
                file=sys.stderr,
            )
        raise SystemExit(1)


schemas = load_schemas_from_dir(schema_dir)
missing_refs = find_missing_local_refs(schemas, schema_dir)

if missing_refs:
    for schema_name, ref in missing_refs:
        print(
            f"Missing local $ref target in {schema_name}: {ref}",
            file=sys.stderr,
        )
    raise SystemExit(1)

validate_valid_task_fixture(schemas, valid_task_fixture_path)
validate_invalid_task_fixture(schemas, invalid_task_fixture_path)

fixture_schema = load_json(negative_fixture_path)
fixture_missing_refs = find_missing_local_refs(
    {os.path.basename(negative_fixture_path): fixture_schema},
    os.path.dirname(negative_fixture_path),
)
if not any(ref == "does_not_exist.json" for _, ref in fixture_missing_refs):
    print(
        "Negative fixture check failed: missing local $ref was not detected.",
        file=sys.stderr,
    )
    raise SystemExit(1)
PY
