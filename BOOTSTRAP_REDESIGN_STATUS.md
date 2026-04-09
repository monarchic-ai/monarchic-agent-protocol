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

## In Progress

- Keep the protocol schema aligned while downstream repos move bootstrap machine contracts off JSON-primary artifacts.

## Remaining

## Goal

- Finish the remaining protocol/schema ownership work for protobuf-first bootstrap and campaign contracts.

### Initiative 1: Campaign-Spec Protocol Completion

- Milestone: canonical campaign outputs have explicit protocol contracts.
  - Task: add canonical campaign pipeline protocol messages.
    - Subtasks:
      - completed: audited downstream ad hoc campaign-pipeline contract shapes already mirrored outside the protocol repo
      - completed: defined stable protobuf message names and fields for the canonical pipeline contract
      - completed: added encoding/decoding boundary coverage for the new pipeline messages
  - Task: add canonical task-output protocol messages where downstream repos still rely on local mirrored shapes.
    - Subtasks:
      - identify task fields that should move from downstream local mirrors into the protocol schema
      - keep JSON compatibility wrappers explicitly secondary to protobuf ownership
      - add fixture coverage proving protobuf is the machine-owned form

### Initiative 2: Bootstrap Planning Contract Completion

- Milestone: fast-path vs bounded/template-constrained planning is fully explicit in protocol.
  - Task: tighten planning-mode protocol ownership.
    - Subtasks:
      - audit downstream planning-mode normalization that still compensates for schema gaps
      - add enums/messages where planning outcomes are still implicit or alias-driven
      - keep legacy alias normalization explicit and narrow
  - Task: formalize clarification/refusal outcomes if they remain runtime-local.
    - Subtasks:
      - identify machine-readable clarification requirements that should be part of the protocol
      - define explicit result messages only if downstream runtime behavior still depends on local ad hoc shapes

### Initiative 3: Schema Ownership Cleanup

- Milestone: downstream repos stop carrying protocol-shaped local shadow types where ownership belongs in the protocol repo.
  - Task: audit shadow bootstrap/campaign structs in downstream repos.
    - Subtasks:
      - separate true protocol fields from reporting-only wrappers
      - document ownership boundaries for bootstrap, campaign, and planning contracts
      - identify any downstream wrappers that can remain intentionally local after protocol completion
