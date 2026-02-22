#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
helper_script="${repo_root}/scripts/self-host-fixture-helpers.sh"
test_name="test-self-host-artifact-next-priority-task"

if [[ ! -f "${helper_script}" ]]; then
  echo "[${test_name}] Missing helper script: ${helper_script}" >&2
  exit 1
fi

# shellcheck source=./self-host-fixture-helpers.sh
source "${helper_script}"

python_cmd="$(self_host_select_python "${test_name}")"

tmp_repo="$(mktemp -d)"
stderr_log="$(mktemp)"
trap 'rm -rf "${tmp_repo}" "${stderr_log}"' EXIT

self_host_prepare_temp_repo "${repo_root}" "${tmp_repo}" "${test_name}"

reset_fixtures() {
  self_host_reset_fixtures "${repo_root}" "${tmp_repo}" "${python_cmd}"
}

reset_fixtures

if ! bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[${test_name}] Expected baseline fixtures to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

cat > "${tmp_repo}/NEXT_PRIORITY_TASK.md" <<'EOF'
# Recovery Priority
Restore deterministic self-host artifact ordering.
EOF

set +e
bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${test_name}] Expected NEXT_PRIORITY_TASK.md without milestone_target reference to fail." >&2
  exit 1
fi

if ! grep -q "milestone_target must reference NEXT_PRIORITY_TASK.md" "${stderr_log}"; then
  echo "[${test_name}] Unexpected stderr output for NEXT_PRIORITY_TASK.md milestone_target reference check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

"${python_cmd}" - "${tmp_repo}/SELF_HOST_UPDATE.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    update = json.load(handle)

update["milestone_target"] = (
    "NEXT_PRIORITY_TASK.md: Restore deterministic self-host artifact ordering."
)

with open(path, "w", encoding="utf-8") as handle:
    json.dump(update, handle, indent=2)
    handle.write("\n")
PY

if ! bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[${test_name}] Expected fixtures to pass after milestone_target aligns with NEXT_PRIORITY_TASK.md." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[${test_name}] PASS: NEXT_PRIORITY_TASK.md recovery-mode checks are deterministic."
