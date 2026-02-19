#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"

if [[ ! -x "${check_script}" ]]; then
  echo "[test-self-host-artifact-status-alignment] Missing executable: ${check_script}" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-self-host-artifact-status-alignment] python or python3 is required" >&2
  exit 1
fi

tmp_repo="$(mktemp -d)"
stderr_log="$(mktemp)"
trap 'rm -rf "${tmp_repo}" "${stderr_log}"' EXIT

mkdir -p "${tmp_repo}/scripts"
cp "${check_script}" "${tmp_repo}/scripts/test-self-host-artifacts.sh"
chmod +x "${tmp_repo}/scripts/test-self-host-artifacts.sh"

reset_fixtures() {
  cp "${repo_root}/SELF_HOST_MILESTONES.json" "${tmp_repo}/SELF_HOST_MILESTONES.json"
  cp "${repo_root}/SELF_HOST_REPORT.json" "${tmp_repo}/SELF_HOST_REPORT.json"
  cp "${repo_root}/SELF_HOST_UPDATE.json" "${tmp_repo}/SELF_HOST_UPDATE.json"
  cp "${repo_root}/SELF_HOST_IMPLEMENTATION_LOG.json" "${tmp_repo}/SELF_HOST_IMPLEMENTATION_LOG.json"
  while IFS= read -r relative_path; do
    [[ -z "${relative_path}" ]] && continue
    source_path="${repo_root}/${relative_path}"
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

reset_fixtures

if ! bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[test-self-host-artifact-status-alignment] Expected baseline fixtures to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

"${python_cmd}" - "${tmp_repo}/SELF_HOST_UPDATE.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    update = json.load(handle)

update["status"] = "fail"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(update, handle, indent=2)
    handle.write("\n")
PY

set +e
bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-self-host-artifact-status-alignment] Expected status mismatch to fail." >&2
  exit 1
fi

if ! grep -q "status must match SELF_HOST_REPORT.json status" "${stderr_log}"; then
  echo "[test-self-host-artifact-status-alignment] Unexpected stderr output for status mismatch check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

reset_fixtures

"${python_cmd}" - "${tmp_repo}/SELF_HOST_REPORT.json" "${tmp_repo}/SELF_HOST_UPDATE.json" <<'PY'
import json
import sys

report_path = sys.argv[1]
update_path = sys.argv[2]

with open(report_path, "r", encoding="utf-8") as handle:
    report = json.load(handle)
with open(update_path, "r", encoding="utf-8") as handle:
    update = json.load(handle)

report["status"] = "unknown"
update["status"] = "unknown"

with open(report_path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
with open(update_path, "w", encoding="utf-8") as handle:
    json.dump(update, handle, indent=2)
    handle.write("\n")
PY

set +e
bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-self-host-artifact-status-alignment] Expected invalid status values to fail." >&2
  exit 1
fi

if ! grep -q "SELF_HOST_REPORT.json status must be one of" "${stderr_log}"; then
  echo "[test-self-host-artifact-status-alignment] Unexpected stderr output for invalid report status check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[test-self-host-artifact-status-alignment] PASS: status checks are deterministic."
