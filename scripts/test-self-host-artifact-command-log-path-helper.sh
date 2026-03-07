#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-command-log-path-helper"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

self_host_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_command_log_cleanup' EXIT

self_host_command_log_reset_fixtures
self_host_command_log_assert_baseline_passes

command_log_relative_path="$(self_host_command_log_relative_path)"
tmp_repo_root="$(self_host_command_log_tmp_root)"
stderr_log_path="$(self_host_command_log_stderr_log_path)"
python_cmd="$(self_host_command_log_python_cmd)"

if [[ -z "${command_log_relative_path}" ]]; then
  echo "[${script_label}] Expected command-log relative-path helper to return a path." >&2
  exit 1
fi

if ! self_host_command_log_core_paths | grep -Fxq "${command_log_relative_path}"; then
  echo "[${script_label}] Expected ${command_log_relative_path} to remain wrapper-owned via core paths." >&2
  exit 1
fi

command_log_path="$(self_host_command_log_tmp_path)"
expected_command_log_path="$(self_host_command_log_tmp_path_for_relative_path "${command_log_relative_path}")"

if [[ "${command_log_path}" != "${expected_command_log_path}" ]]; then
  echo "[${script_label}] Expected temp command-log path ${expected_command_log_path}, found ${command_log_path}." >&2
  exit 1
fi

if [[ "${expected_command_log_path}" != "${tmp_repo_root}/${command_log_relative_path}" ]]; then
  echo "[${script_label}] Expected relative-path helper to stay aligned with the wrapper temp root ${tmp_repo_root}." >&2
  exit 1
fi

if [[ ! -f "${command_log_path}" ]]; then
  echo "[${script_label}] Expected baseline fixtures to restore ${command_log_relative_path}." >&2
  exit 1
fi

if [[ ! -f "${stderr_log_path}" ]]; then
  echo "[${script_label}] Expected wrapper stderr-log helper to resolve an initialized log file." >&2
  exit 1
fi

if ! command -v "${python_cmd}" >/dev/null 2>&1; then
  echo "[${script_label}] Expected wrapper python-command helper to resolve an available interpreter, found ${python_cmd}." >&2
  exit 1
fi

echo "[${script_label}] PASS: command-log wrapper temp-path, stderr-log, and python-command helpers stay aligned with wrapper-owned fixtures."
