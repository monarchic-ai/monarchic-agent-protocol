#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
scripts_dir="${repo_root}/scripts"
test_name="test-self-host-artifact-smoke"
main_check_script="${scripts_dir}/test-self-host-artifacts.sh"
smoke_script_name="$(basename "${BASH_SOURCE[0]}")"

if [[ ! -x "${main_check_script}" ]]; then
  echo "[${test_name}] Missing executable: ${main_check_script}" >&2
  exit 1
fi

mapfile -t regression_scripts < <(
  find "${scripts_dir}" -maxdepth 1 -type f -name 'test-self-host-artifact-*.sh' \
    ! -name "${smoke_script_name}" | LC_ALL=C sort
)

if [[ "${#regression_scripts[@]}" -eq 0 ]]; then
  echo "[${test_name}] No self-host artifact regression scripts found." >&2
  exit 1
fi

commands=("${main_check_script}")
for script_path in "${regression_scripts[@]}"; do
  commands+=("${script_path}")
done

if [[ "${SELF_HOST_SMOKE_DRY_RUN:-0}" == "1" ]]; then
  for command in "${commands[@]}"; do
    echo "DRY RUN: bash ${command#${repo_root}/}"
  done
  exit 0
fi

for command in "${commands[@]}"; do
  echo "[${test_name}] Running bash ${command#${repo_root}/}"
  bash "${command}"
done

echo "[${test_name}] PASS: self-host artifact smoke suite completed."
