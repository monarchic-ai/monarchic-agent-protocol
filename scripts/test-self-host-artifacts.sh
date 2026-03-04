#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
milestones_path="${repo_root}/SELF_HOST_MILESTONES.json"
report_path="${repo_root}/SELF_HOST_REPORT.json"
update_path="${repo_root}/SELF_HOST_UPDATE.json"
log_path="${repo_root}/SELF_HOST_IMPLEMENTATION_LOG.json"
proof_path="${repo_root}/SELF_HOST_PROOF.json"
command_log_path="${repo_root}/SELF_HOST_COMMAND_LOG.json"

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-self-host-artifacts] python or python3 is required" >&2
  exit 1
fi

"${python_cmd}" - "${milestones_path}" "${report_path}" "${update_path}" "${log_path}" "${proof_path}" "${command_log_path}" <<'PY'
import json
import re
import sys
from pathlib import Path

milestones_path = Path(sys.argv[1])
report_path = Path(sys.argv[2])
update_path = Path(sys.argv[3])
log_path = Path(sys.argv[4])
proof_path = Path(sys.argv[5])
command_log_path = Path(sys.argv[6])

required_milestone_keys = ["id", "title", "status", "completed_at", "notes"]
required_report_keys = [
    "status",
    "milestone_completed",
    "milestones_done",
    "total_milestones",
    "new_files",
    "changed_files",
    "test_command",
    "note",
]
required_update_keys = [
    "status",
    "headline",
    "current_focus",
    "milestone_target",
    "milestones_done",
    "total_milestones",
    "completed_work",
    "verification",
    "blockers",
    "next_steps",
    "note",
]
required_proof_keys = [
    "task_id",
    "status",
    "reason_code",
    "signature_count",
    "sampled_batches",
    "proofs",
    "note",
]
required_command_log_keys = [
    "task_id",
    "status",
    "commands",
    "note",
]
required_command_log_entry_keys = ["index", "command", "status"]
allowed_artifact_statuses = {"pass", "fail", "blocked"}


def fail(message: str) -> None:
    print(f"[test-self-host-artifacts] {message}", file=sys.stderr)
    sys.exit(1)


def find_duplicates(values: list[str]) -> list[str]:
    seen = set()
    duplicates = set()
    for value in values:
        if value in seen:
            duplicates.add(value)
        else:
            seen.add(value)
    return sorted(duplicates)


def is_strict_int(value: object) -> bool:
    return isinstance(value, int) and not isinstance(value, bool)


def parse_milestone_numeric(value: object, field_name: str) -> int:
    if not isinstance(value, str) or not re.fullmatch(r"M\d+", value):
        fail(f"{field_name} must match M<number>, found {value!r}.")
    return int(value[1:])


for path in (milestones_path, report_path, update_path, log_path):
    if not path.is_file():
        fail(f"Missing required file: {path}")
if not proof_path.is_file():
    fail(f"reason_code=PROOF_ARTIFACT_MISSING Missing required file: {proof_path}")
if not command_log_path.is_file():
    fail(f"reason_code=COMMAND_LOG_ARTIFACT_MISSING Missing required file: {command_log_path}")

with milestones_path.open("r", encoding="utf-8") as handle:
    milestones = json.load(handle)
with report_path.open("r", encoding="utf-8") as handle:
    report = json.load(handle)
with update_path.open("r", encoding="utf-8") as handle:
    update = json.load(handle)
with log_path.open("r", encoding="utf-8") as handle:
    implementation_log = json.load(handle)
try:
    with proof_path.open("r", encoding="utf-8") as handle:
        proof_manifest = json.load(handle)
except json.JSONDecodeError as exc:
    fail(f"reason_code=PROOF_JSON_INVALID SELF_HOST_PROOF.json is not valid JSON: {exc}")
try:
    with command_log_path.open("r", encoding="utf-8") as handle:
        command_log = json.load(handle)
except json.JSONDecodeError as exc:
    fail(f"reason_code=COMMAND_LOG_JSON_INVALID SELF_HOST_COMMAND_LOG.json is not valid JSON: {exc}")

