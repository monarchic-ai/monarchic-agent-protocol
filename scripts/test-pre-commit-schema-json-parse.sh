#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/pre-commit-schema-json-parse.sh"

if [[ ! -x "${check_script}" ]]; then
  echo "[test-pre-commit-schema-json-parse] Missing executable: ${check_script}" >&2
  exit 1
fi

tmp_dir="$(mktemp -d)"
stderr_log="$(mktemp)"
trap 'rm -rf "${tmp_dir}" "${stderr_log}"' EXIT

valid_fixture="${tmp_dir}/valid.json"
invalid_fixture="${tmp_dir}/invalid.json"

cat >"${valid_fixture}" <<'JSON'
{
  "ok": true
}
JSON

cat >"${invalid_fixture}" <<'JSON'
{
  "ok":
}
JSON

if ! bash "${check_script}" "${valid_fixture}" >/dev/null 2>"${stderr_log}"; then
  echo "[test-pre-commit-schema-json-parse] Expected valid fixture to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

set +e
bash "${check_script}" "${invalid_fixture}" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-pre-commit-schema-json-parse] Expected invalid fixture to fail." >&2
  exit 1
fi

if ! grep -q "Invalid JSON" "${stderr_log}"; then
  echo "[test-pre-commit-schema-json-parse] Unexpected stderr output:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[test-pre-commit-schema-json-parse] PASS: pre-commit schema JSON parse check is deterministic."
