#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-command-log-format"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

self_host_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_command_log_cleanup' EXIT

self_host_command_log_reset_fixtures
self_host_command_log_assert_baseline_passes

command_log_path="$(self_host_command_log_tmp_path)"
stderr_log_path="$(self_host_command_log_stderr_log_path)"

self_host_command_log_mutate_json "${command_log_path}" <<'PY'
if not command_log["commands"]:
    raise SystemExit("Need at least one command entry for regression test.")

command_log["commands"][0]["index"] = 99
PY

set +e
self_host_command_log_run_check >/dev/null 2>"${stderr_log_path}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[${script_label}] Expected non-contiguous command index to fail." >&2
  exit 1
fi

if ! grep -q "command index must be a contiguous integer sequence" "${stderr_log_path}"; then
  echo "[${script_label}] Unexpected stderr output for command log format check:" >&2
  cat "${stderr_log_path}" >&2
  exit 1
fi

echo "[${script_label}] PASS: command log format validation is deterministic."
