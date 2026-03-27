#!/usr/bin/env bash

project_state_artifact_choose_python() {
  local script_label="$1"

  if command -v python >/dev/null 2>&1; then
    printf '%s\n' "python"
    return 0
  fi

  if command -v python3 >/dev/null 2>&1; then
    printf '%s\n' "python3"
    return 0
  fi

  echo "[${script_label}] python or python3 is required" >&2
  return 1
}

project_state_artifact_setup() {
  local script_label="$1"
  local repo_root="$2"
  local check_script="$3"

  if [[ ! -x "${check_script}" ]]; then
    echo "[${script_label}] Missing executable: ${check_script}" >&2
    return 1
  fi

  PROJECT_STATE_ARTIFACT_SCRIPT_LABEL="${script_label}"
  PROJECT_STATE_ARTIFACT_SOURCE_ROOT="${repo_root}"
  PROJECT_STATE_ARTIFACT_REPO_ROOT="$(project_state_artifact_fixture_root "${repo_root}")"
  PROJECT_STATE_ARTIFACT_CHECK_SCRIPT="${check_script}"
  PROJECT_STATE_ARTIFACT_PYTHON_CMD="$(project_state_artifact_choose_python "${script_label}")"
  PROJECT_STATE_ARTIFACT_TMP_REPO="$(mktemp -d)"
  PROJECT_STATE_ARTIFACT_STDERR_LOG="$(mktemp)"

  mkdir -p "${PROJECT_STATE_ARTIFACT_TMP_REPO}/scripts"
  cp "${PROJECT_STATE_ARTIFACT_CHECK_SCRIPT}" "${PROJECT_STATE_ARTIFACT_TMP_REPO}/scripts/test-project-state-artifacts.sh"
  chmod +x "${PROJECT_STATE_ARTIFACT_TMP_REPO}/scripts/test-project-state-artifacts.sh"
}

project_state_artifact_fixture_root() {
  local repo_root="$1"
  local fixture_root="${repo_root}/fixtures/project-state"
  if [[ -d "${fixture_root}" ]]; then
    printf '%s\n' "${fixture_root}"
    return 0
  fi
  printf '%s\n' "${repo_root}"
}

project_state_artifact_cleanup() {
  if [[ -n "${PROJECT_STATE_ARTIFACT_TMP_REPO:-}" ]]; then
    rm -rf "${PROJECT_STATE_ARTIFACT_TMP_REPO}"
  fi

  if [[ -n "${PROJECT_STATE_ARTIFACT_STDERR_LOG:-}" ]]; then
    rm -f "${PROJECT_STATE_ARTIFACT_STDERR_LOG}"
  fi
}

project_state_artifact_core_paths() {
  printf '%s\n' \
    "PROJECT_MILESTONES.json" \
    "PROJECT_STATUS.json" \
    "PROJECT_SUMMARY.json" \
    "PROJECT_ACTIVITY_LOG.json" \
    "PROJECT_PROOF.json" \
    "PROJECT_COMMAND_LOG.json"
}

project_state_artifact_seed_source_repo_with_empty_report_lists() {
  local script_label="$1"
  local source_root="$2"
  local destination_root="$3"
  local python_cmd=""
  local relative_path=""

  python_cmd="$(project_state_artifact_choose_python "${script_label}")"
  source_root="$(project_state_artifact_fixture_root "${source_root}")"
  mkdir -p "${destination_root}"

  while IFS= read -r relative_path; do
    [[ -z "${relative_path}" ]] && continue

    if [[ ! -f "${source_root}/${relative_path}" ]]; then
      echo "[${script_label}] Missing source fixture path: ${source_root}/${relative_path}" >&2
      return 1
    fi

    mkdir -p "$(dirname "${destination_root}/${relative_path}")"
    cp "${source_root}/${relative_path}" "${destination_root}/${relative_path}"
  done < <(project_state_artifact_core_paths)

  "${python_cmd}" - "${destination_root}/PROJECT_STATUS.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    report = json.load(handle)

report["new_files"] = []
report["changed_files"] = []

with open(path, "w", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2)
    handle.write("\n")
PY
}

project_state_artifact_report_paths() {
  "${PROJECT_STATE_ARTIFACT_PYTHON_CMD}" - "${PROJECT_STATE_ARTIFACT_REPO_ROOT}/PROJECT_STATUS.json" <<'PY'
import json
import sys

with open(sys.argv[1], "r", encoding="utf-8") as handle:
    report = json.load(handle)

for key in ("new_files", "changed_files"):
    for path in report.get(key, []):
        if isinstance(path, str) and path:
            print(path)
PY
}

project_state_artifact_fixture_paths() {
  project_state_artifact_core_paths
  project_state_artifact_report_paths
}

project_state_artifact_copy_relative_path() {
  local relative_path="$1"
  local source_path="${PROJECT_STATE_ARTIFACT_REPO_ROOT}/${relative_path}"

  if [[ ! -f "${source_path}" ]] && [[ -n "${PROJECT_STATE_ARTIFACT_SOURCE_ROOT:-}" ]]; then
    source_path="${PROJECT_STATE_ARTIFACT_SOURCE_ROOT}/${relative_path}"
  fi

  if [[ ! -f "${source_path}" ]]; then
    return 0
  fi

  mkdir -p "$(dirname "${PROJECT_STATE_ARTIFACT_TMP_REPO}/${relative_path}")"
  cp "${source_path}" "${PROJECT_STATE_ARTIFACT_TMP_REPO}/${relative_path}"
}

project_state_artifact_reset_fixtures() {
  local relative_path=""

  while IFS= read -r relative_path; do
    [[ -z "${relative_path}" ]] && continue
    project_state_artifact_copy_relative_path "${relative_path}"
  done < <(project_state_artifact_fixture_paths)
}

project_state_artifact_run_check() {
  bash "${PROJECT_STATE_ARTIFACT_TMP_REPO}/scripts/test-project-state-artifacts.sh"
}

project_state_artifact_assert_baseline_passes() {
  if ! project_state_artifact_run_check >/dev/null 2>"${PROJECT_STATE_ARTIFACT_STDERR_LOG}"; then
    echo "[${PROJECT_STATE_ARTIFACT_SCRIPT_LABEL}] Expected baseline fixtures to pass." >&2
    cat "${PROJECT_STATE_ARTIFACT_STDERR_LOG}" >&2
    return 1
  fi
}

project_state_artifact_expect_reason_code() {
  local expected_reason_code="$1"
  local failure_message="$2"
  local exit_code

  set +e
  project_state_artifact_run_check >/dev/null 2>"${PROJECT_STATE_ARTIFACT_STDERR_LOG}"
  exit_code=$?
  set -e

  if [[ "${exit_code}" -eq 0 ]]; then
    echo "[${PROJECT_STATE_ARTIFACT_SCRIPT_LABEL}] ${failure_message}" >&2
    return 1
  fi

  if ! grep -q "reason_code=${expected_reason_code}" "${PROJECT_STATE_ARTIFACT_STDERR_LOG}"; then
    echo "[${PROJECT_STATE_ARTIFACT_SCRIPT_LABEL}] Unexpected stderr output while checking ${expected_reason_code}:" >&2
    cat "${PROJECT_STATE_ARTIFACT_STDERR_LOG}" >&2
    return 1
  fi
}
