#!/usr/bin/env bash
set -euo pipefail

self_host_select_python() {
  local caller="${1:-self-host-fixture-helper}"

  if command -v python >/dev/null 2>&1; then
    printf '%s\n' "python"
    return 0
  fi

  if command -v python3 >/dev/null 2>&1; then
    printf '%s\n' "python3"
    return 0
  fi

  echo "[${caller}] python or python3 is required" >&2
  return 1
}

self_host_prepare_temp_repo() {
  local repo_root="${1:?repo_root is required}"
  local tmp_repo="${2:?tmp_repo is required}"
  local caller="${3:-self-host-fixture-helper}"
  local check_script="${repo_root}/scripts/test-self-host-artifacts.sh"

  if [[ ! -x "${check_script}" ]]; then
    echo "[${caller}] Missing executable: ${check_script}" >&2
    return 1
  fi

  mkdir -p "${tmp_repo}/scripts"
  cp "${check_script}" "${tmp_repo}/scripts/test-self-host-artifacts.sh"
  chmod +x "${tmp_repo}/scripts/test-self-host-artifacts.sh"
}

self_host_reset_fixtures() {
  local repo_root="${1:?repo_root is required}"
  local tmp_repo="${2:?tmp_repo is required}"
  local python_cmd="${3:?python_cmd is required}"

  cp "${repo_root}/SELF_HOST_MILESTONES.json" "${tmp_repo}/SELF_HOST_MILESTONES.json"
  cp "${repo_root}/SELF_HOST_REPORT.json" "${tmp_repo}/SELF_HOST_REPORT.json"
  cp "${repo_root}/SELF_HOST_UPDATE.json" "${tmp_repo}/SELF_HOST_UPDATE.json"
  cp "${repo_root}/SELF_HOST_IMPLEMENTATION_LOG.json" "${tmp_repo}/SELF_HOST_IMPLEMENTATION_LOG.json"

  while IFS= read -r relative_path; do
    [[ -z "${relative_path}" ]] && continue
    local source_path="${repo_root}/${relative_path}"
    if [[ ! -f "${source_path}" ]]; then
      continue
    fi
    mkdir -p "$(dirname "${tmp_repo}/${relative_path}")"
    cp "${source_path}" "${tmp_repo}/${relative_path}"
  done < <("${python_cmd}" - "${tmp_repo}/SELF_HOST_REPORT.json" <<'PY'
import json
import sys

with open(sys.argv[1], "r", encoding="utf-8") as handle:
    report = json.load(handle)

for key in ("new_files", "changed_files"):
    for path in report.get(key, []):
        if isinstance(path, str) and path:
            print(path)
PY
  )
}
