#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
script_label="test-self-host-artifact-command-log-wrapper-ownership"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

artifact_helper_prefix='self_host'"_artifact_"
wrapper_helper_prefix="self_host_command_log_"
wrapper_lib_reference="self-host-command-log-test-lib.sh"
wrapper_core_paths_helper="self_host_command_log_core_paths"
wrapper_seed_helper="self_host_command_log_seed_source_repo_with_empty_report_lists"

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

  for core_path in "${command_log_core_paths[@]}"; do
    if grep -Fq "${core_path}" "${script_path}"; then
      echo "[${script_label}] Expected ${script_name} to resolve wrapper-owned core artifact paths through ${wrapper_core_paths_helper} instead of hardcoding ${core_path}." >&2
      exit 1
    fi
  done

  case "${script_name}" in
    test-self-host-artifact-command-log-source-repo-seeding.sh|test-self-host-artifact-command-log-shared-fixtures.sh)
      if ! grep -Fq "${wrapper_seed_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_seed_helper} so wrapper-owned source-repo seeding stays centralized." >&2
        exit 1
      fi

      if ! grep -Fq "${wrapper_core_paths_helper}" "${script_path}"; then
        echo "[${script_label}] Expected ${script_name} to use ${wrapper_core_paths_helper} so wrapper-owned core artifact paths stay centralized." >&2
        exit 1
      fi
      ;;
  esac
done

if [[ "${validated_script_count}" -eq 0 ]]; then
  echo "[${script_label}] Expected to validate at least one command-log regression script." >&2
  exit 1
fi

echo "[${script_label}] PASS: command-log regression scripts stay on wrapper-owned helpers, keep core-path/source-repo ownership centralized, and avoid hardcoded artifact paths."
