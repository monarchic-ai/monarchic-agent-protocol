#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
scripts_dir="${repo_root}/scripts"
smoke_script="${scripts_dir}/test-self-host-artifact-smoke.sh"
test_name="test-self-host-smoke-wrapper"

if [[ ! -x "${smoke_script}" ]]; then
  echo "[${test_name}] Missing executable: ${smoke_script}" >&2
  exit 1
fi

mapfile -t expected_regression_scripts < <(
  find "${scripts_dir}" -maxdepth 1 -type f -name 'test-self-host-artifact-*.sh' \
    ! -name "$(basename "${smoke_script}")" | LC_ALL=C sort
)

if [[ "${#expected_regression_scripts[@]}" -eq 0 ]]; then
  echo "[${test_name}] Expected at least one regression script in ${scripts_dir}." >&2
  exit 1
fi

dry_run_output="$(
  SELF_HOST_SMOKE_DRY_RUN=1 bash "${smoke_script}"
)"

mapfile -t discovered_commands < <(
  printf '%s\n' "${dry_run_output}" | sed -n 's/^DRY RUN: //p'
)

expected_command_count=$((1 + ${#expected_regression_scripts[@]}))
if [[ "${#discovered_commands[@]}" -ne "${expected_command_count}" ]]; then
  echo "[${test_name}] Dry-run command count mismatch: expected ${expected_command_count}, found ${#discovered_commands[@]}." >&2
  printf '%s\n' "${dry_run_output}" >&2
  exit 1
fi

expected_commands=("bash scripts/test-self-host-artifacts.sh")
for script_path in "${expected_regression_scripts[@]}"; do
  expected_commands+=("bash ${script_path#${repo_root}/}")
done

for index in "${!expected_commands[@]}"; do
  if [[ "${discovered_commands[index]}" != "${expected_commands[index]}" ]]; then
    echo "[${test_name}] Dry-run command mismatch at index ${index}:" >&2
    echo "[${test_name}] expected: ${expected_commands[index]}" >&2
    echo "[${test_name}] found:    ${discovered_commands[index]}" >&2
    exit 1
  fi
done

echo "[${test_name}] PASS: smoke wrapper command discovery is deterministic."