iso_utc_timestamp_pattern = re.compile(r"^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z$")

if not isinstance(milestones, list):
    fail("SELF_HOST_MILESTONES.json must be a JSON array.")
if len(milestones) < 12:
    fail(f"Expected at least 12 milestones, found {len(milestones)}.")

seen_ids = set()
previous_numeric_id = -1
milestones_done = 0
done_ids = set()
seen_pending_milestone = False
latest_done_milestone_id = None

for index, milestone in enumerate(milestones):
    if not isinstance(milestone, dict):
        fail(f"Milestone at index {index} must be an object.")

    keys = list(milestone.keys())
    if keys != required_milestone_keys:
        fail(
            "Milestone at index "
            f"{index} must use keys in order {required_milestone_keys}, found {keys}."
        )

    milestone_id = milestone["id"]
    if not isinstance(milestone_id, str) or not re.fullmatch(r"M\d+", milestone_id):
        fail(f"Milestone id at index {index} must match M<number>, found {milestone_id!r}.")

    if milestone_id in seen_ids:
        fail(f"Duplicate milestone id found: {milestone_id}.")
    seen_ids.add(milestone_id)

    numeric_id = int(milestone_id[1:])
    if numeric_id <= previous_numeric_id:
        fail("Milestones must be ordered by ascending numeric id.")
    expected_numeric_id = index + 1
    if numeric_id != expected_numeric_id:
        fail(
            f"Milestone ids must be contiguous from M1. "
            f"Expected M{expected_numeric_id}, found {milestone_id}."
        )
    previous_numeric_id = numeric_id

    title = milestone["title"]
    if not isinstance(title, str) or not title.strip():
        fail(f"Milestone {milestone_id} has an empty title.")

    status = milestone["status"]
    if status not in {"pending", "done"}:
        fail(f"Milestone {milestone_id} has unsupported status: {status!r}.")

    if status == "pending":
        seen_pending_milestone = True
    elif seen_pending_milestone:
        fail(
            f"Milestone {milestone_id} is done after a pending milestone; "
            "done milestones must be contiguous from M1."
        )

    completed_at = milestone["completed_at"]
    if status == "done":
        if not isinstance(completed_at, str) or not completed_at.strip():
            fail(f"Milestone {milestone_id} is done but completed_at is empty.")
        if not iso_utc_timestamp_pattern.fullmatch(completed_at):
            fail(
                f"Milestone {milestone_id} completed_at must use UTC ISO-8601 "
                f"timestamp format YYYY-MM-DDTHH:MM:SSZ, found {completed_at!r}."
            )
        milestones_done += 1
        done_ids.add(milestone_id)
        latest_done_milestone_id = milestone_id
    else:
        if completed_at not in (None, ""):
            fail(f"Milestone {milestone_id} is pending but completed_at is not null/empty.")

    notes = milestone["notes"]
    if not isinstance(notes, str) or not notes.strip():
        fail(f"Milestone {milestone_id} has empty notes.")

if not isinstance(report, dict):
    fail("SELF_HOST_REPORT.json must be a JSON object.")
if list(report.keys()) != required_report_keys:
    fail(
        "SELF_HOST_REPORT.json must use keys in this order: "
        f"{required_report_keys}, found {list(report.keys())}."
    )

report_status = report["status"]
if report_status not in allowed_artifact_statuses:
    fail(
        "SELF_HOST_REPORT.json status must be one of "
        f"{sorted(allowed_artifact_statuses)}, found {report_status!r}."
    )

report_total_milestones = report["total_milestones"]
if not is_strict_int(report_total_milestones):
    fail("SELF_HOST_REPORT.json total_milestones must be an integer.")
if report_total_milestones != len(milestones):
    fail(
        "SELF_HOST_REPORT.json total_milestones must equal milestone array length "
        f"({len(milestones)}), found {report_total_milestones}."
    )
report_milestones_done = report["milestones_done"]
if not is_strict_int(report_milestones_done):
    fail("SELF_HOST_REPORT.json milestones_done must be an integer.")
