#!/usr/bin/env bash

self_host_artifact_choose_python() {
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

self_host_artifact_setup() {
  local script_label="$1"
  local repo_root="$2"
  local check_script="$3"

  if [[ ! -x "${check_script}" ]]; then
    echo "[${script_label}] Missing executable: ${check_script}" >&2
    return 1
  fi

  SELF_HOST_ARTIFACT_SCRIPT_LABEL="${script_label}"
  SELF_HOST_ARTIFACT_REPO_ROOT="${repo_root}"
  SELF_HOST_ARTIFACT_CHECK_SCRIPT="${check_script}"
  SELF_HOST_ARTIFACT_PYTHON_CMD="$(self_host_artifact_choose_python "${script_label}")"
  SELF_HOST_ARTIFACT_TMP_REPO="$(mktemp -d)"
  SELF_HOST_ARTIFACT_STDERR_LOG="$(mktemp)"

  mkdir -p "${SELF_HOST_ARTIFACT_TMP_REPO}/scripts"
  cp "${SELF_HOST_ARTIFACT_CHECK_SCRIPT}" "${SELF_HOST_ARTIFACT_TMP_REPO}/scripts/test-self-host-artifacts.sh"
  chmod +x "${SELF_HOST_ARTIFACT_TMP_REPO}/scripts/test-self-host-artifacts.sh"
}

self_host_artifact_cleanup() {
  if [[ -n "${SELF_HOST_ARTIFACT_TMP_REPO:-}" ]]; then
    rm -rf "${SELF_HOST_ARTIFACT_TMP_REPO}"
  fi

  if [[ -n "${SELF_HOST_ARTIFACT_STDERR_LOG:-}" ]]; then
    rm -f "${SELF_HOST_ARTIFACT_STDERR_LOG}"
  fi
}

self_host_artifact_core_paths() {
  printf '%s\n' \
    "SELF_HOST_MILESTONES.json" \
    "SELF_HOST_REPORT.json" \
    "SELF_HOST_UPDATE.json" \
    "SELF_HOST_IMPLEMENTATION_LOG.json" \
    "SELF_HOST_PROOF.json" \
    "SELF_HOST_COMMAND_LOG.json"
}

self_host_artifact_seed_source_repo_with_empty_report_lists() {
  local script_label="$1"
  local source_root="$2"
  local destination_root="$3"
  local python_cmd=""
  local relative_path=""

  python_cmd="$(self_host_artifact_choose_python "${script_label}")"
  mkdir -p "${destination_root}"

  while IFS= read -r relative_path; do
    [[ -z "${relative_path}" ]] && continue

    if [[ ! -f "${source_root}/${relative_path}" ]]; then
      echo "[${script_label}] Missing source fixture path: ${source_root}/${relative_path}" >&2
      return 1
    fi

    mkdir -p "$(dirname "${destination_root}/${relative_path}")"
    cp "${source_root}/${relative_path}" "${destination_root}/${relative_path}"
  done < <(self_host_artifact_core_paths)

  "${python_cmd}" - "${destination_root}/SELF_HOST_REPORT.json" <<'PY'
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

self_host_artifact_report_paths() {
  "${SELF_HOST_ARTIFACT_PYTHON_CMD}" - "${SELF_HOST_ARTIFACT_REPO_ROOT}/SELF_HOST_REPORT.json" <<'PY'
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

self_host_artifact_fixture_paths() {
  self_host_artifact_core_paths
  self_host_artifact_report_paths
}

self_host_artifact_copy_relative_path() {
  local relative_path="$1"
  local source_path="${SELF_HOST_ARTIFACT_REPO_ROOT}/${relative_path}"

  if [[ ! -f "${source_path}" ]]; then
    return 0
  fi

  mkdir -p "$(dirname "${SELF_HOST_ARTIFACT_TMP_REPO}/${relative_path}")"
  cp "${source_path}" "${SELF_HOST_ARTIFACT_TMP_REPO}/${relative_path}"
}

self_host_artifact_reset_fixtures() {
  local relative_path=""

  while IFS= read -r relative_path; do
    [[ -z "${relative_path}" ]] && continue
    self_host_artifact_copy_relative_path "${relative_path}"
  done < <(self_host_artifact_fixture_paths)
}

self_host_artifact_run_check() {
  bash "${SELF_HOST_ARTIFACT_TMP_REPO}/scripts/test-self-host-artifacts.sh"
}

self_host_artifact_assert_baseline_passes() {
  if ! self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
    echo "[${SELF_HOST_ARTIFACT_SCRIPT_LABEL}] Expected baseline fixtures to pass." >&2
    cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
    return 1
  fi
}

self_host_artifact_expect_reason_code() {
  local expected_reason_code="$1"
  local failure_message="$2"
  local exit_code

  set +e
  self_host_artifact_run_check >/dev/null 2>"${SELF_HOST_ARTIFACT_STDERR_LOG}"
  exit_code=$?
  set -e

  if [[ "${exit_code}" -eq 0 ]]; then
    echo "[${SELF_HOST_ARTIFACT_SCRIPT_LABEL}] ${failure_message}" >&2
    return 1
  fi

  if ! grep -q "reason_code=${expected_reason_code}" "${SELF_HOST_ARTIFACT_STDERR_LOG}"; then
    echo "[${SELF_HOST_ARTIFACT_SCRIPT_LABEL}] Unexpected stderr output while checking ${expected_reason_code}:" >&2
    cat "${SELF_HOST_ARTIFACT_STDERR_LOG}" >&2
    return 1
  fi
}
