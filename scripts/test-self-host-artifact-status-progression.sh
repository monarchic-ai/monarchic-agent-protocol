#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
helper_script="${repo_root}/scripts/self-host-fixture-helpers.sh"
test_name="test-self-host-artifact-status-progression"

if [[ ! -f "${helper_script}" ]]; then
  echo "[${test_name}] Missing helper script: ${helper_script}" >&2
  exit 1
fi

# shellcheck source=./self-host-fixture-helpers.sh
source "${helper_script}"

python_cmd="$(self_host_select_python "${test_name}")"

tmp_repo="$(mktemp -d)"
stderr_log="$(mktemp)"
prior_report_path="${tmp_repo}/SELF_HOST_REPORT.prior.json"
trap 'rm -rf "${tmp_repo}" "${stderr_log}"' EXIT

self_host_prepare_temp_repo "${repo_root}" "${tmp_repo}" "${test_name}"

reset_fixtures() {
  self_host_reset_fixtures "${repo_root}" "${tmp_repo}" "${python_cmd}"
}

reset_fixtures

if ! bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[test-self-host-artifact-status-progression] Expected baseline fixtures to pass without a prior snapshot." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

"${python_cmd}" - "${tmp_repo}/SELF_HOST_REPORT.json" "${prior_report_path}" <<'PY'
import json
import sys

report_path = sys.argv[1]
prior_path = sys.argv[2]

with open(report_path, "r", encoding="utf-8") as handle:
    report = json.load(handle)

with open(prior_path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
PY

set +e
SELF_HOST_PRIOR_REPORT_PATH="${prior_report_path}" \
  bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-self-host-artifact-status-progression] Expected pass status with non-incrementing milestones_done to fail." >&2
  exit 1
fi

if ! grep -q "status 'pass' requires milestones_done to increase compared with prior report snapshot" "${stderr_log}"; then
  echo "[test-self-host-artifact-status-progression] Unexpected stderr output for pass-status progression check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

"${python_cmd}" - "${prior_report_path}" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    prior_report = json.load(handle)

prior_report["milestones_done"] -= 1

with open(path, "w", encoding="utf-8") as handle:
    json.dump(prior_report, handle, indent=2)
    handle.write("\n")
PY

if ! SELF_HOST_PRIOR_REPORT_PATH="${prior_report_path}" \
  bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[test-self-host-artifact-status-progression] Expected pass status with incremented milestones_done to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[test-self-host-artifact-status-progression] PASS: pass-status progression checks are deterministic."