if report_milestones_done != milestones_done:
    fail(
        "SELF_HOST_REPORT.json milestones_done must equal done milestone count "
        f"({milestones_done}), found {report_milestones_done}."
    )

milestone_completed = report["milestone_completed"]
if not isinstance(milestone_completed, str) or not milestone_completed:
    fail("SELF_HOST_REPORT.json milestone_completed must be a non-empty string.")
if milestone_completed not in done_ids:
    fail(
        "SELF_HOST_REPORT.json milestone_completed must reference an existing done milestone, "
        f"found {milestone_completed!r}."
    )
if latest_done_milestone_id is None:
    fail("At least one done milestone is required when report milestone_completed is set.")
if milestone_completed != latest_done_milestone_id:
    fail(
        "SELF_HOST_REPORT.json milestone_completed must reference the latest done milestone "
        f"{latest_done_milestone_id!r}, found {milestone_completed!r}."
    )

for key in ("new_files", "changed_files"):
    value = report[key]
    if not isinstance(value, list) or not all(isinstance(item, str) and item for item in value):
        fail(f"SELF_HOST_REPORT.json field {key} must be an array of non-empty strings.")

new_files_duplicates = find_duplicates(report["new_files"])
if new_files_duplicates:
    fail(
        "SELF_HOST_REPORT.json new_files must not contain duplicates, "
        f"found {new_files_duplicates}."
    )

changed_files_duplicates = find_duplicates(report["changed_files"])
if changed_files_duplicates:
    fail(
        "SELF_HOST_REPORT.json changed_files must not contain duplicates, "
        f"found {changed_files_duplicates}."
    )

file_list_overlap = sorted(set(report["new_files"]).intersection(report["changed_files"]))
if file_list_overlap:
    fail(
        "SELF_HOST_REPORT.json new_files and changed_files must be disjoint, "
        f"overlap found: {file_list_overlap}."
    )

missing_report_paths = sorted(
    path for path in report["changed_files"] if not (milestones_path.parent / path).is_file()
)
if missing_report_paths:
    fail(
        "SELF_HOST_REPORT.json changed_files reference missing file path(s): "
        f"{missing_report_paths}."
    )

missing_new_file_paths = sorted(
    path for path in report["new_files"] if not (milestones_path.parent / path).is_file()
)
if missing_new_file_paths:
    fail(
        "SELF_HOST_REPORT.json new_files reference missing file path(s): "
        f"{missing_new_file_paths}."
    )

for key in ("test_command", "note"):
    value = report[key]
    if not isinstance(value, str) or not value.strip():
        fail(f"SELF_HOST_REPORT.json field {key} must be a non-empty string.")

if not isinstance(update, dict):
    fail("SELF_HOST_UPDATE.json must be a JSON object.")
if list(update.keys()) != required_update_keys:
    fail(
        "SELF_HOST_UPDATE.json must use keys in this order: "
        f"{required_update_keys}, found {list(update.keys())}."
    )

update_status = update["status"]
if update_status not in allowed_artifact_statuses:
    fail(
        "SELF_HOST_UPDATE.json status must be one of "
        f"{sorted(allowed_artifact_statuses)}, found {update_status!r}."
    )
if update_status != report_status:
    fail(
        "SELF_HOST_UPDATE.json status must match SELF_HOST_REPORT.json status, "
        f"found {update_status!r} vs {report_status!r}."
    )

update_total_milestones = update["total_milestones"]
if not is_strict_int(update_total_milestones):
    fail("SELF_HOST_UPDATE.json total_milestones must be an integer.")
if update_total_milestones != len(milestones):
    fail(
        "SELF_HOST_UPDATE.json total_milestones must equal milestone array length "
        f"({len(milestones)}), found {update_total_milestones}."
    )
update_milestones_done = update["milestones_done"]
if not is_strict_int(update_milestones_done):
    fail("SELF_HOST_UPDATE.json milestones_done must be an integer.")
if update_milestones_done != milestones_done:
    fail(
        "SELF_HOST_UPDATE.json milestones_done must equal done milestone count "
        f"({milestones_done}), found {update_milestones_done}."
    )
