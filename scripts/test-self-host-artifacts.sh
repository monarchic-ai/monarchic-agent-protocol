#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
milestones_path="${repo_root}/SELF_HOST_MILESTONES.json"
report_path="${repo_root}/SELF_HOST_REPORT.json"
update_path="${repo_root}/SELF_HOST_UPDATE.json"
log_path="${repo_root}/SELF_HOST_IMPLEMENTATION_LOG.json"

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-self-host-artifacts] python or python3 is required" >&2
  exit 1
fi

"${python_cmd}" - "${milestones_path}" "${report_path}" "${update_path}" "${log_path}" <<'PY'
import json
import re
import sys
from pathlib import Path

milestones_path = Path(sys.argv[1])
report_path = Path(sys.argv[2])
update_path = Path(sys.argv[3])
log_path = Path(sys.argv[4])

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


for path in (milestones_path, report_path, update_path, log_path):
    if not path.is_file():
        fail(f"Missing required file: {path}")

with milestones_path.open("r", encoding="utf-8") as handle:
    milestones = json.load(handle)
with report_path.open("r", encoding="utf-8") as handle:
    report = json.load(handle)
with update_path.open("r", encoding="utf-8") as handle:
    update = json.load(handle)
with log_path.open("r", encoding="utf-8") as handle:
    implementation_log = json.load(handle)

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
if milestone_completed not in latest_entry["summary"]:
    fail(
        "Latest implementation log summary must include milestone_completed id "
        f"{milestone_completed!r} for traceability."
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
