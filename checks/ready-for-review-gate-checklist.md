# Ready-for-Review Gate Checklist

Use this checklist before marking a protocol change as `ready-for-review`.

- [ ] The change is explicitly tied to a `task_id` and has a clear scope.
- [ ] Validation commands were run locally and their outcomes were recorded.
- [ ] New or updated deterministic tests/checks cover the changed behavior.
- [ ] `SELF_HOST_MILESTONES.json`, `SELF_HOST_IMPLEMENTATION_LOG.json`, `SELF_HOST_REPORT.json`, and `SELF_HOST_UPDATE.json` were updated for this run.
- [ ] The gate recommendation is stated with `ready-for-review` readiness and supporting note.
- [ ] Assumptions or tradeoffs for reviewers are documented.