for key in ("headline", "current_focus", "milestone_target", "note"):
    value = update[key]
    if not isinstance(value, str) or not value.strip():
        fail(f"SELF_HOST_UPDATE.json field {key} must be a non-empty string.")

for key in ("completed_work", "verification", "blockers", "next_steps"):
    value = update[key]
    if not isinstance(value, list) or not all(isinstance(item, str) and item for item in value):
        fail(f"SELF_HOST_UPDATE.json field {key} must be an array of non-empty strings.")

if not isinstance(proof_manifest, dict):
    fail("reason_code=PROOF_NOT_OBJECT SELF_HOST_PROOF.json must be a JSON object.")
if list(proof_manifest.keys()) != required_proof_keys:
    fail(
        "reason_code=PROOF_KEY_ORDER_INVALID SELF_HOST_PROOF.json must use keys in this order: "
        f"{required_proof_keys}, found {list(proof_manifest.keys())}."
    )

proof_status = proof_manifest["status"]
if proof_status not in allowed_artifact_statuses:
    fail(
        "reason_code=PROOF_STATUS_INVALID SELF_HOST_PROOF.json status must be one of "
        f"{sorted(allowed_artifact_statuses)}, found {proof_status!r}."
    )

proof_reason_code = proof_manifest["reason_code"]
if not isinstance(proof_reason_code, str) or not proof_reason_code.strip():
    fail(
        "reason_code=REASON_CODE_MISSING SELF_HOST_PROOF.json reason_code must be a non-empty string."
    )

proof_task_id = proof_manifest["task_id"]
if not isinstance(proof_task_id, str) or not proof_task_id.strip():
    fail(
        "reason_code=PROOF_TASK_ID_INVALID SELF_HOST_PROOF.json task_id must be a non-empty string."
    )

signature_count = proof_manifest["signature_count"]
if not is_strict_int(signature_count) or signature_count < 0:
    fail(
        "reason_code=SIGNATURE_COUNT_INVALID SELF_HOST_PROOF.json signature_count must be a non-negative integer."
    )

sampled_batches = proof_manifest["sampled_batches"]
if not is_strict_int(sampled_batches) or sampled_batches < 1:
    fail(
        "reason_code=SAMPLED_BATCHES_INVALID SELF_HOST_PROOF.json sampled_batches must be a positive integer."
    )

proofs = proof_manifest["proofs"]
if not isinstance(proofs, list):
    fail("reason_code=PROOFS_NOT_ARRAY SELF_HOST_PROOF.json proofs must be an array.")
if signature_count != len(proofs):
    fail(
        "reason_code=SIGNATURE_COUNT_MISMATCH SELF_HOST_PROOF.json signature_count must equal proofs length "
        f"({len(proofs)}), found {signature_count}."
    )

if report_status == "pass":
    if proof_status != "pass":
        fail(
            "reason_code=PROOF_STATUS_MISMATCH SELF_HOST_PROOF.json status must be 'pass' when SELF_HOST_REPORT.json status is 'pass'."
        )
    if proof_reason_code != "OK":
        fail(
            "reason_code=PASS_REASON_CODE_INVALID SELF_HOST_PROOF.json reason_code must be 'OK' when status is 'pass'."
        )
    if not proofs:
        fail(
            "reason_code=PROOF_LIST_EMPTY SELF_HOST_PROOF.json proofs must include at least one entry when status is 'pass'."
        )
    if signature_count < sampled_batches:
        fail(
            "reason_code=SIGNATURE_COUNT_BELOW_SAMPLED_BATCHES SELF_HOST_PROOF.json signature_count must be >= sampled_batches when status is 'pass'."
        )

if not isinstance(command_log, dict):
    fail("reason_code=COMMAND_LOG_NOT_OBJECT SELF_HOST_COMMAND_LOG.json must be a JSON object.")
if list(command_log.keys()) != required_command_log_keys:
    fail(
        "reason_code=COMMAND_LOG_KEY_ORDER_INVALID SELF_HOST_COMMAND_LOG.json must use keys in this order: "
        f"{required_command_log_keys}, found {list(command_log.keys())}."
    )

