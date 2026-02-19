#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
checklist_path="${repo_root}/checks/ready-for-review-gate-checklist.md"

if [[ ! -f "${checklist_path}" ]]; then
  echo "[test-ready-for-review-gate-checklist] Missing checklist: ${checklist_path}" >&2
  exit 1
fi

if ! grep -Fxq "# Ready-for-Review Gate Checklist" "${checklist_path}"; then
  echo "[test-ready-for-review-gate-checklist] Missing required heading: # Ready-for-Review Gate Checklist" >&2
  exit 1
fi

python_cmd=""
if command -v python >/dev/null 2>&1; then
  python_cmd="python"
elif command -v python3 >/dev/null 2>&1; then
  python_cmd="python3"
else
  echo "[test-ready-for-review-gate-checklist] python or python3 is required" >&2
  exit 1
fi

"${python_cmd}" - "${checklist_path}" <<'PY'
import sys

checklist_path = sys.argv[1]
with open(checklist_path, "r", encoding="utf-8") as handle:
    lines = [line.rstrip("\n") for line in handle]

required_items = [
    "- [ ] The change is explicitly tied to a `task_id` and has a clear scope.",
    "- [ ] Validation commands were run locally and their outcomes were recorded.",
    "- [ ] New or updated deterministic tests/checks cover the changed behavior.",
    "- [ ] `SELF_HOST_MILESTONES.json`, `SELF_HOST_IMPLEMENTATION_LOG.json`, `SELF_HOST_REPORT.json`, and `SELF_HOST_UPDATE.json` were updated for this run.",
    "- [ ] The gate recommendation is stated with `ready-for-review` readiness and supporting note.",
    "- [ ] Assumptions or tradeoffs for reviewers are documented.",
]

checklist_items = [line for line in lines if line.startswith("- [ ] ")]
if len(checklist_items) < len(required_items):
    print(
        f"[test-ready-for-review-gate-checklist] Expected at least {len(required_items)} checklist items, found {len(checklist_items)}.",
        file=sys.stderr,
    )
    sys.exit(1)

cursor = 0
for required in required_items:
    try:
        index = lines.index(required, cursor)
    except ValueError:
        print(
            f"[test-ready-for-review-gate-checklist] Missing required checklist item: {required}",
            file=sys.stderr,
        )
        sys.exit(1)
    cursor = index + 1

print("[test-ready-for-review-gate-checklist] PASS: ready-for-review checklist format is valid.")
PY
