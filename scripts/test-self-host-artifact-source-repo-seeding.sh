#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-source-repo-seeding"

source "${repo_root}/scripts/self-host-artifact-test-lib.sh"

source_repo="$(mktemp -d)"
python_cmd="$(self_host_artifact_choose_python "${script_label}")"

cleanup() {
  rm -rf "${source_repo}"
  self_host_artifact_cleanup
}
trap cleanup EXIT

self_host_artifact_seed_source_repo_with_empty_report_lists "${script_label}" "${repo_root}" "${source_repo}"

for relative_path in $(self_host_artifact_core_paths); do
  if [[ ! -f "${source_repo}/${relative_path}" ]]; then
    echo "[${script_label}] Expected source repo seeding helper to copy ${relative_path}." >&2
    exit 1
  fi
done

"${python_cmd}" - "${source_repo}/SELF_HOST_REPORT.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    report = json.load(handle)

for key in ("new_files", "changed_files"):
    value = report.get(key)
    if value != []:
        raise SystemExit(f"Expected {key} to be [], found {value!r}.")
PY

self_host_artifact_setup "${script_label}" "${source_repo}" "${check_script}"
self_host_artifact_reset_fixtures
self_host_artifact_assert_baseline_passes

echo "[${script_label}] PASS: source-repo seeding copies core artifacts, clears report file lists, and preserves a passing baseline gate."
