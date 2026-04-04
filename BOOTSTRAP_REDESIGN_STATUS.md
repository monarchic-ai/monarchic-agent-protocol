# Bootstrap Redesign Status

Last updated: 2026-04-04

## Completed

- Added canonical bootstrap protobuf contracts to `monarchic-agent-protocol`:
  - `BootstrapIntent`
  - `BootstrapPlan`
  - `BootstrapPlanTask`
- Added Rust client-boundary JSON wrappers and fixture coverage for the new bootstrap contracts.
- Aligned bootstrap terminology in the protocol contract around:
  - `campaign_goal`
  - `task_milestone`

## In Progress

- Wire `libmonarchic` bootstrap planning and synthesis code to convert between the existing JSON-era bootstrap structs and the new canonical protocol messages.

## Remaining

- Decide whether bootstrap protobuf ownership should stay in `monarchic-agent-protocol` or expand with a dedicated bootstrap/campaign sub-namespace.
- Add deterministic `BootstrapIntent` emission in `monarchic-tui` instead of directly authoring JSON planning context.
- Add deterministic `BootstrapPlan` serialization/deserialization in `libmonarchic` and phase out JSON as the primary machine contract.
- Reuse `monarchic-agent-protocol::Task` as the canonical per-runner synthesized task contract during bootstrap synthesis.
- Add protobuf-backed campaign-spec synthesis artifacts, with JSON remaining only as derived/exported compatibility output.
- Route bootstrap fast-path vs template-constrained planning through typed contracts and machine validation.
- Update orchestrator/bootstrap execution to consume the protobuf-backed contracts end to end.
