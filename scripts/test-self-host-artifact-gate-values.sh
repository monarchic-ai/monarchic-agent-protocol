#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
helper_script="${repo_root}/scripts/self-host-fixture-helpers.sh"
test_name="test-self-host-artifact-gate-values"

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
  echo "[test-self-host-artifact-gate-values] Expected baseline fixtures to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

reset_fixtures

"${python_cmd}" - "${tmp_repo}/SELF_HOST_IMPLEMENTATION_LOG.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    implementation_log = json.load(handle)

implementation_log[-1]["gate"] = "ready-for-qa"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(implementation_log, handle, indent=2)
    handle.write("\n")
PY

if ! bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"; then
  echo "[test-self-host-artifact-gate-values] Expected approved gate value ready-for-qa to pass." >&2
  cat "${stderr_log}" >&2
  exit 1
fi

reset_fixtures

"${python_cmd}" - "${tmp_repo}/SELF_HOST_IMPLEMENTATION_LOG.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    implementation_log = json.load(handle)

implementation_log[-1]["gate"] = "ready-for-staging"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(implementation_log, handle, indent=2)
    handle.write("\n")
PY

set +e
bash "${tmp_repo}/scripts/test-self-host-artifacts.sh" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-self-host-artifact-gate-values] Expected unapproved gate value to fail." >&2
  exit 1
fi

if ! grep -q "Latest implementation log entry field gate must be one of" "${stderr_log}"; then
  echo "[test-self-host-artifact-gate-values] Unexpected stderr output for gate-value check:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[test-self-host-artifact-gate-values] PASS: gate-value checks are deterministic."
