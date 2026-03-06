#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-command-log-shared-fixtures"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

self_host_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_command_log_cleanup' EXIT

self_host_command_log_reset_fixtures
self_host_command_log_assert_baseline_passes

restored_relative_path="$("${SELF_HOST_COMMAND_LOG_PYTHON_CMD}" - "${repo_root}/SELF_HOST_REPORT.json" <<'PY'
import json
import sys

with open(sys.argv[1], "r", encoding="utf-8") as handle:
    report = json.load(handle)

for key in ("new_files", "changed_files"):
    for path in report.get(key, []):
        if isinstance(path, str) and path:
            print(path)
            raise SystemExit(0)

raise SystemExit("Need at least one reported file path for shared fixture validation.")
PY
)"

restored_path="${SELF_HOST_COMMAND_LOG_TMP_REPO}/${restored_relative_path}"

if [[ ! -f "${restored_path}" ]]; then
  echo "[${script_label}] Expected baseline fixtures to copy ${restored_relative_path}." >&2
  exit 1
fi

rm -f "${restored_path}"

if [[ -e "${restored_path}" ]]; then
  echo "[${script_label}] Expected ${restored_relative_path} to be removed before reset." >&2
  exit 1
fi

self_host_command_log_reset_fixtures

if [[ ! -f "${restored_path}" ]]; then
  echo "[${script_label}] Expected reset to restore ${restored_relative_path}." >&2
  exit 1
fi

self_host_command_log_assert_baseline_passes

echo "[${script_label}] PASS: shared command-log fixture setup restores report-listed files and preserves a passing baseline gate."
