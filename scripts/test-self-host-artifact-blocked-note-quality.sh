#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
helper_script="${repo_root}/scripts/self-host-fixture-helpers.sh"
test_name="test-self-host-artifact-blocked-note-quality"

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

"${python_cmd}" - "${tmp_repo}/SELF_HOST_REPORT.json" "${tmp_repo}/SELF_HOST_UPDATE.json" <<'PY'
import json
import sys

report_path = sys.argv[1]
update_path = sys.argv[2]

with open(report_path, "r", encoding="utf-8") as handle:
    report = json.load(handle)
with open(update_path, "r", encoding="utf-8") as handle:
    update = json.load(handle)

report["status"] = "blocked"
update["status"] = "blocked"
report["note"] = "blocked"
update["note"] = "Blocked due to schema generation failure; next step is to rerun local checks after restoring fixtures."

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
  echo "[${test_name}] Expected generic blocked report note to fail." >&2
  exit 1
fi

if ! grep -q "SELF_HOST_REPORT.json field note must include actionable blocked-status detail" "${stderr_log}"; then
  echo "[${test_name}] Unexpected stderr output for blocked note quality check:" >&2
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

report["status"] = "blocked"
update["status"] = "blocked"
report["note"] = (
    "Blocked because the local fixture checksum snapshot is missing; "
    "next step is to regenerate the snapshot and rerun verification."
)
update["note"] = (
    "Blocked due to missing fixture checksum metadata; "
    "next we will restore the metadata and rerun self-host validation."
)
update["blockers"] = [
    "Fixture checksum metadata is missing from the local sandbox checkout."
]
update["next_steps"] = [
    "Restore the checksum metadata and rerun scripts/test-self-host-artifacts.sh."
]

with open(report_path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
with open(update_path, "w", encoding="utf-8") as handle:
    json.dump(update, handle, indent=2)
    handle.write("\n")
PY

if ! bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[${test_name}] Expected actionable blocked notes to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[${test_name}] PASS: blocked-status note quality checks are deterministic."
