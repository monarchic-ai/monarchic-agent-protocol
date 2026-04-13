# Bootstrap Protocol Ownership

Last updated: 2026-04-09

This document records which bootstrap and campaign contract shapes are owned by
`monarchic-agent-protocol` and which downstream wrappers are intentionally
local. The goal is to prevent new protocol-shaped shadow types from spreading
 across repos now that the canonical protobuf-first contracts exist.

## Protocol-Owned Contracts

These contracts define the machine-owned bootstrap and campaign boundary and
should be modeled in downstream repos by generated protocol types or the Rust
`client_boundary` wrappers in this repo.

### Bootstrap planning and execution

- `BootstrapIntent`
- `BootstrapPlan`
- `BootstrapPlanTask`
- `BootstrapPlanningMode`
- `BootstrapPlanningContext`
- `BootstrapTemplateContext`
- `BootstrapTemplateSlotContext`
- `BootstrapTemplateConnectionContext`
- `BootstrapTemplateLaneContext`
- `BootstrapFilesystemPolicy`
- `BootstrapSkillBinding`

### Campaign-spec outputs

- `CampaignPipelineSpec`
- `CampaignPipelineTaskRef`
- `CampaignPipelineConnection`
- `CampaignPipelineConnectionKind`
- `CampaignPipelineGate`
- `CampaignPipelineGatePolicy`
- `Task`

### Clarification and mailbox flow

- `TaskMessage`
- `TaskMessageKind`
- `TaskMessageAck`

## Downstream Shadow Types That Should Converge On Protocol Ownership

These types currently duplicate protocol-owned fields closely enough that new
schema changes should be driven from `monarchic-agent-protocol` first and then
adopted downstream.

### `libmonarchic`

File: [campaign_contracts.rs](../../libmonarchic/libmonarchic/src/campaign_contracts.rs)

- `CampaignTaskContract`
- `CampaignSkillBinding`

Reason:
- these mirror canonical task and required-skill fields now owned by
  `Task` and `CampaignPipelineTaskRef`

File: [bootstrap_plan.rs](../../libmonarchic/libmonarchic/src/bootstrap_plan.rs)

- `BootstrapPlanningContext`
- `BootstrapTemplateContext`
- `BootstrapTemplateSlotContext`
- `BootstrapTemplateConnectionContext`
- `BootstrapTemplateLaneContext`

Reason:
- these carry protocol-owned planning fields and should be treated as
  shared-lib adoption targets rather than independent schema authorities

### `monarchic-tui`

File: [pipeline.rs](../../monarchic-tui/monarchic-tui/crates/monarchic-tui-client/src/pipeline.rs)

- `PipelineSpec`
- `PipelineTask`
- `PipelineConnection`
- `PipelineConnectionKind`
- `PipelineGatePolicy`
- `PipelineGate`
- `PipelineTaskSkill`
- `PipelineTaskMcp`
- `PipelineFilesystemPolicy`

Reason:
- these are direct campaign-spec mirrors and should converge on
  `CampaignPipelineSpec`, `CampaignPipelineTaskRef`, and `Task`

### `monarchic-orchestrator`

File: [main.rs](../../monarchic-orchestrator/monarchic-orchestrator/src/main.rs)

- `TaskMailboxMessage`
- `TaskMailboxAck`

Reason:
- these shadow the mailbox protocol already owned by `TaskMessage` and
  `TaskMessageAck`

## Intentional Local Wrappers

These types can remain local because they add runtime-only or reporting-only
state that the protocol should not own.

### `libmonarchic`

- `ValidatedBootstrapPlanningContext`
- `ValidatedBootstrapPlan`
- `ValidatedCampaignPipeline`
- `BootstrapPlanLaunchResolutionMetadata`
- `BootstrapLaunchStagingPaths`
- `CampaignPipelineContractSummary`
- `CampaignRoleOverlayEntry`

Reason:
- validation state, synthesized metadata, and support-root overlays are runtime
  concerns, not wire contracts

### `monarchic-tui`

- `PipelineBootstrap`
- `PipelineHistoryEntry`
- `PipelineSnapshot`
- `PipelineGenerationInputs`
- `PipelineGenerationOutputs`
- `PipelineGenerationContract`
- `PipelineSpecContract`
- `PipelineBootstrapContract`
- `PipelineHistoryContract`
- `SelectedRun*` state in `app.rs`

Reason:
- these combine execution summaries, recovery state, UI rendering, and
  compatibility/reporting views that intentionally exceed the protocol boundary

### `monarchic-orchestrator`

- `Pipeline`
- `PipelineTask`
- `PipelineReport`
- `TaskRunReport`
- `TaskExecutionRouting`

Reason:
- these are executor-local runtime, scheduling, or reporting helpers
- when they touch protocol-owned fields, they should translate from protocol
  contracts instead of becoming schema authorities themselves

## Adoption Rule

When a downstream repo needs to change a bootstrap or campaign machine-owned
field:

1. update `monarchic-agent-protocol` first if the field belongs to a
   protocol-owned contract above
2. update downstream adopters after the protocol shape lands
3. keep reporting-only or runtime-only wrappers local unless they are starting
   to mirror protocol fields one-for-one

## Non-Goals

- This document does not require deleting all downstream wrappers immediately.
- This document does not move runtime validation or UI/reporting summaries into
  the protocol repo.
- This document does not treat compatibility JSON exports as protocol-owned.
