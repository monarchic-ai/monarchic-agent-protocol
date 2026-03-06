# Next Priority Task

- generated_at: 2026-03-06T22:38:12.387712+00:00
- run_id: self-host-svc-20260306T173928Z-c001-monarchic-agent-protocol-b5e9d0f75db2
- batch: batch-0001
- source: self_host_update
- task_id: self-host-update-batch-0001
- title: Advance M49: identify the next wrapper/helper ownership gap for issue #1 only if another deterministic non-protobuf self-host regression needs coverage.
- why_now: Progress monitor returned no explicit recovery task for this checkpoint.

## Prompt
Monitor-generated recovery tasks are unavailable for this checkpoint. Use SELF_HOST_UPDATE.json as the source of truth for the next incremental improvement. Prioritize milestone target: M49: identify the next wrapper/helper ownership gap for issue #1 only if another deterministic non-protobuf self-host regression needs coverage. Current focus: Current focus is keeping command-log self-host regressions on the wrapper-owned core-path helper added in this run so future shared artifact fixture changes do not require duplicated file lists in non-protobuf shell coverage. Start with next step: Use M49 only if another issue #1 regression still reaches into artifact-lib details instead of wrapper-owned helpers. Keep the change low-risk, run verification, and update SELF_HOST_REPORT.json plus SELF_HOST_UPDATE.json.

## Acceptance
- Deliver observable progress for milestone target: M49: identify the next wrapper/helper ownership gap for issue #1 only if another deterministic non-protobuf self-host regression needs coverage..
- Address next step: Use M49 only if another issue #1 regression still reaches into artifact-lib details instead of wrapper-owned helpers.
- Address next step: Keep future command-log shell coverage on self_host_command_log_core_paths and self_host_command_log_seed_source_repo_with_empty_report_lists so shared fixture additions stay centralized.
- Maintain verification continuity (first expected check: bash scripts/test-self-host-proof-artifacts.sh -> pass).
- Refresh SELF_HOST_REPORT.json and SELF_HOST_UPDATE.json to reflect the completed work.
