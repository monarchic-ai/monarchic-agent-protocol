#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
validate_script="${repo_root}/scripts/validate-protocol-json.sh"

if [[ ! -x "${validate_script}" ]]; then
  echo "[test-validate-protocol-json] Missing executable: ${validate_script}" >&2
  exit 1
fi

stderr_log="$(mktemp)"
trap 'rm -f "${stderr_log}"' EXIT

if ! bash "${validate_script}" \
  "schemas/v1/objective_spec.json" \
  "schemas/fixtures/valid/objective_spec.minimal.json" \
  >/dev/null 2>"${stderr_log}"; then
  echo "[test-validate-protocol-json] Expected valid objective fixture to pass objective schema validation." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

if ! bash "${validate_script}" \
  "schemas/v1/objective_spec.json" \
  "examples/json/objective_spec.minimal.json" \
  >/dev/null 2>"${stderr_log}"; then
  echo "[test-validate-protocol-json] Expected canonical non-protobuf objective example to pass objective schema validation." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

set +e
bash "${validate_script}" \
  "schemas/v1/objective_spec.json" \
  "schemas/fixtures/invalid/objective_spec.missing_direction.json" \
  >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-validate-protocol-json] Expected invalid objective fixture to fail validation." >&2
  exit 1
fi

if ! grep -Eq "direction|required property" "${stderr_log}"; then
  echo "[test-validate-protocol-json] Missing expected required-field failure details for invalid objective fixture." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[test-validate-protocol-json] PASS: validator accepts valid fixtures/examples and rejects invalid fixtures."
