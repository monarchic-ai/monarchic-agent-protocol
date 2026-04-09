# Bootstrap Redesign Status

Last updated: 2026-04-09

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
  - `BootstrapTemplateLaneContext`
  - `BootstrapFilesystemPolicy`
  - `BootstrapSkillBinding`
- Added canonical bootstrap template-lane protocol context so repeatable lane semantics are part of the machine-owned planning contract instead of existing only in TUI-local prompt rendering.
- Aligned bootstrap terminology in the protocol contract around:
  - `campaign_goal`
  - `task_milestone`
- Added a canonical campaign pipeline protocol contract plus client-boundary fixture coverage, so downstream repos now have an explicit schema anchor for the machine-owned campaign pipeline artifact instead of relying only on local mirrored `PipelineSpec` shapes.
- Added a protocol-owned canonical task client boundary plus fixture coverage around the existing `Task` wire contract, so downstream repos now have an explicit schema anchor for machine-owned campaign task artifacts and compatibility-only JSON fields stay secondary to `extensions`.
- Completed Initiative 1 `Campaign-Spec Protocol Completion`; canonical campaign pipeline and task contracts now have explicit protocol-owned schema anchors.
- Added an explicit `BootstrapPlanningMode` protocol enum and adopted it in the canonical bootstrap plan contract, so planning-mode ownership is no longer stringly typed at the protocol boundary.
- Added a protocol-owned bootstrap planning-context client boundary plus typed `planning_mode`, so downstream repos now have an explicit schema anchor for direct-vs-bounded planning context instead of inferring that mode only from local runtime heuristics.
- Added a typed `TaskMessageKind` protocol enum plus client-boundary fixture coverage for clarification messages, so machine-readable clarification flow no longer depends on ad hoc string `kind` values.
- Completed Initiative 2 `Bootstrap Planning Contract Completion`; planning mode and clarification messaging are now explicit at the protocol boundary, and no separate refusal result contract is needed until downstream runtime introduces one.

## In Progress

- Keep the protocol schema aligned while downstream repos move bootstrap machine contracts off JSON-primary artifacts.

## Remaining

## Goal

- Finish the remaining protocol/schema ownership work for protobuf-first bootstrap and campaign contracts.

### Initiative 3: Schema Ownership Cleanup

- Milestone: downstream repos stop carrying protocol-shaped local shadow types where ownership belongs in the protocol repo.
  - Task: audit shadow bootstrap/campaign structs in downstream repos.
    - Subtasks:
      - separate true protocol fields from reporting-only wrappers
      - document ownership boundaries for bootstrap, campaign, and planning contracts
      - identify any downstream wrappers that can remain intentionally local after protocol completion
