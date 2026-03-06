#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
readme_path="${repo_root}/README.md"

if [[ ! -f "${readme_path}" ]]; then
  echo "[test-readme-schema-workflow] Missing README: ${readme_path}" >&2
  exit 1
fi

declare -a required_commands=(
  "bash scripts/lint-schemas.sh"
  "bash scripts/test-json-schema.sh"
  "bash scripts/validate-protocol-json.sh schemas/v1/objective_spec.json schemas/fixtures/valid/objective_spec.minimal.json"
  "bash scripts/test-validate-protocol-json.sh"
  "bash scripts/pre-commit-schema-json-parse.sh"
  "bash scripts/test-pre-commit-schema-json-parse.sh"
  "bash scripts/test-schema-changelog-format.sh"
  "bash scripts/test-readme-schema-index-coverage.sh"
  "bash scripts/test-readme-examples-coverage.sh"
  "bash scripts/test-readme-examples-sync.sh"
)

for command in "${required_commands[@]}"; do
  if ! grep -Fq "\`${command}\`" "${readme_path}"; then
    echo "[test-readme-schema-workflow] README is missing documented command: ${command}" >&2
    exit 1
  fi
done

declare -a required_scripts=(
  "${repo_root}/scripts/lint-schemas.sh"
  "${repo_root}/scripts/test-json-schema.sh"
  "${repo_root}/scripts/validate-protocol-json.sh"
  "${repo_root}/scripts/test-validate-protocol-json.sh"
  "${repo_root}/scripts/pre-commit-schema-json-parse.sh"
  "${repo_root}/scripts/test-pre-commit-schema-json-parse.sh"
  "${repo_root}/scripts/test-schema-changelog-format.sh"
  "${repo_root}/scripts/test-readme-schema-index-coverage.sh"
  "${repo_root}/scripts/test-readme-examples-coverage.sh"
  "${repo_root}/scripts/test-readme-examples-sync.sh"
)

for script_path in "${required_scripts[@]}"; do
  if [[ ! -x "${script_path}" ]]; then
    echo "[test-readme-schema-workflow] Required script is not executable: ${script_path}" >&2
    exit 1
  fi
done

echo "[test-readme-schema-workflow] PASS: README workflow commands are documented and executable."
