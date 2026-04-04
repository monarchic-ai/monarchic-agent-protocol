# Bootstrap Redesign Status

Last updated: 2026-04-04

## Completed

- Added canonical bootstrap protobuf contracts to `monarchic-agent-protocol`:
  - `BootstrapIntent`
  - `BootstrapPlan`
  - `BootstrapPlanTask`
- Added Rust client-boundary JSON wrappers and fixture coverage for the canonical bootstrap intent/plan contracts.
- Added canonical bootstrap planning-context protocol contracts:
  - `BootstrapPlanningContext`
  - `BootstrapTemplateContext`
  - `BootstrapTemplateSlotContext`
  - `BootstrapTemplateConnectionContext`
  - `BootstrapFilesystemPolicy`
  - `BootstrapSkillBinding`
- Aligned bootstrap terminology in the protocol contract around:
  - `campaign_goal`
  - `task_milestone`

## In Progress

- Keep the protocol schema aligned while downstream repos move bootstrap machine contracts off JSON-primary artifacts.

## Remaining

- Add protobuf-backed campaign-spec output contracts where machine-owned campaign artifacts need canonical wire formats.
- Support protocol-first bootstrap fast-path vs template-constrained planning contracts.