command_log_task_id = command_log["task_id"]
if not isinstance(command_log_task_id, str) or not command_log_task_id.strip():
    fail("reason_code=COMMAND_LOG_TASK_ID_INVALID SELF_HOST_COMMAND_LOG.json task_id must be a non-empty string.")

command_log_status = command_log["status"]
if command_log_status not in allowed_artifact_statuses:
    fail(
        "reason_code=COMMAND_LOG_STATUS_INVALID SELF_HOST_COMMAND_LOG.json status must be one of "
        f"{sorted(allowed_artifact_statuses)}, found {command_log_status!r}."
    )
if command_log_status != report_status:
    fail(
        "reason_code=COMMAND_LOG_STATUS_MISMATCH SELF_HOST_COMMAND_LOG.json status must match SELF_HOST_REPORT.json status, "
        f"found {command_log_status!r} vs {report_status!r}."
    )

command_log_commands = command_log["commands"]
if not isinstance(command_log_commands, list) or not command_log_commands:
    fail("reason_code=COMMAND_LOG_COMMANDS_INVALID SELF_HOST_COMMAND_LOG.json commands must be a non-empty array.")
for index, command_entry in enumerate(command_log_commands):
    if not isinstance(command_entry, dict):
        fail(f"reason_code=COMMAND_LOG_ENTRY_NOT_OBJECT SELF_HOST_COMMAND_LOG.json command entry at index {index} must be an object.")
    entry_keys = list(command_entry.keys())
    if entry_keys != required_command_log_entry_keys:
        fail(
            "reason_code=COMMAND_LOG_ENTRY_KEYS_INVALID SELF_HOST_COMMAND_LOG.json command entry at index "
            f"{index} must use keys in this order {required_command_log_entry_keys}, found {entry_keys}."
        )

    command_index = command_entry["index"]
    if not is_strict_int(command_index) or command_index != index + 1:
        fail(
            "reason_code=COMMAND_LOG_INDEX_INVALID SELF_HOST_COMMAND_LOG.json command index must be a contiguous integer sequence "
            f"starting at 1; entry {index} has index {command_index!r}."
        )

    command_value = command_entry["command"]
    if not isinstance(command_value, str) or not command_value.strip():
        fail(
            f"reason_code=COMMAND_LOG_COMMAND_EMPTY SELF_HOST_COMMAND_LOG.json command entry {index} command must be a non-empty string."
        )

    command_status = command_entry["status"]
    if command_status not in allowed_artifact_statuses:
        fail(
            "reason_code=COMMAND_LOG_ENTRY_STATUS_INVALID SELF_HOST_COMMAND_LOG.json command entry "
            f"{index} status must be one of {sorted(allowed_artifact_statuses)}, found {command_status!r}."
        )

if report_status == "pass":
    non_pass_commands = [
        entry["command"] for entry in command_log_commands if entry["status"] != "pass"
    ]
    if non_pass_commands:
        fail(
            "reason_code=COMMAND_LOG_NON_PASS_ENTRY SELF_HOST_COMMAND_LOG.json command entries must all be 'pass' when report status is 'pass', "
            f"found {non_pass_commands}."
        )

command_values = [entry["command"] for entry in command_log_commands]
duplicate_commands = find_duplicates(command_values)
if duplicate_commands:
    fail(
        "reason_code=COMMAND_LOG_DUPLICATE_COMMAND SELF_HOST_COMMAND_LOG.json commands must not contain duplicates, "
        f"found {duplicate_commands}."
    )

command_log_note = command_log["note"]
if not isinstance(command_log_note, str) or not command_log_note.strip():
    fail("reason_code=COMMAND_LOG_NOTE_INVALID SELF_HOST_COMMAND_LOG.json note must be a non-empty string.")

if not isinstance(implementation_log, list):
    fail("SELF_HOST_IMPLEMENTATION_LOG.json must be a JSON array.")
if not implementation_log:
    fail("SELF_HOST_IMPLEMENTATION_LOG.json must contain at least one entry.")

latest_entry = implementation_log[-1]
if not isinstance(latest_entry, dict):
    fail("Latest implementation log entry must be an object.")

