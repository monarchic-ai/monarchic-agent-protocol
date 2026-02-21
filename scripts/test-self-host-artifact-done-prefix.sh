#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"

if [[ ! -x "${check_script}" ]]; then
  echo "[test-self-host-artifact-done-prefix] Missing executable: ${check_script}" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-self-host-artifact-done-prefix] python or python3 is required" >&2
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
  echo "[test-self-host-artifact-done-prefix] Expected baseline fixtures to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

"${python_cmd}" - "${tmp_repo}/SELF_HOST_MILESTONES.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    milestones = json.load(handle)

if len(milestones) < 3:
    raise SystemExit("Need at least 3 milestones to run done-prefix regression test.")

milestones[1]["status"] = "pending"
milestones[1]["completed_at"] = None
milestones[1]["notes"] = milestones[1]["notes"] + " (mutated for done-prefix failure)"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(milestones, handle, indent=2)
    handle.write("\n")
PY

set +e
bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-self-host-artifact-done-prefix] Expected done-after-pending progression to fail." >&2
  exit 1
fi

if ! grep -q "done milestones must be contiguous from M1" "${stderr_log}"; then
  echo "[test-self-host-artifact-done-prefix] Unexpected stderr output for done-prefix check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[test-self-host-artifact-done-prefix] PASS: done milestone prefix checks are deterministic."
