#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
workflow_path="${repo_root}/.github/workflows/ci.yml"

if [[ ! -f "${workflow_path}" ]]; then
  echo "[test-ci-schema-validation-hook] Missing workflow: ${workflow_path}" >&2
  exit 1
fi

declare -a required_snippets=(
  "run: python -m pip install --upgrade pip jsonschema"
  "run: bash scripts/lint-schemas.sh"
)

for snippet in "${required_snippets[@]}"; do
  if ! grep -Fq "${snippet}" "${workflow_path}"; then
    echo "[test-ci-schema-validation-hook] Missing CI snippet: ${snippet}" >&2
    exit 1
  fi
done

if grep -Fq "Draft202012Validator" "${workflow_path}"; then
  echo "[test-ci-schema-validation-hook] Found deprecated inline schema validator block." >&2
  exit 1
fi

echo "[test-ci-schema-validation-hook] PASS: CI uses scripts/lint-schemas.sh for schema validation."
