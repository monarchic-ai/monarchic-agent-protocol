#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-command-log-path-helper"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

self_host_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_command_log_cleanup' EXIT

self_host_command_log_reset_and_assert_baseline

command_log_relative_path="$(self_host_command_log_relative_path)"
tmp_repo_root="$(self_host_command_log_tmp_root)"
stderr_log_path="$(self_host_command_log_stderr_log_path)"
python_cmd="$(self_host_command_log_python_cmd)"
command_log_path_in_root="$(self_host_command_log_path_in_root "${tmp_repo_root}")"

if [[ -z "${command_log_relative_path}" ]]; then
  echo "[${script_label}] Expected command-log relative-path helper to return a path." >&2
  exit 1
fi

self_host_command_log_assert_core_path_listed "${command_log_relative_path}"

first_core_relative_path="$(self_host_command_log_first_core_path)"

if ! self_host_command_log_assert_core_path_listed "${first_core_relative_path}"; then
  echo "[${script_label}] Expected first core-path helper to resolve one wrapper-owned core path, found ${first_core_relative_path}." >&2
  exit 1
fi

first_core_path="$(self_host_command_log_tmp_path_for_relative_path "${first_core_relative_path}")"
first_core_path_in_root="$(self_host_command_log_path_in_root "${tmp_repo_root}" "${first_core_relative_path}")"

command_log_path="$(self_host_command_log_tmp_path)"
expected_command_log_path="$(self_host_command_log_tmp_path_for_relative_path "${command_log_relative_path}")"

if [[ "${command_log_path}" != "${expected_command_log_path}" ]]; then
  echo "[${script_label}] Expected temp command-log path ${expected_command_log_path}, found ${command_log_path}." >&2
  exit 1
fi

if [[ "${expected_command_log_path}" != "${command_log_path_in_root}" ]]; then
  echo "[${script_label}] Expected root-path helper to keep ${command_log_relative_path} aligned with the wrapper temp root ${tmp_repo_root}." >&2
  exit 1
fi

if [[ "${first_core_path}" != "${first_core_path_in_root}" ]]; then
  echo "[${script_label}] Expected root-path helper to keep ${first_core_relative_path} aligned with the wrapper temp root ${tmp_repo_root}." >&2
  exit 1
fi

if [[ ! -f "${command_log_path}" ]]; then
  echo "[${script_label}] Expected baseline fixtures to restore ${command_log_relative_path}." >&2
  exit 1
fi

if [[ ! -f "${first_core_path}" ]]; then
  echo "[${script_label}] Expected first core-path helper to resolve a restored wrapper-owned artifact, found ${first_core_relative_path}." >&2
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

missing_relative_path="NOT_A_COMMAND_LOG_CORE_PATH.json"

self_host_command_log_expect_failure_contains \
  "${missing_relative_path}" \
  "Expected core-path membership helper to fail for ${missing_relative_path}." \
  self_host_command_log_assert_core_path_listed "${missing_relative_path}"

self_host_command_log_mutate_json "${command_log_path}" <<'PY'
command_log["status"] = "blocked"
PY

self_host_command_log_expect_reason_code "COMMAND_LOG_STATUS_MISMATCH" "Expected command-log JSON mutation helper to persist a deterministic status mutation."

self_host_command_log_reset_and_assert_baseline

self_host_command_log_mutate_json "${command_log_path}" <<'PY'
if not command_log["commands"]:
    raise SystemExit("Need at least one command entry for stderr helper coverage.")

command_log["commands"][0]["index"] = 99
PY

self_host_command_log_expect_stderr_contains \
  "command index must be a contiguous integer sequence" \
  "Expected stderr substring helper to detect deterministic command-log format drift."

echo "[${script_label}] PASS: command-log wrapper core-path membership, failure-output, temp-path, first-core-path, stderr-log, python-command, JSON-mutation, and stderr-substring helpers stay aligned with wrapper-owned fixtures."
