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

self_host_command_log_assert_core_path_listed() {
  local relative_path="${1:-}"
  local script_label="${SELF_HOST_COMMAND_LOG_SCRIPT_LABEL:-self-host-command-log-test-lib}"

  if [[ -z "${relative_path}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty relative path for core-path membership validation." >&2
    return 1
  fi

  if ! self_host_command_log_core_paths | grep -Fxq "${relative_path}"; then
    echo "[${script_label}] Expected wrapper core-path helper to list ${relative_path}." >&2
    return 1
  fi
}

self_host_command_log_first_core_path() {
  local first_relative_path=""

  first_relative_path="$(self_host_command_log_core_paths | head -n 1)"
  if [[ -z "${first_relative_path}" ]]; then
    echo "[self-host-command-log-test-lib] Expected wrapper core-path helper to expose at least one artifact path." >&2
    return 1
  fi

  printf '%s\n' "${first_relative_path}"
}

self_host_command_log_first_core_path_in_root() {
  local root="${1:-}"
  local first_relative_path=""

  if [[ -z "${root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty root for first core-path resolution." >&2
    return 1
  fi

  first_relative_path="$(self_host_command_log_first_core_path)" || return 1
  self_host_command_log_path_in_root "${root}" "${first_relative_path}"
}

self_host_command_log_first_core_path_pair_in_root() {
  local root="${1:-}"
  local first_relative_path=""
  local first_rooted_path=""

  if [[ -z "${root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty root for first core-path pair resolution." >&2
    return 1
  fi

  first_relative_path="$(self_host_command_log_first_core_path)" || return 1
  first_rooted_path="$(self_host_command_log_path_in_root "${root}" "${first_relative_path}")" || return 1

  printf '%s\n' "${first_relative_path}"
  printf '%s\n' "${first_rooted_path}"
}

self_host_command_log_first_core_path_pair_in_tmp_root() {
  local tmp_root=""

  tmp_root="$(self_host_command_log_tmp_root)" || return 1
  self_host_command_log_first_core_path_pair_in_root "${tmp_root}"
}

self_host_command_log_assign_first_core_path_pair_in_root() {
  local relative_path_var_name="${1:-}"
  local rooted_path_var_name="${2:-}"
  local root="${3:-}"
  local first_core_pair=()

  if [[ -z "${relative_path_var_name}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty shell variable name for first core-path relative-path assignment." >&2
    return 1
  fi

  if [[ ! "${relative_path_var_name}" =~ ^[a-zA-Z_][a-zA-Z0-9_]*$ ]]; then
    echo "[self-host-command-log-test-lib] Expected a valid shell variable name for first core-path relative-path assignment, found ${relative_path_var_name}." >&2
    return 1
  fi

  if [[ -z "${rooted_path_var_name}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty shell variable name for first core-path rooted-path assignment." >&2
    return 1
  fi

  if [[ ! "${rooted_path_var_name}" =~ ^[a-zA-Z_][a-zA-Z0-9_]*$ ]]; then
    echo "[self-host-command-log-test-lib] Expected a valid shell variable name for first core-path rooted-path assignment, found ${rooted_path_var_name}." >&2
    return 1
  fi

  if [[ -z "${root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty root for first core-path pair assignment." >&2
    return 1
  fi

  mapfile -t first_core_pair < <(self_host_command_log_first_core_path_pair_in_root "${root}") || return 1

  if [[ "${#first_core_pair[@]}" -ne 2 ]]; then
    echo "[self-host-command-log-test-lib] Expected first core-path pair resolution to return exactly two lines, found ${#first_core_pair[@]}." >&2
    return 1
  fi

  if [[ -z "${first_core_pair[0]}" || -z "${first_core_pair[1]}" ]]; then
    echo "[self-host-command-log-test-lib] Expected first core-path pair resolution to return non-empty relative and rooted paths." >&2
    return 1
  fi

  printf -v "${relative_path_var_name}" '%s' "${first_core_pair[0]}"
  printf -v "${rooted_path_var_name}" '%s' "${first_core_pair[1]}"
}

self_host_command_log_assign_first_core_path_pair_in_tmp_root() {
  local relative_path_var_name="${1:-}"
  local rooted_path_var_name="${2:-}"
  local tmp_root=""

  tmp_root="$(self_host_command_log_tmp_root)" || return 1
  self_host_command_log_assign_first_core_path_pair_in_root "${relative_path_var_name}" "${rooted_path_var_name}" "${tmp_root}"
}

self_host_command_log_assign_existing_first_core_path_pair_in_root() {
  local relative_path_var_name="${1:-}"
  local rooted_path_var_name="${2:-}"
  local root="${3:-}"
  local script_label="${SELF_HOST_COMMAND_LOG_SCRIPT_LABEL:-self-host-command-log-test-lib}"
  local relative_path=""
  local rooted_path=""

  self_host_command_log_assign_first_core_path_pair_in_root "${relative_path_var_name}" "${rooted_path_var_name}" "${root}" || return 1

  relative_path="${!relative_path_var_name}"
  rooted_path="${!rooted_path_var_name}"

  if [[ ! -f "${rooted_path}" ]]; then
    echo "[${script_label}] Expected first core-path pair assignment to resolve an existing wrapper-owned artifact for ${relative_path}." >&2
    return 1
  fi
}

self_host_command_log_assign_existing_first_core_path_pair_in_tmp_root() {
  local relative_path_var_name="${1:-}"
  local rooted_path_var_name="${2:-}"
  local tmp_root=""

  tmp_root="$(self_host_command_log_tmp_root)" || return 1
  self_host_command_log_assign_existing_first_core_path_pair_in_root "${relative_path_var_name}" "${rooted_path_var_name}" "${tmp_root}"
}

self_host_command_log_assert_seeded_source_repo_core_paths() {
  local source_root="${1:-}"
  local script_label="${SELF_HOST_COMMAND_LOG_SCRIPT_LABEL:-self-host-command-log-test-lib}"
  local relative_path=""
  local seeded_path=""
  local seeded_core_path_count=0

  if [[ -z "${source_root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty source root for seeded core-path validation." >&2
    return 1
  fi

  while IFS= read -r relative_path; do
    [[ -z "${relative_path}" ]] && continue
    seeded_core_path_count=$((seeded_core_path_count + 1))
    seeded_path="$(self_host_command_log_path_in_root "${source_root}" "${relative_path}")"

    if [[ ! -f "${seeded_path}" ]]; then
      echo "[${script_label}] Expected wrapper seeding helper to copy ${relative_path}." >&2
      return 1
    fi
  done < <(self_host_command_log_core_paths)

  if [[ "${seeded_core_path_count}" -eq 0 ]]; then
    echo "[${script_label}] Expected wrapper core-path helper to expose at least one seeded artifact path." >&2
    return 1
  fi
}

self_host_command_log_prepare_seeded_source_repo() {
  local script_label="${1:-}"
  local repo_root="${2:-}"
  local source_root="${3:-}"

  if [[ -z "${script_label}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty script label for seeded source-repo setup." >&2
    return 1
  fi

  if [[ -z "${repo_root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty repo root for seeded source-repo setup." >&2
    return 1
  fi

  if [[ -z "${source_root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty source root for seeded source-repo setup." >&2
    return 1
  fi

  self_host_command_log_seed_source_repo_with_empty_report_lists "${script_label}" "${repo_root}" "${source_root}"
  self_host_command_log_assert_seeded_source_repo_core_paths "${source_root}"
  self_host_command_log_assert_report_paths_empty_in_root "${source_root}"
}

self_host_command_log_prepare_seeded_source_repo_baseline() {
  local script_label="${1:-}"
  local repo_root="${2:-}"
  local source_root="${3:-}"
  local check_script="${4:-}"

  if [[ -z "${script_label}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty script label for seeded source-repo baseline setup." >&2
    return 1
  fi

  if [[ -z "${repo_root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty repo root for seeded source-repo baseline setup." >&2
    return 1
  fi

  if [[ -z "${source_root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty source root for seeded source-repo baseline setup." >&2
    return 1
  fi

  if [[ -z "${check_script}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty check script for seeded source-repo baseline setup." >&2
    return 1
  fi

  self_host_command_log_prepare_seeded_source_repo "${script_label}" "${repo_root}" "${source_root}"
  self_host_command_log_setup "${script_label}" "${source_root}" "${check_script}"
  self_host_command_log_reset_and_assert_baseline
  self_host_command_log_assert_report_paths_empty
}

self_host_command_log_relative_path() {
  printf '%s\n' "SELF_HOST_COMMAND_LOG.json"
}

self_host_command_log_report_relative_path() {
  printf '%s\n' "SELF_HOST_REPORT.json"
}

self_host_command_log_tmp_root() {
  if [[ -z "${SELF_HOST_COMMAND_LOG_TMP_REPO:-}" ]]; then
    echo "[self-host-command-log-test-lib] Expected command-log temp repo to be initialized." >&2
    return 1
  fi

  printf '%s\n' "${SELF_HOST_COMMAND_LOG_TMP_REPO}"
}

self_host_command_log_path_in_root() {
  local root="${1:-}"
  local relative_path="${2:-}"

  if [[ -z "${root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty root for command-log path resolution." >&2
    return 1
  fi

  if [[ -z "${relative_path}" ]]; then
    relative_path="$(self_host_command_log_relative_path)"
  fi

  if [[ -z "${relative_path}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty relative path for command-log path resolution." >&2
    return 1
  fi

  printf '%s/%s\n' "${root%/}" "${relative_path}"
}

self_host_command_log_report_path_in_root() {
  local root="${1:-}"

  if [[ -z "${root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty root for report-path resolution." >&2
    return 1
  fi

  self_host_command_log_path_in_root "${root}" "$(self_host_command_log_report_relative_path)"
}

self_host_command_log_tmp_path_for_relative_path() {
  local relative_path="${1:-}"
  local tmp_root=""

  if [[ -z "${relative_path}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty relative path for temp fixture resolution." >&2
    return 1
  fi

  self_host_command_log_assert_core_path_listed "${relative_path}" || return 1

  tmp_root="$(self_host_command_log_tmp_root)" || return 1
  self_host_command_log_path_in_root "${tmp_root}" "${relative_path}"
}

self_host_command_log_tmp_path() {
  self_host_command_log_tmp_path_for_relative_path "$(self_host_command_log_relative_path)"
}

self_host_command_log_stderr_log_path() {
  if [[ -z "${SELF_HOST_COMMAND_LOG_STDERR_LOG:-}" ]]; then
    echo "[self-host-command-log-test-lib] Expected command-log stderr log to be initialized." >&2
    return 1
  fi

  printf '%s\n' "${SELF_HOST_COMMAND_LOG_STDERR_LOG}"
}

self_host_command_log_python_cmd() {
  if [[ -z "${SELF_HOST_COMMAND_LOG_PYTHON_CMD:-}" ]]; then
    echo "[self-host-command-log-test-lib] Expected command-log python command to be initialized." >&2
    return 1
  fi

  printf '%s\n' "${SELF_HOST_COMMAND_LOG_PYTHON_CMD}"
}

self_host_command_log_mutate_json() {
  local command_log_path="${1:-}"
  local mutation_script=""
  local python_cmd=""

  if [[ -z "${command_log_path}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty command-log path for JSON mutation." >&2
    return 1
  fi

  mutation_script="$(cat)"
  if [[ -z "${mutation_script}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty command-log JSON mutation snippet on stdin." >&2
    return 1
  fi

  python_cmd="$(self_host_command_log_python_cmd)"
  SELF_HOST_COMMAND_LOG_MUTATION="${mutation_script}" "${python_cmd}" - "${command_log_path}" <<'PY'
import json
import os
import sys

path = sys.argv[1]
mutation = os.environ.get("SELF_HOST_COMMAND_LOG_MUTATION", "")
if not mutation:
    raise SystemExit("Expected a non-empty command-log JSON mutation snippet.")

with open(path, "r", encoding="utf-8") as handle:
    command_log = json.load(handle)

namespace = {"command_log": command_log}
exec(compile(mutation, "<self-host-command-log-mutation>", "exec"), namespace)

with open(path, "w", encoding="utf-8") as handle:
    json.dump(command_log, handle, indent=2)
    handle.write("\n")
PY
}

self_host_command_log_report_paths() {
  self_host_artifact_report_paths
}

self_host_command_log_assert_report_paths_empty_in_root() {
  local root="${1:-}"
  local script_label="${SELF_HOST_COMMAND_LOG_SCRIPT_LABEL:-self-host-command-log-test-lib}"
  local report_path=""
  local python_cmd=""

  if [[ -z "${root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty root for empty report-path validation." >&2
    return 1
  fi

  report_path="$(self_host_command_log_report_path_in_root "${root}")" || return 1

  if [[ ! -f "${report_path}" ]]; then
    echo "[${script_label}] Expected ${report_path} to exist for empty report-path validation." >&2
    return 1
  fi

  python_cmd="$(self_host_artifact_choose_python "${script_label}")" || return 1

  if [[ -n "$("${python_cmd}" - "${report_path}" <<'PY'
import json
import sys

with open(sys.argv[1], "r", encoding="utf-8") as handle:
    report = json.load(handle)

for key in ("new_files", "changed_files"):
    for path in report.get(key, []):
        if isinstance(path, str) and path:
            print(path)
PY
)" ]]; then
    echo "[${script_label}] Expected ${report_path} to expose no report-listed paths." >&2
    return 1
  fi
}

self_host_command_log_assert_report_paths_empty() {
  local repo_root="${SELF_HOST_COMMAND_LOG_REPO_ROOT:-}"

  if [[ -z "${repo_root}" ]]; then
    echo "[self-host-command-log-test-lib] Expected command-log repo root to be initialized for empty report-path validation." >&2
    return 1
  fi

  self_host_command_log_assert_report_paths_empty_in_root "${repo_root}"
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

self_host_command_log_reset_and_assert_baseline() {
  self_host_command_log_reset_fixtures
  self_host_command_log_assert_baseline_passes
}

self_host_command_log_reset_and_resolve_tmp_path() {
  self_host_command_log_reset_and_assert_baseline
  self_host_command_log_tmp_path
}

self_host_command_log_expect_reason_code_after_mutation() {
  local expected_reason_code="${1:-}"
  local failure_message="${2:-}"
  local command_log_path=""

  if [[ -z "${expected_reason_code}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty reason code for mutation-based failure assertions." >&2
    return 1
  fi

  if [[ -z "${failure_message}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty failure message for mutation-based reason-code assertions." >&2
    return 1
  fi

  command_log_path="$(self_host_command_log_reset_and_resolve_tmp_path)" || return 1
  self_host_command_log_mutate_json "${command_log_path}" || return 1
  self_host_command_log_expect_reason_code "${expected_reason_code}" "${failure_message}"
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

self_host_command_log_expect_stderr_contains() {
  local expected_substring="${1:-}"
  local failure_message="${2:-}"
  local exit_code=0
  local stderr_log_path=""

  if [[ -z "${expected_substring}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty stderr substring." >&2
    return 1
  fi

  if [[ -z "${failure_message}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty failure message for stderr assertions." >&2
    return 1
  fi

  stderr_log_path="$(self_host_command_log_stderr_log_path)"

  set +e
  self_host_command_log_run_check >/dev/null 2>"${stderr_log_path}"
  exit_code=$?
  set -e

  if [[ "${exit_code}" -eq 0 ]]; then
    echo "[${SELF_HOST_COMMAND_LOG_SCRIPT_LABEL}] ${failure_message}" >&2
    return 1
  fi

  if ! grep -Fq "${expected_substring}" "${stderr_log_path}"; then
    echo "[${SELF_HOST_COMMAND_LOG_SCRIPT_LABEL}] Unexpected stderr output while checking for ${expected_substring}:" >&2
    cat "${stderr_log_path}" >&2
    return 1
  fi
}

self_host_command_log_expect_failure_contains() {
  local expected_substring="${1:-}"
  local failure_message="${2:-}"
  local validation_output=""

  if [[ -z "${expected_substring}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty failure-output substring." >&2
    return 1
  fi

  if [[ -z "${failure_message}" ]]; then
    echo "[self-host-command-log-test-lib] Expected a non-empty failure message for wrapper helper failure assertions." >&2
    return 1
  fi

  shift 2

  if [[ "$#" -eq 0 ]]; then
    echo "[self-host-command-log-test-lib] Expected a wrapper helper command for failure-output assertions." >&2
    return 1
  fi

  if validation_output="$("$@" 2>&1)"; then
    echo "[${SELF_HOST_COMMAND_LOG_SCRIPT_LABEL}] ${failure_message}" >&2
    return 1
  fi

  if [[ "${validation_output}" != *"${expected_substring}"* ]]; then
    echo "[${SELF_HOST_COMMAND_LOG_SCRIPT_LABEL}] Unexpected failure output while checking for ${expected_substring}:" >&2
    printf '%s\n' "${validation_output}" >&2
    return 1
  fi
}
