#!/usr/bin/env bash
set -euo pipefail

python <<'PY'
import json
import os
from jsonschema import Draft202012Validator

schema_dir = os.path.join(os.getcwd(), "schemas", "v1")
schemas = []
for name in os.listdir(schema_dir):
    if name.endswith(".json"):
        with open(os.path.join(schema_dir, name), "r", encoding="utf-8") as handle:
            schemas.append(json.load(handle))

for schema in schemas:
    Draft202012Validator.check_schema(schema)
PY
