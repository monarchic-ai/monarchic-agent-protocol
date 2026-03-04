#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-legacy-unresolved-schema-refs.sh"
manifest_path="${repo_root}/checks/legacy-unresolved-schema-refs.json"
schema_dir="${repo_root}/schemas/v1"

if [[ ! -x "${check_script}" ]]; then
  echo "[test-legacy-unresolved-schema-refs-manifest] Missing executable: ${check_script}" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-legacy-unresolved-schema-refs-manifest] python or python3 is required" >&2
  exit 1
fi

tmp_dir="$(mktemp -d)"
stderr_log="$(mktemp)"
trap 'rm -rf "${tmp_dir}" "${stderr_log}"' EXIT

mkdir -p "${tmp_dir}/scripts" "${tmp_dir}/checks" "${tmp_dir}/schemas"
cp "${check_script}" "${tmp_dir}/scripts/test-legacy-unresolved-schema-refs.sh"
chmod +x "${tmp_dir}/scripts/test-legacy-unresolved-schema-refs.sh"
cp "${manifest_path}" "${tmp_dir}/checks/legacy-unresolved-schema-refs.json"
cp -R "${schema_dir}" "${tmp_dir}/schemas/v1"

if ! SCHEMA_DIR="${tmp_dir}/schemas/v1" \
  LEGACY_REF_MANIFEST_PATH="${tmp_dir}/checks/legacy-unresolved-schema-refs.json" \
  bash "${tmp_dir}/scripts/test-legacy-unresolved-schema-refs.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[test-legacy-unresolved-schema-refs-manifest] Expected baseline fixtures to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

"${python_cmd}" - "${tmp_dir}/checks/legacy-unresolved-schema-refs.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    manifest = json.load(handle)

if not manifest:
    raise SystemExit("Manifest fixture is unexpectedly empty.")

manifest.pop()

with open(path, "w", encoding="utf-8") as handle:
    json.dump(manifest, handle, indent=2)
    handle.write("\n")
PY

set +e
SCHEMA_DIR="${tmp_dir}/schemas/v1" \
LEGACY_REF_MANIFEST_PATH="${tmp_dir}/checks/legacy-unresolved-schema-refs.json" \
bash "${tmp_dir}/scripts/test-legacy-unresolved-schema-refs.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-legacy-unresolved-schema-refs-manifest] Expected stale manifest fixture to fail." >&2
  exit 1
fi

if ! grep -q "Manifest is missing unresolved refs" "${stderr_log}"; then
  echo "[test-legacy-unresolved-schema-refs-manifest] Unexpected stderr for stale manifest failure:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[test-legacy-unresolved-schema-refs-manifest] PASS: manifest drift is rejected deterministically."
