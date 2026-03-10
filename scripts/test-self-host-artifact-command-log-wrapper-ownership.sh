#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
script_label="test-self-host-artifact-command-log-wrapper-ownership"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

artifact_helper_prefix='self_host'"_artifact_"
wrapper_helper_prefix="self_host_command_log_"
wrapper_lib_reference="self-host-command-log-test-lib.sh"
wrapper_lib_path="${repo_root}/scripts/${wrapper_lib_reference}"
wrapper_core_paths_helper="self_host_command_log_core_paths"
wrapper_core_path_membership_helper="self_host_command_log_assert_core_path_listed"
wrapper_first_core_path_helper="self_host_command_log_first_core_path"
wrapper_first_core_path_in_root_helper="self_host_command_log_first_core_path_in_root"
wrapper_first_core_path_pair_in_root_helper="self_host_command_log_first_core_path_pair_in_root"
wrapper_first_core_path_pair_in_tmp_root_helper="self_host_command_log_first_core_path_pair_in_tmp_root"
wrapper_assign_first_core_path_pair_in_root_helper="self_host_command_log_assign_first_core_path_pair_in_root"
wrapper_assign_first_core_path_pair_in_tmp_root_helper="self_host_command_log_assign_first_core_path_pair_in_tmp_root"
wrapper_assign_existing_first_core_path_pair_in_root_helper="self_host_command_log_assign_existing_first_core_path_pair_in_root"
wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper="self_host_command_log_assign_existing_first_core_path_pair_in_tmp_root"
wrapper_remove_existing_first_core_path_pair_in_root_helper="self_host_command_log_remove_existing_first_core_path_pair_in_root"
wrapper_remove_existing_first_core_path_pair_in_tmp_root_helper="self_host_command_log_remove_existing_first_core_path_pair_in_tmp_root"
wrapper_seed_helper="self_host_command_log_seed_source_repo_with_empty_report_lists"
wrapper_seeded_core_paths_helper="self_host_command_log_assert_seeded_source_repo_core_paths"
wrapper_prepare_seeded_source_repo_helper="self_host_command_log_prepare_seeded_source_repo"
wrapper_seeded_baseline_helper="self_host_command_log_prepare_seeded_source_repo_baseline"
wrapper_setup_helper="self_host_command_log_setup"
wrapper_report_paths_helper="self_host_command_log_report_paths"
wrapper_report_relative_path_helper="self_host_command_log_report_relative_path"
wrapper_report_path_in_root_helper="self_host_command_log_report_path_in_root"
wrapper_report_json_mutation_in_root_helper="self_host_command_log_mutate_report_json_in_root"
wrapper_empty_report_paths_in_root_helper="self_host_command_log_assert_report_paths_empty_in_root"
wrapper_empty_report_paths_helper="self_host_command_log_assert_report_paths_empty"
wrapper_tmp_root_helper="self_host_command_log_tmp_root"
wrapper_root_path_helper="self_host_command_log_path_in_root"
wrapper_tmp_path_helper="self_host_command_log_tmp_path_for_relative_path"
wrapper_command_log_tmp_path_helper="self_host_command_log_tmp_path"
wrapper_reset_baseline_helper="self_host_command_log_reset_and_assert_baseline"
wrapper_reset_tmp_path_helper="self_host_command_log_reset_and_resolve_tmp_path"
wrapper_reason_code_helper="self_host_command_log_expect_reason_code"
wrapper_reason_code_after_mutation_helper="self_host_command_log_expect_reason_code_after_mutation"
wrapper_stderr_contains_after_mutation_helper="self_host_command_log_expect_stderr_contains_after_mutation"
wrapper_status_and_index_reason_codes_helper="self_host_command_log_expect_status_and_index_reason_codes"
wrapper_stderr_contains_helper="self_host_command_log_expect_stderr_contains"
wrapper_failure_contains_helper="self_host_command_log_expect_failure_contains"
wrapper_python_cmd_helper="self_host_command_log_python_cmd"
wrapper_json_file_mutation_helper="self_host_command_log_mutate_json_file"
wrapper_json_mutation_helper="self_host_command_log_mutate_json"
disallowed_state_prefix="SELF_HOST_COMMAND_LOG_"

wrapper_helper_body() {
  local helper_name="${1:-}"

  if [[ -z "${helper_name}" ]]; then
    echo "[${script_label}] Expected a non-empty wrapper helper name while reading ${wrapper_lib_reference}." >&2
    exit 1
  fi

  sed -n "/^${helper_name}() {$/,/^}$/p" "${wrapper_lib_path}"
}

shopt -s nullglob
command_log_scripts=("${repo_root}"/scripts/test-self-host-artifact-command-log-*.sh)
shopt -u nullglob

if [[ "${#command_log_scripts[@]}" -eq 0 ]]; then
  echo "[${script_label}] Expected at least one command-log regression script to validate." >&2
  exit 1
fi

command_log_core_paths=()
while IFS= read -r relative_path; do
  [[ -z "${relative_path}" ]] && continue
  command_log_core_paths+=("${relative_path}")
done < <(self_host_command_log_core_paths)

