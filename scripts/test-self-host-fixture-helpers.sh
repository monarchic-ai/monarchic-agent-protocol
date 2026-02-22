#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
helper_script="${repo_root}/scripts/self-host-fixture-helpers.sh"
test_name="test-self-host-fixture-helpers"

if [[ ! -f "${helper_script}" ]]; then
  echo "[${test_name}] Missing helper script: ${helper_script}" >&2
  exit 1
fi

# shellcheck source=./self-host-fixture-helpers.sh
source "${helper_script}"

python_cmd="$(self_host_select_python "${test_name}")"
tmp_repo="$(mktemp -d)"
stderr_log="$(mktemp)"
referenced_paths_file="${tmp_repo}/report-paths.txt"
trap 'rm -rf "${tmp_repo}" "${stderr_log}"' EXIT

self_host_prepare_temp_repo "${repo_root}" "${tmp_repo}" "${test_name}"
self_host_reset_fixtures "${repo_root}" "${tmp_repo}" "${python_cmd}"

if ! bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[${test_name}] Expected baseline fixtures copied by helper to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

"${python_cmd}" - "${tmp_repo}/SELF_HOST_REPORT.json" <<'PY' >"${referenced_paths_file}"
import json
import sys

with open(sys.argv[1], "r", encoding="utf-8") as handle:
    report = json.load(handle)

for key in ("new_files", "changed_files"):
    for path in report.get(key, []):
        if isinstance(path, str) and path:
            print(path)
PY

missing_paths=()
while IFS= read -r relative_path; do
  [[ -z "${relative_path}" ]] && continue
  if [[ ! -f "${tmp_repo}/${relative_path}" ]]; then
    missing_paths+=("${relative_path}")
  fi
done <"${referenced_paths_file}"

if [[ "${#missing_paths[@]}" -gt 0 ]]; then
  echo "[${test_name}] Helper failed to copy report-referenced file path(s): ${missing_paths[*]}" >&2
  exit 1
fi

target_path="$(sed -n '1p' "${referenced_paths_file}")"
if [[ -z "${target_path}" ]]; then
  echo "[${test_name}] Expected report to include at least one referenced path." >&2
  exit 1
fi

rm -f "${tmp_repo}/${target_path}"
if [[ -f "${tmp_repo}/${target_path}" ]]; then
  echo "[${test_name}] Failed to remove temporary target path: ${target_path}" >&2
  exit 1
fi

self_host_reset_fixtures "${repo_root}" "${tmp_repo}" "${python_cmd}"
if [[ ! -f "${tmp_repo}/${target_path}" ]]; then
  echo "[${test_name}] Helper did not restore removed fixture path: ${target_path}" >&2
  exit 1
fi

echo "[${test_name}] PASS: fixture helper setup/reset behavior is deterministic."
