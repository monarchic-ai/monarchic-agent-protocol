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

if [[ -z "${command_log_relative_path}" ]]; then
  echo "[${script_label}] Expected command-log relative-path helper to return a path." >&2
  exit 1
fi

if ! self_host_command_log_core_paths | grep -Fxq "${command_log_relative_path}"; then
  echo "[${script_label}] Expected ${command_log_relative_path} to remain wrapper-owned via core paths." >&2
  exit 1
fi

command_log_path="$(self_host_command_log_tmp_path)"
expected_command_log_path="${SELF_HOST_COMMAND_LOG_TMP_REPO}/${command_log_relative_path}"

if [[ "${command_log_path}" != "${expected_command_log_path}" ]]; then
  echo "[${script_label}] Expected temp command-log path ${expected_command_log_path}, found ${command_log_path}." >&2
  exit 1
fi

if [[ ! -f "${command_log_path}" ]]; then
  echo "[${script_label}] Expected baseline fixtures to restore ${command_log_relative_path}." >&2
  exit 1
fi

echo "[${script_label}] PASS: command-log wrapper path helper stays aligned with wrapper-owned core fixtures."