if [[ "${#command_log_core_paths[@]}" -eq 0 ]]; then
  echo "[${script_label}] Expected wrapper core-path helper to expose at least one artifact path." >&2
  exit 1
fi

prepare_seeded_source_repo_body="$(wrapper_helper_body "${wrapper_prepare_seeded_source_repo_helper}")"
if [[ -z "${prepare_seeded_source_repo_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_prepare_seeded_source_repo_helper}." >&2
  exit 1
fi

if [[ "${prepare_seeded_source_repo_body}" != *"${wrapper_seed_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_prepare_seeded_source_repo_helper} to keep seeded source-repo bootstrap on ${wrapper_seed_helper} so empty report-list fixture seeding stays centralized." >&2
  exit 1
fi

if [[ "${prepare_seeded_source_repo_body}" != *"${wrapper_seeded_core_paths_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_prepare_seeded_source_repo_helper} to validate seeded core paths through ${wrapper_seeded_core_paths_helper} after bootstrap." >&2
  exit 1
fi

if [[ "${prepare_seeded_source_repo_body}" != *"${wrapper_empty_report_paths_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_prepare_seeded_source_repo_helper} to validate seeded empty report lists through ${wrapper_empty_report_paths_in_root_helper} so source-repo bootstrap keeps report-list cleanup centralized." >&2
  exit 1
fi

seeded_baseline_body="$(wrapper_helper_body "${wrapper_seeded_baseline_helper}")"
if [[ -z "${seeded_baseline_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_seeded_baseline_helper}." >&2
  exit 1
fi

if [[ "${seeded_baseline_body}" != *"${wrapper_prepare_seeded_source_repo_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_seeded_baseline_helper} to seed source repos through ${wrapper_prepare_seeded_source_repo_helper} so bootstrap stays centralized." >&2
  exit 1
fi

if [[ "${seeded_baseline_body}" != *"${wrapper_setup_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_seeded_baseline_helper} to initialize wrapper state through ${wrapper_setup_helper}." >&2
  exit 1
fi

if [[ "${seeded_baseline_body}" != *"${wrapper_reset_baseline_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_seeded_baseline_helper} to reset and validate the baseline through ${wrapper_reset_baseline_helper}." >&2
  exit 1
fi

if [[ "${seeded_baseline_body}" != *"${wrapper_empty_report_paths_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_seeded_baseline_helper} to keep empty report-list validation on ${wrapper_empty_report_paths_helper}." >&2
  exit 1
fi

empty_report_paths_in_root_body="$(wrapper_helper_body "${wrapper_empty_report_paths_in_root_helper}")"
if [[ -z "${empty_report_paths_in_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_empty_report_paths_in_root_helper}." >&2
  exit 1
fi

report_path_in_root_body="$(wrapper_helper_body "${wrapper_report_path_in_root_helper}")"
if [[ -z "${report_path_in_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_report_path_in_root_helper}." >&2
  exit 1
fi

if [[ "${report_path_in_root_body}" != *"${wrapper_root_path_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_report_path_in_root_helper} to resolve wrapper-owned report artifacts through ${wrapper_root_path_helper} so seeded root/report joins stay centralized." >&2
  exit 1
fi

if [[ "${report_path_in_root_body}" != *"${wrapper_report_relative_path_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_report_path_in_root_helper} to keep report relative-path resolution on ${wrapper_report_relative_path_helper} so report path names stay centralized." >&2
  exit 1
fi

if [[ "${empty_report_paths_in_root_body}" != *"${wrapper_report_path_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_empty_report_paths_in_root_helper} to resolve report artifacts through ${wrapper_report_path_in_root_helper} so seeded root/report joins stay centralized." >&2
  exit 1
fi

report_json_mutation_in_root_body="$(wrapper_helper_body "${wrapper_report_json_mutation_in_root_helper}")"
if [[ -z "${report_json_mutation_in_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_report_json_mutation_in_root_helper}." >&2
  exit 1
fi

if [[ "${report_json_mutation_in_root_body}" != *"${wrapper_report_path_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_report_json_mutation_in_root_helper} to resolve seeded report artifacts through ${wrapper_report_path_in_root_helper} so report-path joins stay centralized." >&2
  exit 1
fi

if [[ "${report_json_mutation_in_root_body}" != *"${wrapper_json_file_mutation_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_report_json_mutation_in_root_helper} to keep seeded report JSON mutation boilerplate on ${wrapper_json_file_mutation_helper}." >&2
  exit 1
fi

empty_report_paths_body="$(wrapper_helper_body "${wrapper_empty_report_paths_helper}")"
if [[ -z "${empty_report_paths_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_empty_report_paths_helper}." >&2
  exit 1
fi

if [[ "${empty_report_paths_body}" != *"${wrapper_empty_report_paths_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_empty_report_paths_helper} to delegate empty report-list validation through ${wrapper_empty_report_paths_in_root_helper} so root-scoped validation stays centralized." >&2
  exit 1
fi

seeded_core_paths_body="$(wrapper_helper_body "${wrapper_seeded_core_paths_helper}")"
if [[ -z "${seeded_core_paths_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_seeded_core_paths_helper}." >&2
  exit 1
fi

if [[ "${seeded_core_paths_body}" != *"${wrapper_core_paths_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_seeded_core_paths_helper} to enumerate wrapper-owned artifact paths through ${wrapper_core_paths_helper} so shared fixture additions stay centralized." >&2
  exit 1
fi

first_core_path_body="$(wrapper_helper_body "${wrapper_first_core_path_helper}")"
if [[ -z "${first_core_path_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_first_core_path_helper}." >&2
  exit 1
fi

if [[ "${first_core_path_body}" != *"${wrapper_core_paths_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_first_core_path_helper} to enumerate wrapper-owned artifact paths through ${wrapper_core_paths_helper} so future shared fixture additions stay centralized." >&2
  exit 1
fi

first_core_path_in_root_body="$(wrapper_helper_body "${wrapper_first_core_path_in_root_helper}")"
if [[ -z "${first_core_path_in_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_first_core_path_in_root_helper}." >&2
  exit 1
fi

if [[ "${first_core_path_in_root_body}" != *"${wrapper_first_core_path_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_first_core_path_in_root_helper} to select the wrapper-owned first core path through ${wrapper_first_core_path_helper}." >&2
  exit 1
fi

if [[ "${first_core_path_in_root_body}" != *"${wrapper_root_path_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_first_core_path_in_root_helper} to resolve first core paths through ${wrapper_root_path_helper} so root joins stay centralized." >&2
  exit 1
fi

first_core_path_pair_in_root_body="$(wrapper_helper_body "${wrapper_first_core_path_pair_in_root_helper}")"
if [[ -z "${first_core_path_pair_in_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_first_core_path_pair_in_root_helper}." >&2
  exit 1
fi

if [[ "${first_core_path_pair_in_root_body}" != *"${wrapper_first_core_path_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_first_core_path_pair_in_root_helper} to select the wrapper-owned first core path through ${wrapper_first_core_path_helper}." >&2
  exit 1
fi

if [[ "${first_core_path_pair_in_root_body}" != *"${wrapper_root_path_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_first_core_path_pair_in_root_helper} to resolve rooted first core paths through ${wrapper_root_path_helper} so relative/rooted path pairs stay centralized." >&2
  exit 1
fi

first_core_path_pair_in_tmp_root_body="$(wrapper_helper_body "${wrapper_first_core_path_pair_in_tmp_root_helper}")"
if [[ -z "${first_core_path_pair_in_tmp_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_first_core_path_pair_in_tmp_root_helper}." >&2
  exit 1
fi

if [[ "${first_core_path_pair_in_tmp_root_body}" != *"${wrapper_tmp_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_first_core_path_pair_in_tmp_root_helper} to resolve the wrapper-owned temp root through ${wrapper_tmp_root_helper} so temp state reads stay centralized." >&2
  exit 1
fi

if [[ "${first_core_path_pair_in_tmp_root_body}" != *"${wrapper_first_core_path_pair_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_first_core_path_pair_in_tmp_root_helper} to delegate relative/rooted first-core-path pairing through ${wrapper_first_core_path_pair_in_root_helper}." >&2
  exit 1
fi

assign_first_core_path_pair_in_root_body="$(wrapper_helper_body "${wrapper_assign_first_core_path_pair_in_root_helper}")"
if [[ -z "${assign_first_core_path_pair_in_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_assign_first_core_path_pair_in_root_helper}." >&2
  exit 1
fi

if [[ "${assign_first_core_path_pair_in_root_body}" != *"${wrapper_first_core_path_pair_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_assign_first_core_path_pair_in_root_helper} to keep first-core-path pair resolution on ${wrapper_first_core_path_pair_in_root_helper} so pair output shape stays centralized." >&2
  exit 1
fi

if [[ "${assign_first_core_path_pair_in_root_body}" != *"printf -v"* ]]; then
  echo "[${script_label}] Expected ${wrapper_assign_first_core_path_pair_in_root_helper} to assign resolved first-core-path pairs directly into caller variables." >&2
  exit 1
fi

assign_first_core_path_pair_in_tmp_root_body="$(wrapper_helper_body "${wrapper_assign_first_core_path_pair_in_tmp_root_helper}")"
if [[ -z "${assign_first_core_path_pair_in_tmp_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_assign_first_core_path_pair_in_tmp_root_helper}." >&2
  exit 1
fi

if [[ "${assign_first_core_path_pair_in_tmp_root_body}" != *"${wrapper_tmp_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_assign_first_core_path_pair_in_tmp_root_helper} to resolve the wrapper-owned temp root through ${wrapper_tmp_root_helper} so temp state reads stay centralized." >&2
  exit 1
fi

if [[ "${assign_first_core_path_pair_in_tmp_root_body}" != *"${wrapper_assign_first_core_path_pair_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_assign_first_core_path_pair_in_tmp_root_helper} to delegate first-core-path pair assignment through ${wrapper_assign_first_core_path_pair_in_root_helper}." >&2
  exit 1
fi

assign_existing_first_core_path_pair_in_root_body="$(wrapper_helper_body "${wrapper_assign_existing_first_core_path_pair_in_root_helper}")"
if [[ -z "${assign_existing_first_core_path_pair_in_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_assign_existing_first_core_path_pair_in_root_helper}." >&2
  exit 1
fi

if [[ "${assign_existing_first_core_path_pair_in_root_body}" != *"${wrapper_assign_first_core_path_pair_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_assign_existing_first_core_path_pair_in_root_helper} to keep first-core-path pair assignment on ${wrapper_assign_first_core_path_pair_in_root_helper} so pair output shape stays centralized." >&2
  exit 1
fi

if [[ "${assign_existing_first_core_path_pair_in_root_body}" != *"! -f"* ]]; then
  echo "[${script_label}] Expected ${wrapper_assign_existing_first_core_path_pair_in_root_helper} to verify the resolved rooted path exists so seeded first-core-path presence checks stay centralized." >&2
  exit 1
fi

assign_existing_first_core_path_pair_in_tmp_root_body="$(wrapper_helper_body "${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper}")"
if [[ -z "${assign_existing_first_core_path_pair_in_tmp_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper}." >&2
  exit 1
fi

if [[ "${assign_existing_first_core_path_pair_in_tmp_root_body}" != *"${wrapper_tmp_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper} to resolve the wrapper-owned temp root through ${wrapper_tmp_root_helper} so temp state reads stay centralized." >&2
  exit 1
fi

if [[ "${assign_existing_first_core_path_pair_in_tmp_root_body}" != *"${wrapper_assign_existing_first_core_path_pair_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper} to delegate seeded first-core-path existence validation through ${wrapper_assign_existing_first_core_path_pair_in_root_helper}." >&2
  exit 1
fi

remove_existing_first_core_path_pair_in_root_body="$(wrapper_helper_body "${wrapper_remove_existing_first_core_path_pair_in_root_helper}")"
if [[ -z "${remove_existing_first_core_path_pair_in_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_remove_existing_first_core_path_pair_in_root_helper}." >&2
  exit 1
fi

if [[ "${remove_existing_first_core_path_pair_in_root_body}" != *"${wrapper_assign_existing_first_core_path_pair_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_remove_existing_first_core_path_pair_in_root_helper} to resolve existing seeded first-core-path pairs through ${wrapper_assign_existing_first_core_path_pair_in_root_helper}." >&2
  exit 1
fi

if [[ "${remove_existing_first_core_path_pair_in_root_body}" != *"rm -f"* ]]; then
  echo "[${script_label}] Expected ${wrapper_remove_existing_first_core_path_pair_in_root_helper} to centralize seeded first-core-path removal on rm -f." >&2
  exit 1
fi

if [[ "${remove_existing_first_core_path_pair_in_root_body}" != *"[[ -e"* ]]; then
  echo "[${script_label}] Expected ${wrapper_remove_existing_first_core_path_pair_in_root_helper} to verify the resolved rooted path was removed." >&2
  exit 1
fi

remove_existing_first_core_path_pair_in_tmp_root_body="$(wrapper_helper_body "${wrapper_remove_existing_first_core_path_pair_in_tmp_root_helper}")"
if [[ -z "${remove_existing_first_core_path_pair_in_tmp_root_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_remove_existing_first_core_path_pair_in_tmp_root_helper}." >&2
  exit 1
fi

if [[ "${remove_existing_first_core_path_pair_in_tmp_root_body}" != *"${wrapper_tmp_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_remove_existing_first_core_path_pair_in_tmp_root_helper} to resolve the wrapper-owned temp root through ${wrapper_tmp_root_helper} so temp first-core-path removal stays centralized." >&2
  exit 1
fi

if [[ "${remove_existing_first_core_path_pair_in_tmp_root_body}" != *"${wrapper_remove_existing_first_core_path_pair_in_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_remove_existing_first_core_path_pair_in_tmp_root_helper} to delegate temp first-core-path removal through ${wrapper_remove_existing_first_core_path_pair_in_root_helper}." >&2
  exit 1
fi

reset_tmp_path_body="$(wrapper_helper_body "${wrapper_reset_tmp_path_helper}")"
if [[ -z "${reset_tmp_path_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_reset_tmp_path_helper}." >&2
  exit 1
fi

if [[ "${reset_tmp_path_body}" != *"${wrapper_reset_baseline_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_reset_tmp_path_helper} to keep baseline reset coverage on ${wrapper_reset_baseline_helper}." >&2
  exit 1
fi

if [[ "${reset_tmp_path_body}" != *"${wrapper_command_log_tmp_path_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_reset_tmp_path_helper} to resolve the temp command-log path through ${wrapper_command_log_tmp_path_helper}." >&2
  exit 1
fi

reason_code_after_mutation_body="$(wrapper_helper_body "${wrapper_reason_code_after_mutation_helper}")"
if [[ -z "${reason_code_after_mutation_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_reason_code_after_mutation_helper}." >&2
  exit 1
fi

if [[ "${reason_code_after_mutation_body}" != *"${wrapper_reset_tmp_path_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_reason_code_after_mutation_helper} to reset and resolve baseline temp command-log paths through ${wrapper_reset_tmp_path_helper}." >&2
  exit 1
fi

if [[ "${reason_code_after_mutation_body}" != *"${wrapper_json_mutation_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_reason_code_after_mutation_helper} to keep JSON mutation boilerplate on ${wrapper_json_mutation_helper}." >&2
  exit 1
fi

if [[ "${reason_code_after_mutation_body}" != *"${wrapper_reason_code_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_reason_code_after_mutation_helper} to keep reason-code assertions on ${wrapper_reason_code_helper}." >&2
  exit 1
fi

stderr_contains_after_mutation_body="$(wrapper_helper_body "${wrapper_stderr_contains_after_mutation_helper}")"
if [[ -z "${stderr_contains_after_mutation_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_stderr_contains_after_mutation_helper}." >&2
  exit 1
fi

if [[ "${stderr_contains_after_mutation_body}" != *"${wrapper_reset_tmp_path_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_stderr_contains_after_mutation_helper} to reset and resolve baseline temp command-log paths through ${wrapper_reset_tmp_path_helper}." >&2
  exit 1
fi

if [[ "${stderr_contains_after_mutation_body}" != *"${wrapper_json_mutation_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_stderr_contains_after_mutation_helper} to keep JSON mutation boilerplate on ${wrapper_json_mutation_helper}." >&2
  exit 1
fi

if [[ "${stderr_contains_after_mutation_body}" != *"${wrapper_stderr_contains_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_stderr_contains_after_mutation_helper} to keep stderr assertions on ${wrapper_stderr_contains_helper}." >&2
  exit 1
fi

status_and_index_reason_codes_body="$(wrapper_helper_body "${wrapper_status_and_index_reason_codes_helper}")"
if [[ -z "${status_and_index_reason_codes_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_status_and_index_reason_codes_helper}." >&2
  exit 1
fi

if [[ "${status_and_index_reason_codes_body}" != *"${wrapper_reason_code_after_mutation_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_status_and_index_reason_codes_helper} to keep common reason-code mutation coverage on ${wrapper_reason_code_after_mutation_helper} so reset-plus-mutate-plus-reason-code assertions stay centralized." >&2
  exit 1
fi

if [[ "${status_and_index_reason_codes_body}" != *"COMMAND_LOG_STATUS_MISMATCH"* ]]; then
  echo "[${script_label}] Expected ${wrapper_status_and_index_reason_codes_helper} to cover COMMAND_LOG_STATUS_MISMATCH so common status drift stays centralized." >&2
  exit 1
fi

if [[ "${status_and_index_reason_codes_body}" != *"COMMAND_LOG_INDEX_INVALID"* ]]; then
  echo "[${script_label}] Expected ${wrapper_status_and_index_reason_codes_helper} to cover COMMAND_LOG_INDEX_INVALID so common index drift stays centralized." >&2
  exit 1
fi

json_mutation_body="$(wrapper_helper_body "${wrapper_json_mutation_helper}")"
if [[ -z "${json_mutation_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_json_mutation_helper}." >&2
  exit 1
fi

if [[ "${json_mutation_body}" != *"${wrapper_python_cmd_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_json_mutation_helper} to resolve the initialized wrapper python command through ${wrapper_python_cmd_helper}." >&2
  exit 1
fi

if [[ "${json_mutation_body}" != *"${wrapper_json_file_mutation_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_json_mutation_helper} to keep command-log JSON mutation boilerplate on ${wrapper_json_file_mutation_helper}." >&2
  exit 1
fi

tmp_path_body="$(wrapper_helper_body "${wrapper_tmp_path_helper}")"
if [[ -z "${tmp_path_body}" ]]; then
  echo "[${script_label}] Expected ${wrapper_lib_reference} to define ${wrapper_tmp_path_helper}." >&2
  exit 1
fi

if [[ "${tmp_path_body}" != *"${wrapper_core_path_membership_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_tmp_path_helper} to validate wrapper-owned core-path membership through ${wrapper_core_path_membership_helper} so temp-path resolution stays centralized on the shared core-path list." >&2
  exit 1
fi

if [[ "${tmp_path_body}" != *"${wrapper_tmp_root_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_tmp_path_helper} to resolve the wrapper-owned temp root through ${wrapper_tmp_root_helper} so temp state reads stay centralized." >&2
  exit 1
fi

if [[ "${tmp_path_body}" != *"${wrapper_root_path_helper}"* ]]; then
  echo "[${script_label}] Expected ${wrapper_tmp_path_helper} to resolve temp fixture paths through ${wrapper_root_path_helper} so root joins stay centralized." >&2
  exit 1
fi

validated_script_count=0

for script_path in "${command_log_scripts[@]}"; do
  if [[ ! -f "${script_path}" ]]; then
    continue
  fi

  validated_script_count=$((validated_script_count + 1))
  script_name="$(basename "${script_path}")"

  if ! grep -Fq "${wrapper_lib_reference}" "${script_path}"; then
    echo "[${script_label}] Expected ${script_name} to source ${wrapper_lib_reference}." >&2
    exit 1
  fi

  if ! grep -Fq "${wrapper_helper_prefix}" "${script_path}"; then
    echo "[${script_label}] Expected ${script_name} to call a ${wrapper_helper_prefix} helper." >&2
    exit 1
  fi

  if grep -Fq "${artifact_helper_prefix}" "${script_path}"; then
    echo "[${script_label}] Expected ${script_name} to stay on wrapper-owned helpers instead of ${artifact_helper_prefix} calls." >&2
    exit 1
  fi

  if grep -Eq '\bSELF_HOST_COMMAND_LOG_(TMP_REPO|STDERR_LOG|PYTHON_CMD)\b' "${script_path}"; then
    echo "[${script_label}] Expected ${script_name} to resolve wrapper-owned temp, stderr, and python-command state through ${wrapper_helper_prefix}helpers instead of ${disallowed_state_prefix} variables." >&2
    exit 1
  fi

  for core_path in "${command_log_core_paths[@]}"; do
    if grep -Fq "${core_path}" "${script_path}"; then
      echo "[${script_label}] Expected ${script_name} to resolve wrapper-owned core artifact paths through ${wrapper_core_paths_helper} instead of hardcoding ${core_path}." >&2
      exit 1
    fi
  done

  if grep -Eq '\bself_host_command_log_core_paths\b[[:space:]]*\|[[:space:]]*grep -[A-Za-z]*q' "${script_path}"; then
    echo "[${script_label}] Expected ${script_name} to keep wrapper-owned core-path membership assertions inside ${wrapper_core_path_membership_helper} instead of inline ${wrapper_core_paths_helper} grep pipelines." >&2
    exit 1
  fi

  if awk '
    /self_host_command_log_reset_fixtures/ { saw_reset=1; next }
    saw_reset && /^[[:space:]]*$/ { next }
    saw_reset && /self_host_command_log_assert_baseline_passes/ { exit 0 }
    saw_reset { saw_reset=0 }
    END { exit 1 }
  ' "${script_path}"; then
    echo "[${script_label}] Expected ${script_name} to keep reset-plus-baseline coverage inside ${wrapper_reset_baseline_helper} instead of open-coding sequential reset and baseline calls." >&2
    exit 1
  fi

  case "${script_name}" in
    test-self-host-artifact-command-log-first-command.sh|test-self-host-artifact-command-log-format.sh)
      if ! grep -Fq "${wrapper_stderr_contains_after_mutation_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_stderr_contains_after_mutation_helper} so deterministic reset-plus-mutate-plus-stderr coverage stays centralized." >&2
        exit 1
      fi

      if grep -Eq "\\b${wrapper_reset_tmp_path_helper}\\b|\\b${wrapper_json_mutation_helper}\\b|\\b${wrapper_stderr_contains_helper}\\b" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep reset-plus-mutate-plus-stderr coverage inside ${wrapper_stderr_contains_after_mutation_helper} instead of open-coding the sequence." >&2
        exit 1
      fi

      if grep -Eq 'json\.load|json\.dump' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep command-log JSON load/write boilerplate inside ${wrapper_json_mutation_helper}." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-gate.sh|test-self-host-artifact-command-log-reason-codes.sh)
      if ! grep -Fq "${wrapper_status_and_index_reason_codes_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_status_and_index_reason_codes_helper} so common status/index reason-code coverage stays centralized." >&2
        exit 1
      fi

      if grep -Eq 'COMMAND_LOG_STATUS_MISMATCH|COMMAND_LOG_INDEX_INVALID' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep common status/index reason-code literals inside ${wrapper_status_and_index_reason_codes_helper} instead of repeating them inline." >&2
        exit 1
      fi

      if grep -Eq "\\b${wrapper_reset_tmp_path_helper}\\b|\\b${wrapper_json_mutation_helper}\\b|\\b${wrapper_reason_code_helper}\\b" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep reset-plus-mutate-plus-reason-code assertions inside ${wrapper_reason_code_after_mutation_helper} instead of open-coding the sequence." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-reason-codes.sh)
      if grep -Fq "${wrapper_reason_code_after_mutation_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep common mutation-based reason-code assertions inside ${wrapper_status_and_index_reason_codes_helper} instead of direct ${wrapper_reason_code_after_mutation_helper} calls." >&2
        exit 1
      fi
      ;;
    test-self-host-artifact-command-log-gate.sh)
      if ! grep -Fq "${wrapper_reason_code_after_mutation_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep first-command order drift coverage on ${wrapper_reason_code_after_mutation_helper}." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-first-command.sh|test-self-host-artifact-command-log-format.sh)
      if grep -Eq '\bself_host_command_log_run_check\b|grep -[A-Za-z]*q .*stderr_log_path|cat \"?\$\{stderr_log_path\}\"?' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep stderr failure checks inside ${wrapper_stderr_contains_helper} instead of open-coding run-check and stderr-log inspection." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-path-helper.sh)
      if ! grep -Fq "${wrapper_reset_baseline_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_reset_baseline_helper} so reset-plus-baseline coverage stays centralized." >&2
        exit 1
      fi
      ;&
    test-self-host-artifact-command-log-source-repo-seeding.sh)
      if ! grep -Fq "${wrapper_failure_contains_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_failure_contains_helper} so wrapper-helper failure-output assertions stay centralized." >&2
        exit 1
      fi

      if grep -Eq 'validation_output=.*\bself_host_command_log_assert_' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep wrapper-helper failure-output capture inside ${wrapper_failure_contains_helper} instead of open-coding validation_output wrappers." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-path-helper.sh)
      if ! grep -Fq "${wrapper_root_path_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_root_path_helper} so direct root-relative wrapper-owned path joins stay centralized." >&2
        exit 1
      fi

      if grep -Eq '\$\{(source_repo|tmp_repo_root)\}/\$\{[^}]+\}' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to resolve wrapper-owned root-relative paths through ${wrapper_root_path_helper} instead of open-coded root/path concatenation." >&2
        exit 1
      fi
      ;;
    test-self-host-artifact-command-log-source-repo-seeding.sh|test-self-host-artifact-command-log-shared-fixtures.sh)
      if grep -Eq '\$\{(source_repo|tmp_repo_root)\}/\$\{[^}]+\}' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to avoid open-coded root/path concatenation for wrapper-owned paths." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-path-helper.sh)
      if ! grep -Fq "${wrapper_first_core_path_in_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_first_core_path_in_root_helper} so first-core-path root joins stay centralized." >&2
        exit 1
      fi

      if grep -Eq "\\b${wrapper_root_path_helper}\\b .*\\b${wrapper_first_core_path_helper}\\b|\\b${wrapper_first_core_path_helper}\\b.*\\b${wrapper_root_path_helper}\\b" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to resolve first core paths through ${wrapper_first_core_path_in_root_helper} instead of composing ${wrapper_first_core_path_helper} with ${wrapper_root_path_helper} inline." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-source-repo-seeding.sh)
      if ! grep -Fq "${wrapper_remove_existing_first_core_path_pair_in_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_remove_existing_first_core_path_pair_in_root_helper} so seeded first-core-path removal stays centralized." >&2
        exit 1
      fi

      if ! grep -Fq "${wrapper_empty_report_paths_in_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_empty_report_paths_in_root_helper} so deterministic negative seeded report-list coverage stays centralized on the root-scoped wrapper helper." >&2
        exit 1
      fi

      if ! grep -Fq "${wrapper_report_json_mutation_in_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to mutate seeded report JSON through ${wrapper_report_json_mutation_in_root_helper} so report-path resolution and JSON mutation boilerplate stay centralized." >&2
        exit 1
      fi

      if grep -Fq 'mapfile -t first_core_pair' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep first-core-path pair unpacking inside ${wrapper_assign_first_core_path_pair_in_root_helper} instead of open-coded mapfile arrays." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_first_core_path_pair_in_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep direct seeded first-core-path pair reads inside ${wrapper_assign_first_core_path_pair_in_root_helper}." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_assign_first_core_path_pair_in_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep seeded first-core-path pair existence checks inside ${wrapper_assign_existing_first_core_path_pair_in_root_helper} instead of direct ${wrapper_assign_first_core_path_pair_in_root_helper} calls." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_assign_existing_first_core_path_pair_in_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep seeded first-core-path existence plus removal checks inside ${wrapper_remove_existing_first_core_path_pair_in_root_helper} instead of direct ${wrapper_assign_existing_first_core_path_pair_in_root_helper} calls." >&2
        exit 1
      fi

      if grep -Eq "\\b${wrapper_first_core_path_helper}\\b|\\b${wrapper_first_core_path_in_root_helper}\\b" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to resolve seeded first core-path pairs through ${wrapper_assign_first_core_path_pair_in_root_helper} instead of separate ${wrapper_first_core_path_helper} and ${wrapper_first_core_path_in_root_helper} calls." >&2
        exit 1
      fi

      if grep -Eq "\\b${wrapper_report_path_in_root_helper}\\b" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep seeded report-path joins inside ${wrapper_report_json_mutation_in_root_helper} and ${wrapper_empty_report_paths_in_root_helper} instead of direct ${wrapper_report_path_in_root_helper} calls." >&2
        exit 1
      fi

      if grep -Eq 'python3 - |json\.load|json\.dump' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep seeded report JSON mutation boilerplate inside ${wrapper_report_json_mutation_in_root_helper}." >&2
        exit 1
      fi

      if grep -Eq '\brm -f( --)?\b' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep seeded first-core-path removal inside ${wrapper_remove_existing_first_core_path_pair_in_root_helper} instead of open-coded rm -f calls." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-path-helper.sh|test-self-host-artifact-command-log-shared-fixtures.sh)
      if grep -Eq "\\b${wrapper_first_core_path_pair_in_root_helper}\\b.*\\b${wrapper_tmp_root_helper}\\b|\\b${wrapper_tmp_root_helper}\\b.*\\b${wrapper_first_core_path_pair_in_root_helper}\\b" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to resolve temp-root first core-path pairs through ${wrapper_first_core_path_pair_in_tmp_root_helper} instead of composing ${wrapper_first_core_path_pair_in_root_helper} with ${wrapper_tmp_root_helper} inline." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-path-helper.sh)
      if ! grep -Fq "${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper} so restored temp-root first-core-path existence validation stays centralized." >&2
        exit 1
      fi

      if grep -Fq 'mapfile -t first_core_pair' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep temp-root first-core-path pair unpacking inside ${wrapper_assign_first_core_path_pair_in_tmp_root_helper} instead of open-coded mapfile arrays." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_first_core_path_pair_in_tmp_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep direct temp-root first-core-path pair reads inside ${wrapper_assign_first_core_path_pair_in_tmp_root_helper}." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_assign_first_core_path_pair_in_tmp_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep restored temp-root first-core-path existence checks inside ${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper} instead of direct ${wrapper_assign_first_core_path_pair_in_tmp_root_helper} calls." >&2
        exit 1
      fi

      if grep -Fq '[[ ! -f "${first_core_path}" ]]' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep restored first-core-path existence checks inside ${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper} instead of open-coded file checks." >&2
        exit 1
      fi
      ;;
    test-self-host-artifact-command-log-shared-fixtures.sh)
      if ! grep -Fq "${wrapper_remove_existing_first_core_path_pair_in_tmp_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_remove_existing_first_core_path_pair_in_tmp_root_helper} so restored first-core-path removal stays centralized." >&2
        exit 1
      fi

      if ! grep -Fq "${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper} so restored first-core-path existence validation after reset stays centralized." >&2
        exit 1
      fi

      if grep -Fq 'mapfile -t first_core_pair' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep temp-root first-core-path pair unpacking inside ${wrapper_assign_first_core_path_pair_in_tmp_root_helper} instead of open-coded mapfile arrays." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_first_core_path_pair_in_tmp_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep direct temp-root first-core-path pair reads inside ${wrapper_assign_first_core_path_pair_in_tmp_root_helper}." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_assign_first_core_path_pair_in_tmp_root_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep restored first-core-path existence checks inside ${wrapper_assign_existing_first_core_path_pair_in_tmp_root_helper} instead of direct ${wrapper_assign_first_core_path_pair_in_tmp_root_helper} calls." >&2
        exit 1
      fi

      if grep -Eq '\brm -f( --)?\b' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep restored first-core-path removal inside ${wrapper_remove_existing_first_core_path_pair_in_tmp_root_helper} instead of open-coded rm -f calls." >&2
        exit 1
      fi

      if grep -Fq '[[ -e "${restored_path}" ]]' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep restored first-core-path removal verification inside ${wrapper_remove_existing_first_core_path_pair_in_tmp_root_helper} instead of open-coded file checks." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-path-helper.sh)
      if ! grep -Fq "${wrapper_core_path_membership_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_core_path_membership_helper} so wrapper-owned core-path membership assertions stay centralized." >&2
        exit 1
      fi

      if ! grep -Fq "${wrapper_tmp_path_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_tmp_path_helper} so wrapper-owned temp fixture paths stay centralized." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-source-repo-seeding.sh|test-self-host-artifact-command-log-shared-fixtures.sh)
      if ! grep -Fq "${wrapper_seeded_baseline_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_seeded_baseline_helper} so seeded source-repo baseline setup stays centralized." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_core_paths_helper} | head -n 1" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to resolve seeded first core-path pairs through ${wrapper_first_core_path_pair_in_root_helper} instead of inline ${wrapper_core_paths_helper} pipelines." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_report_paths_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep direct ${wrapper_report_paths_helper} reads inside ${wrapper_empty_report_paths_helper} so wrapper-owned empty report-list validation stays centralized." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_setup_helper} \"\${script_label}\" \"\${source_repo}\" \"\${check_script}\"" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep seeded source-repo setup inside ${wrapper_seeded_baseline_helper} instead of direct ${wrapper_setup_helper} calls." >&2
        exit 1
      fi

      if grep -Eq "\\b${wrapper_empty_report_paths_helper}\\b" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep empty report-list validation inside ${wrapper_seeded_baseline_helper}." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-shared-fixtures.sh)
      if grep -Eq "\\b${wrapper_prepare_seeded_source_repo_helper}\\b" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep direct seeded source-repo bootstrap inside ${wrapper_seeded_baseline_helper}." >&2
        exit 1
      fi
      ;;
    test-self-host-artifact-command-log-source-repo-seeding.sh)
      if ! grep -Eq "\\b${wrapper_prepare_seeded_source_repo_helper}\\b" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_prepare_seeded_source_repo_helper} for deterministic negative seeded-core-path coverage before the centralized baseline helper runs." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_seed_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep direct ${wrapper_seed_helper} bootstrap inside ${wrapper_prepare_seeded_source_repo_helper}." >&2
        exit 1
      fi

      if ! grep -Fq "${wrapper_seeded_core_paths_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep deterministic seeded core-path negative coverage on ${wrapper_seeded_core_paths_helper}." >&2
        exit 1
      fi
      ;;
  esac
done

if [[ "${validated_script_count}" -eq 0 ]]; then
  echo "[${script_label}] Expected to validate at least one command-log regression script." >&2
  exit 1
fi

echo "[${script_label}] PASS: command-log regression scripts stay on wrapper-owned helpers, keep baseline-reset temp-path/root-path/core-path/first-core-path pair/first-core-path pair assignment/first-core-path removal/temp-root pair/seeded-source-repo/seeded-baseline/report-json-mutation/python-command/json-mutation/mutation-based reason-code/failure-output/stderr-assertion ownership centralized, and avoid direct wrapper state reads."
