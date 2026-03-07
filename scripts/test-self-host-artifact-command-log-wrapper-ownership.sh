#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
script_label="test-self-host-artifact-command-log-wrapper-ownership"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

artifact_helper_prefix='self_host'"_artifact_"
wrapper_helper_prefix="self_host_command_log_"
wrapper_lib_reference="self-host-command-log-test-lib.sh"
wrapper_core_paths_helper="self_host_command_log_core_paths"
wrapper_core_path_membership_helper="self_host_command_log_assert_core_path_listed"
wrapper_first_core_path_helper="self_host_command_log_first_core_path"
wrapper_seed_helper="self_host_command_log_seed_source_repo_with_empty_report_lists"
wrapper_seeded_core_paths_helper="self_host_command_log_assert_seeded_source_repo_core_paths"
wrapper_empty_report_paths_helper="self_host_command_log_assert_report_paths_empty"
wrapper_root_path_helper="self_host_command_log_path_in_root"
wrapper_tmp_path_helper="self_host_command_log_tmp_path_for_relative_path"
wrapper_stderr_contains_helper="self_host_command_log_expect_stderr_contains"
wrapper_python_cmd_helper="self_host_command_log_python_cmd"
wrapper_json_mutation_helper="self_host_command_log_mutate_json"
disallowed_state_prefix="SELF_HOST_COMMAND_LOG_"

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

  case "${script_name}" in
    test-self-host-artifact-command-log-first-command.sh|test-self-host-artifact-command-log-format.sh|test-self-host-artifact-command-log-gate.sh|test-self-host-artifact-command-log-reason-codes.sh)
      if ! grep -Fq "${wrapper_json_mutation_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_json_mutation_helper} so repeated command-log JSON mutations stay centralized." >&2
        exit 1
      fi

      if grep -Eq 'json\.load|json\.dump' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep command-log JSON load/write boilerplate inside ${wrapper_json_mutation_helper}." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-first-command.sh|test-self-host-artifact-command-log-format.sh)
      if ! grep -Fq "${wrapper_stderr_contains_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_stderr_contains_helper} so command-log stderr failure assertions stay centralized." >&2
        exit 1
      fi

      if grep -Eq '\bself_host_command_log_run_check\b|grep -[A-Za-z]*q .*stderr_log_path|cat \"?\$\{stderr_log_path\}\"?' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to keep stderr failure checks inside ${wrapper_stderr_contains_helper} instead of open-coding run-check and stderr-log inspection." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-path-helper.sh|test-self-host-artifact-command-log-source-repo-seeding.sh)
      if ! grep -Fq "${wrapper_root_path_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_root_path_helper} so root-relative wrapper-owned path joins stay centralized." >&2
        exit 1
      fi

      if grep -Eq '\$\{(source_repo|tmp_repo_root)\}/\$\{[^}]+\}' "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to resolve wrapper-owned root-relative paths through ${wrapper_root_path_helper} instead of open-coded root/path concatenation." >&2
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
      ;&
    test-self-host-artifact-command-log-shared-fixtures.sh)
      if ! grep -Fq "${wrapper_tmp_path_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_tmp_path_helper} so wrapper-owned temp fixture paths stay centralized." >&2
        exit 1
      fi
      ;;
  esac

  case "${script_name}" in
    test-self-host-artifact-command-log-source-repo-seeding.sh|test-self-host-artifact-command-log-shared-fixtures.sh)
      if ! grep -Fq "${wrapper_seed_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_seed_helper} so wrapper-owned source-repo seeding stays centralized." >&2
        exit 1
      fi

      if ! grep -Fq "${wrapper_seeded_core_paths_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_seeded_core_paths_helper} so seeded wrapper-owned core-path validation stays centralized." >&2
        exit 1
      fi

      if ! grep -Fq "${wrapper_first_core_path_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_first_core_path_helper} so wrapper-owned first-core-path selection stays centralized." >&2
        exit 1
      fi

      if grep -Fq "${wrapper_core_paths_helper} | head -n 1" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to resolve first core paths through ${wrapper_first_core_path_helper} instead of inline ${wrapper_core_paths_helper} pipelines." >&2
        exit 1
      fi

      if ! grep -Fq "${wrapper_empty_report_paths_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_empty_report_paths_helper} so empty wrapper report-list validation stays centralized." >&2
        exit 1
      fi
      ;;
  esac
done

if [[ "${validated_script_count}" -eq 0 ]]; then
  echo "[${script_label}] Expected to validate at least one command-log regression script." >&2
  exit 1
fi

echo "[${script_label}] PASS: command-log regression scripts stay on wrapper-owned helpers, keep temp-path/root-path/core-path/first-core-path/source-repo/python-command/json-mutation/stderr-assertion ownership centralized, and avoid direct wrapper state reads."
