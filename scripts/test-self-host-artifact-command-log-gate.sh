#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check_script="${repo_root}/scripts/test-self-host-artifacts.sh"
script_label="test-self-host-artifact-command-log-gate"

source "${repo_root}/scripts/self-host-command-log-test-lib.sh"

self_host_command_log_setup "${script_label}" "${repo_root}" "${check_script}"
trap 'self_host_command_log_cleanup' EXIT

self_host_command_log_reset_fixtures
self_host_command_log_assert_baseline_passes

command_log_path="$(self_host_command_log_tmp_path)"

"${SELF_HOST_COMMAND_LOG_PYTHON_CMD}" - "${command_log_path}" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    command_log = json.load(handle)

command_log["status"] = "blocked"

with open(path, "w", encoding="utf-8") as handle:
    json.dump(command_log, handle, indent=2)
    handle.write("\n")
PY

self_host_command_log_expect_reason_code "COMMAND_LOG_STATUS_MISMATCH" "Expected command-log status mismatch to fail."

self_host_command_log_reset_fixtures

"${SELF_HOST_COMMAND_LOG_PYTHON_CMD}" - "${command_log_path}" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    command_log = json.load(handle)

if not command_log["commands"]:
    raise SystemExit("Need at least one command entry for regression test.")

command_log["commands"][0]["index"] = 99

with open(path, "w", encoding="utf-8") as handle:
    json.dump(command_log, handle, indent=2)
    handle.write("\n")
PY

self_host_command_log_expect_reason_code "COMMAND_LOG_INDEX_INVALID" "Expected non-contiguous command index to fail."

self_host_command_log_reset_fixtures

"${SELF_HOST_COMMAND_LOG_PYTHON_CMD}" - "${command_log_path}" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    command_log = json.load(handle)

if len(command_log["commands"]) < 2:
    raise SystemExit("Need at least two command entries for order-drift regression test.")

first_command = command_log["commands"][0]["command"]
second_command = command_log["commands"][1]["command"]
command_log["commands"][0]["command"] = second_command
command_log["commands"][1]["command"] = first_command

with open(path, "w", encoding="utf-8") as handle:
    json.dump(command_log, handle, indent=2)
    handle.write("\n")
PY

self_host_command_log_expect_reason_code "COMMAND_LOG_FIRST_COMMAND_INVALID" "Expected first-command order drift to fail."

echo "[${script_label}] PASS: default self-host artifact gate surfaces deterministic command-log reason codes for status, index, and verification-order drift."
