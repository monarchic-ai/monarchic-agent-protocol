# Ready-for-Review Gate Checklist

Use this checklist before marking a protocol change as `ready-for-review`.

- [ ] The change is explicitly tied to a `task_id` and has a clear scope.
- [ ] Validation commands were run locally and their outcomes were recorded.
- [ ] New or updated deterministic tests/checks cover the changed behavior.
- [ ] `PROJECT_MILESTONES.json`, `PROJECT_ACTIVITY_LOG.json`, `PROJECT_STATUS.json`, and `PROJECT_SUMMARY.json` were updated for this run.
- [ ] The gate recommendation is stated with `ready-for-review` readiness and supporting note.
- [ ] Assumptions or tradeoffs for reviewers are documented.
