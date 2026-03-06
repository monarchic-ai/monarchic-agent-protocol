#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"

if [[ ! -x "${check_script}" ]]; then
  echo "[test-self-host-artifact-command-log-gate] Missing executable: ${check_script}" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-self-host-artifact-command-log-gate] python or python3 is required" >&2
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
  cp "${repo_root}/SELF_HOST_PROOF.json" "${tmp_repo}/SELF_HOST_PROOF.json"
  cp "${repo_root}/SELF_HOST_COMMAND_LOG.json" "${tmp_repo}/SELF_HOST_COMMAND_LOG.json"

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

expect_reason_code() {
  local expected_reason_code="$1"
  local failure_message="$2"

  set +e
  bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"
  exit_code=$?
  set -e

  if [[ "${exit_code}" -eq 0 ]]; then
    echo "[test-self-host-artifact-command-log-gate] ${failure_message}" >&2
    exit 1
  fi

  if ! grep -q "reason_code=${expected_reason_code}" "${stderr_log}"; then
    echo "[test-self-host-artifact-command-log-gate] Unexpected stderr output while checking ${expected_reason_code}:" >&2
    cat "${stderr_log}" >&2
    exit 1
  fi
}

reset_fixtures

if ! bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[test-self-host-artifact-command-log-gate] Expected baseline fixtures to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

"${python_cmd}" - "${tmp_repo}/SELF_HOST_COMMAND_LOG.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    command_log = json.load(handle)

command_log["status"] = "blocked"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(command_log, handle, indent=2)
    handle.write("\n")
PY

expect_reason_code "COMMAND_LOG_STATUS_MISMATCH" "Expected command-log status mismatch to fail."

reset_fixtures

"${python_cmd}" - "${tmp_repo}/SELF_HOST_COMMAND_LOG.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    command_log = json.load(handle)

if not command_log["commands"]:
    raise SystemExit("Need at least one command entry for regression test.")

command_log["commands"][0]["index"] = 99

with open(path, "w", encoding="utf-8") as handle:
    json.dump(command_log, handle, indent=2)
    handle.write("\n")
PY

expect_reason_code "COMMAND_LOG_INDEX_INVALID" "Expected non-contiguous command index to fail."

reset_fixtures

"${python_cmd}" - "${tmp_repo}/SELF_HOST_COMMAND_LOG.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    command_log = json.load(handle)

if len(command_log["commands"]) < 2:
    raise SystemExit("Need at least two command entries for order-drift regression test.")

first_command = command_log["commands"][0]["command"]
second_command = command_log["commands"][1]["command"]
command_log["commands"][0]["command"] = second_command
command_log["commands"][1]["command"] = first_command

with open(path, "w", encoding="utf-8") as handle:
    json.dump(command_log, handle, indent=2)
    handle.write("\n")
PY

expect_reason_code "COMMAND_LOG_FIRST_COMMAND_INVALID" "Expected first-command order drift to fail."

echo "[test-self-host-artifact-command-log-gate] PASS: default self-host artifact gate surfaces deterministic command-log reason codes for status, index, and verification-order drift."