required_log_keys = ["timestamp", "task_id", "summary", "milestone_completed", "files", "verification", "gate"]
missing = [key for key in required_log_keys if key not in latest_entry]
if missing:
    fail(f"Latest implementation log entry is missing keys: {missing}.")

entry_keys = list(latest_entry.keys())
if entry_keys != required_log_keys:
    fail(
        "Latest implementation log entry must use keys in this order: "
        f"{required_log_keys}, found {entry_keys}."
    )

for key in ("timestamp", "task_id", "summary", "milestone_completed", "gate"):
    value = latest_entry[key]
    if not isinstance(value, str) or not value.strip():
        fail(f"Latest implementation log entry field {key} must be a non-empty string.")

if not iso_utc_timestamp_pattern.fullmatch(latest_entry["timestamp"]):
    fail(
        "Latest implementation log entry field timestamp must use UTC ISO-8601 "
        "format YYYY-MM-DDTHH:MM:SSZ."
    )

for key in ("files", "verification"):
    value = latest_entry[key]
    if not isinstance(value, list) or not all(isinstance(item, str) and item for item in value):
        fail(f"Latest implementation log entry field {key} must be an array of non-empty strings.")

if latest_entry["milestone_completed"] != milestone_completed:
    fail(
        "Latest implementation log milestone_completed must match SELF_HOST_REPORT.json "
        f"milestone_completed, found {latest_entry['milestone_completed']!r} "
        f"vs {milestone_completed!r}."
    )

latest_task_id = latest_entry["task_id"]
if proof_task_id != latest_task_id:
    fail(
        "reason_code=PROOF_TASK_ID_MISMATCH SELF_HOST_PROOF.json task_id must match "
        "latest SELF_HOST_IMPLEMENTATION_LOG.json task_id, found "
        f"{proof_task_id!r} vs {latest_task_id!r}."
    )
if milestone_completed not in latest_entry["summary"]:
    fail(
        "Latest implementation log summary must include milestone_completed id "
        f"{milestone_completed!r} for traceability."
    )
if command_log_task_id != latest_task_id:
    fail(
        "reason_code=COMMAND_LOG_TASK_ID_MISMATCH SELF_HOST_COMMAND_LOG.json task_id must match latest SELF_HOST_IMPLEMENTATION_LOG.json task_id, "
        f"found {command_log_task_id!r} vs {latest_task_id!r}."
    )
expected_verification = [
    f"{entry['command']} -> {entry['status']}" for entry in command_log_commands
]
if latest_entry["verification"] != expected_verification:
    fail(
        "reason_code=COMMAND_LOG_VERIFICATION_MISMATCH Latest implementation log verification must exactly match "
        "SELF_HOST_COMMAND_LOG.json commands/status entries."
    )

if report_status == "pass" and len(implementation_log) > 1:
    previous_entry = implementation_log[-2]
    if not isinstance(previous_entry, dict):
        fail("Previous implementation log entry must be an object when present.")
    if "milestone_completed" not in previous_entry:
        fail("Previous implementation log entry is missing milestone_completed.")
    previous_milestone_completed = previous_entry["milestone_completed"]
    previous_milestone_numeric = parse_milestone_numeric(
        previous_milestone_completed,
        "Previous implementation log milestone_completed",
    )
    latest_milestone_numeric = parse_milestone_numeric(
        milestone_completed,
        "SELF_HOST_REPORT.json milestone_completed",
    )
    if latest_milestone_numeric <= previous_milestone_numeric:
        fail(
            "SELF_HOST_REPORT.json status 'pass' requires milestone progression: latest "
            f"milestone_completed {milestone_completed!r} must be greater than previous "
            "implementation log milestone_completed "
            f"{previous_milestone_completed!r}."
        )

reported_files = set(report["new_files"] + report["changed_files"])
missing_logged_files = sorted(reported_files.difference(set(latest_entry["files"])))
if missing_logged_files:
    fail(
        "Latest implementation log files must include all report new_files/changed_files. "
        f"Missing: {missing_logged_files}."
    )

print("[test-self-host-artifacts] PASS: self-host artifact structure and counts are consistent.")
PY
