#!/usr/bin/env bash

artifact_lib_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${artifact_lib_dir}/self-host-artifact-test-lib.sh"

self_host_command_log_sync_state() {
  SELF_HOST_COMMAND_LOG_SCRIPT_LABEL="${SELF_HOST_ARTIFACT_SCRIPT_LABEL:-}"
  SELF_HOST_COMMAND_LOG_REPO_ROOT="${SELF_HOST_ARTIFACT_REPO_ROOT:-}"
  SELF_HOST_COMMAND_LOG_CHECK_SCRIPT="${SELF_HOST_ARTIFACT_CHECK_SCRIPT:-}"
  SELF_HOST_COMMAND_LOG_PYTHON_CMD="${SELF_HOST_ARTIFACT_PYTHON_CMD:-}"
  SELF_HOST_COMMAND_LOG_TMP_REPO="${SELF_HOST_ARTIFACT_TMP_REPO:-}"
  SELF_HOST_COMMAND_LOG_STDERR_LOG="${SELF_HOST_ARTIFACT_STDERR_LOG:-}"
}

self_host_command_log_setup() {
  self_host_artifact_setup "$@"
  self_host_command_log_sync_state
}

self_host_command_log_cleanup() {
  self_host_artifact_cleanup
}

self_host_command_log_core_paths() {
  self_host_artifact_core_paths
}

self_host_command_log_relative_path() {
  printf '%s\n' "SELF_HOST_COMMAND_LOG.json"
}

self_host_command_log_path_in_root() {
  local root="$1"

  if [[ -z "${root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty root for command-log path resolution." >&2
    return 1
  fi

  printf '%s/%s\n' "${root%/}" "$(self_host_command_log_relative_path)"
}

self_host_command_log_tmp_path() {
  self_host_command_log_path_in_root "${SELF_HOST_COMMAND_LOG_TMP_REPO:-}"
}

self_host_command_log_report_paths() {
  self_host_artifact_report_paths
}

self_host_command_log_fixture_paths() {
  self_host_artifact_fixture_paths
}

self_host_command_log_seed_source_repo_with_empty_report_lists() {
  self_host_artifact_seed_source_repo_with_empty_report_lists "$@"
}

self_host_command_log_reset_fixtures() {
  self_host_artifact_reset_fixtures
}

self_host_command_log_run_check() {
  self_host_artifact_run_check
}

self_host_command_log_assert_baseline_passes() {
  self_host_artifact_assert_baseline_passes
}

self_host_command_log_expect_reason_code() {
  self_host_artifact_expect_reason_code "$@"
}
