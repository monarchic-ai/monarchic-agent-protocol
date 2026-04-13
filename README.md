# Monarchic AI Protocol

[![ci](https://github.com/monarchic-ai/monarchic-agent-protocol/actions/workflows/ci.yml/badge.svg)](https://github.com/monarchic-ai/monarchic-agent-protocol/actions/workflows/ci.yml)
[![release](https://github.com/monarchic-ai/monarchic-agent-protocol/actions/workflows/release.yml/badge.svg)](https://github.com/monarchic-ai/monarchic-agent-protocol/actions/workflows/release.yml)

This repository defines the shared, versioned protocol for Monarchic AI. It is the compatibility layer between the orchestrator, runner, and agent roles, so the schemas are minimal and stable while allowing forward-compatible extensions.

## Overview

- Provide versioned JSON Schemas for language-agnostic validation.
- Provide Rust, TypeScript, and Protobuf bindings that mirror the schemas.
- Keep the protocol small and explicit for v1 interoperability.

## Usage

### Quickstart

Install the published package for your language, then use the generated bindings.

### Install

- Rust (crates.io): `cargo add monarchic-agent-protocol`
- TypeScript (npm): `npm install @monarchic-ai/monarchic-agent-protocol`
- Python (PyPI): `pip install monarchic-agent-protocol`
- Ruby (RubyGems): `gem install monarchic-agent-protocol`
- Go (Go modules): `go get github.com/monarchic-ai/monarchic-agent-protocol/src/go@vX.Y.Z`
- Java/Kotlin (JitPack): `implementation("com.github.monarchic-ai:monarchic-agent-protocol:vX.Y.Z")`
- .NET (NuGet): `dotnet add package Monarchic.AgentProtocol`
- PHP (Packagist): `composer require monarchic-ai/monarchic-agent-protocol`

### Examples

- Rust: `examples/rust/task.rs`
- TypeScript: `examples/ts/task.ts`
- JSON (non-protobuf): `examples/json/objective_spec.minimal.json`
- Protobuf C++: `examples/proto/cpp/task.cpp`
- Protobuf Java: `examples/proto/java/TaskExample.java`
- Protobuf Kotlin: `examples/proto/kotlin/TaskExample.kt`
- Protobuf C#: `examples/proto/csharp/TaskExample.cs`
- Protobuf Python: `examples/proto/python/task.py`
- Protobuf Ruby: `examples/proto/ruby/task.rb`
- Protobuf PHP: `examples/proto/php/task.php`
- Protobuf Dart: `examples/proto/dart/task.dart`
- Protobuf Rust: `examples/proto/rust/task.rs`

### Non-protobuf language support

For languages that do not use protobuf bindings, exchange protocol objects as JSON and validate payloads against the versioned schemas before handoff.

- Canonical JSON example for non-protobuf consumers: `examples/json/objective_spec.minimal.json`
- Validate a typed payload against a specific schema: `bash scripts/validate-protocol-json.sh schemas/v1/objective_spec.json schemas/fixtures/valid/objective_spec.minimal.json`
- Validate the canonical non-protobuf JSON example: `bash scripts/validate-protocol-json.sh schemas/v1/objective_spec.json examples/json/objective_spec.minimal.json`

Project-state contract fixtures used by the shell verification suite live under `fixtures/project-state/`, not the repo root.

### Versioning

- Protocol versions live under `schemas/v1/`.
- Each v1 object requires `version: "v1"`.
- New versions must be added under a new directory (e.g. `schemas/v2/`) without changing existing v1 files.

### Client boundary contracts

The Rust crate also exposes a frozen client-boundary surface under `monarchic_agent_protocol::client_boundary`.

Frozen v1 client-boundary types:

- `Intent`
- `Plan`
- `PlanStep`
- `ExecutionReceipt`
- `VerificationReceipt`
- `ReviewDecision`
- `RerunScope`
- `BlockedOutcome`
- `ArtifactDescriptor`

Canonical JSON fixtures for these contracts live under `fixtures/client_boundary/v1/`.
The protocol-owned MAP operation handoff bundle for downstream client snapshots
also lives there as `map_operation_bundle.v1.json`.
Legacy runtime compatibility fixtures live under `fixtures/client_boundary/v0/`.

### Durable authority contracts

The Rust crate also exposes a frozen durable-authority surface under `monarchic_agent_protocol::durable_authority`.

Frozen v1 durable-authority types:

- `FencingToken`
- `Lease`
- `RunLifecycleState`
- `StepLifecycleState`
- `LeaseRejectionReason`
- `RecoveryEvent`

Canonical JSON fixtures for these contracts live under `fixtures/durable_authority/v1/`.

## Lean4 Formalization

A Lean4 proof model now lives under `formal/lean/`.

It currently formalizes a bounded set of invariants derived from real downstream usage in this workspace:

- client-boundary id safety heuristics
- role normalization aliases
- verification receipt status consistency
- terminal lifecycle sink behavior
- plan dependency grounding
- protobuf message well-formedness and cross-message integrity
- protobuf lifecycle transitions and bounded lease control-plane safety
- protobuf request/report admissibility and fencing-token monotonicity
- bounded protobuf control-plane trace safety and authority preservation
- inductive consistency preservation over protobuf control-plane event traces
- continuous active-authority traces preserve the bound `(run_id, step_id, task_id)` scope
- a checked protobuf coverage manifest makes the currently formalized subset explicit relative to the full `.proto` surface
- the schema-side Lean coverage manifest is generated from `schemas/v1/monarchic_agent_protocol.proto` and validated in CI

See `docs/lean4-formal-verification.md` for scope and usage.

### Schema summary

JSON Schema files are generated from the protobuf definitions. Do not edit them by hand.

Schema files live under `schemas/v1/`:

- `schemas/v1/task.json`
- `schemas/v1/artifact.json`
- `schemas/v1/event.json`
- `schemas/v1/gate_result.json`
- `schemas/v1/failure_class.json`
- `schemas/v1/plan_status.json`
- `schemas/v1/failure_detail.json`
- `schemas/v1/role_provenance.json`
- `schemas/v1/plan_provenance.json`
- `schemas/v1/plan_step.json`
- `schemas/v1/plan.json`
- `schemas/v1/execution_receipt.json`
- `schemas/v1/run_context.json`
- `schemas/v1/run_outcome.json`
- `schemas/v1/delivery_contract.json`
- `schemas/v1/agent_role.json`
- `schemas/v1/dataset_ref.json`
- `schemas/v1/experiment_spec.json`
- `schemas/v1/objective_spec.json`
- `schemas/v1/eval_result.json`
- `schemas/v1/provenance.json`
- `schemas/v1/schema.json` (index)
- `schemas/v1/monarchic_agent_protocol.proto`

All schemas allow additional properties for forward compatibility.

### Schema index coverage

`schemas/v1/schema.json` is the canonical top-level JSON schema index. Its `oneOf` entries currently cover:

- `schemas/v1/task.json`
- `schemas/v1/artifact.json`
- `schemas/v1/event.json`
- `schemas/v1/gate_result.json`
- `schemas/v1/failure_class.json`
- `schemas/v1/plan_status.json`
- `schemas/v1/failure_detail.json`
- `schemas/v1/role_provenance.json`
- `schemas/v1/plan_provenance.json`
- `schemas/v1/plan_step.json`
- `schemas/v1/plan.json`
- `schemas/v1/execution_receipt.json`
- `schemas/v1/run_context.json`
- `schemas/v1/dataset_ref.json`
- `schemas/v1/experiment_spec.json`
- `schemas/v1/objective_spec.json`
- `schemas/v1/eval_result.json`
- `schemas/v1/provenance.json`

`schemas/v1/agent_role.json` is a shared schema used by `task.json`.
`schemas/v1/failure_class.json` is a shared schema used by `event.json` and `gate_result.json`.

### TaskMessage and TaskMessageAck

These types define the shared contract for orchestrator-mediated runner
communication.

They are intended for:

- durable handoff messages between active tasks
- clarification requests and responses
- blocker notices
- artifact-ready notifications
- explicit acknowledgement state

They are not intended to imply direct peer-to-peer runner transport. The
protocol defines the message shape, but routing, persistence, and delivery are
owned by the orchestrator.

`TaskMessage` carries:

- sender and recipient task ids
- message kind
- optional subject/body
- referenced artifact ids
- optional reply chaining
- acknowledgement requirement

`TaskMessageAck` records recipient acknowledgement state separately so mailbox
delivery can remain append-only and auditable.

Recommended acknowledgement semantics:

- `received`: the recipient has seen the message in its inbox
- `accepted`: the recipient accepts the request and plans to act on it
- `rejected`: the recipient explicitly declines or cannot act on it
- `resolved`: the recipient completed the requested follow-up or supplied the
  final response

Recommended routing semantics:

- message ids should be unique within one run
- sender and recipient should be tasks from the same run
- `reply_to`, when present, should reference an earlier message id from the
  same run log
- `requires_ack=true` should imply at least one corresponding
  `TaskMessageAck` record from the recipient

### AgentRole

Enum values:

- `product_owner`
- `project_manager`
- `dev`
- `qa`
- `reviewer`
- `security`
- `ops`
- `publisher`

Example:

```json
{
  "role": "reviewer"
}
```

### PipelineSpec

Represents a planned pipeline before execution.

Required fields:

- `version`: `"v1"`
- `pipeline_id`: stable identifier
- `objective`: human-readable campaign or pipeline objective
- `project_key`: member/project scope identifier
- `tasks`: ordered `PipelineTask[]`

This is the shared planning shape that bootstrap generation, orchestration
validation, and UI preview should converge on.

Current shared planning fields now include:

- `PipelineSpec`
- `PipelineTask`
- `TaskDependency`
- `SkillRef`
- `RoleDefinition`
- `ResolvedRoleBundle`

These are available in the protobuf and language bindings even where the checked-in
JSON Schema index has not yet been expanded to cover each planning helper type.

### RoleDefinition and ResolvedRoleBundle

These types provide the shared contract between:

- role catalogs in `monarchic-agent-roles`
- orchestration-time validation
- runner-time execution bundles

`RoleDefinition` describes a canonical role, its capabilities, and its declared
skill requirements. `ResolvedRoleBundle` is the runtime handoff shape that can
pair a concrete role definition with the resolved skills and rendered template
path used for one task execution.

### Canonical Pipeline Layout

`PipelineSpec` and `PipelineTask` are now the canonical role-aware planning
layout across the stack.

For compatibility, older minimal pipeline files may still only carry:

- `pipeline_id`
- `tasks[].id`
- `tasks[].task`

But once a pipeline opts into the role-aware contract by declaring any of:

- `objective`
- `project_key`
- `tasks[].role`
- `tasks[].goal`
- `tasks[].required_skills`

the intended canonical shape is:

- `PipelineSpec.objective`: required, non-empty
- `PipelineSpec.project_key`: required, non-empty
- `PipelineTask.role`: required, non-empty
- `PipelineTask.goal`: required, non-empty
- `PipelineTask.required_skills`: optional list of `SkillRef`, but when present it
  must be internally well-formed and deduplicated

This is the contract `monarch` should generate, `monarchic-orchestrator` should
validate, and `monarchic-runner` should ultimately execute through resolved role
bundles.

### Task

Represents work assigned to an agent.

Required fields:

- `version`: `"v1"`
- `task_id`: stable identifier
- `role`: `AgentRole`
- `goal`: human-readable objective

Optional fields:

- `inputs`: free-form object
- `constraints`: free-form object
- `gates_required`: list of gate names to run (ex: `["qa", "security"]`)
- `run_context`: `RunContext`
- `objective_spec`: objective scoring contract for deterministic outcome evaluation
- `experiment_spec`: typed experiment design contract for deterministic in silico runs

Example:

```json
{
  "version": "v1",
  "task_id": "task-123",
  "role": "dev",
  "goal": "Implement protocol types",
  "inputs": {
    "issue": "https://example.com/issues/42"
  },
  "constraints": {
    "no_network": true
  },
  "gates_required": ["qa", "security"],
  "run_context": {
    "version": "v1",
    "repo": "monarchic-agent-protocol",
    "worktree": "/worktrees/task-123",
    "image": "ghcr.io/monarchic/runner:stable",
    "runner": "vm-runner-01",
    "labels": ["linux", "rust"]
  }
}
```

### DeliveryContract

Typed acceptance contract for autonomous delivery execution.

Required fields:

- `objective`: plain-language objective statement
- `definition_of_done`: ordered completion checklist
- `required_checks`: required gate/check names for merge readiness
- `risk_tier`: `low | medium | high | critical`

Optional fields include cycle/turn budgets (`max_cycle_minutes`, `max_agent_turns`) and PR/review/rollback strategy hints.

### RunContext

Execution hints for a runner.

Required fields:

- `version`: `"v1"`
- `repo`: repository identifier or URL
- `worktree`: worktree path or identifier
- `image`: VM/container image reference
- `runner`: runner identifier

Optional fields:

- `labels`: list of labels or tags

Example:

```json
{
  "version": "v1",
  "repo": "monarchic-agent-protocol",
  "worktree": "/worktrees/task-123",
  "image": "ghcr.io/monarchic/runner:stable",
  "runner": "vm-runner-01",
  "labels": ["linux", "rust"]
}
```

### Artifact

Outputs produced by an agent or runner.

Required fields:

- `version`: `"v1"`
- `artifact_id`: stable identifier
- `type`: artifact type (ex: `patch`, `log`, `report`)
- `summary`: short description
- `path`: path or locator for the artifact
- `task_id`: task identifier that produced it
- `provenance`: typed provenance hashes and runtime metadata
- `dataset_refs`: datasets used while producing the artifact
- `eval_results`: typed metric outputs with optional uncertainty bounds
- `experiment_spec`: optional copy of experiment contract used for this output

Example:

```json
{
  "version": "v1",
  "artifact_id": "artifact-987",
  "type": "patch",
  "summary": "Adds v1 protocol schemas",
  "path": "artifacts/task-123/patch.diff",
  "task_id": "task-123"
}
```

### Event

Lifecycle state updates.

Required fields:

- `version`: `"v1"`
- `event_type`: event category
- `timestamp`: ISO 8601 timestamp
- `task_id`: task identifier
- `status`: state label

Optional fields:

- `message`: human-readable details
- `provenance`: typed runtime/source hashes for event attribution
- `eval_results`: optional metric snapshot payloads
- `failure_class`: typed failure taxonomy payload for machine-actionable triage

Example:

```json
{
  "version": "v1",
  "event_type": "task_started",
  "timestamp": "2025-01-14T15:04:05Z",
  "task_id": "task-123",
  "status": "running",
  "message": "Runner started VM"
}
```

### GateResult

Outcome of QA, review, security, or other gates.

Required fields:

- `version`: `"v1"`
- `gate`: gate name
- `status`: pass/fail or other gate-specific status

Optional fields:

- `reason`: short explanation
- `failure_class`: typed failure taxonomy payload for deterministic failure routing
- `evidence`: free-form object with supporting data

Example:

```json
{
  "version": "v1",
  "gate": "security",
  "status": "pass",
  "reason": "No high or critical findings",
  "evidence": {
    "scanner": "trivy",
    "report_path": "artifacts/task-123/security.json"
  }
}
```

### FailureClass

Typed taxonomy payload for classifying protocol failures.

Required fields:

- `category`: `validation`, `dependency`, `environment`, `timeout`, `conflict`, `permission`, `resource`, `internal`, or `unknown`
- `code`: stable machine-readable failure code
- `retryable`: whether automated retry is expected to be useful

Optional fields include `detail`, `scope`, `source`, and `next_action`.

### PlanStatus

Plan lifecycle status used for typed execution plans and receipts.

Allowed values:

- `unspecified`
- `draft`
- `planned`
- `executing`
- `complete`
- `bounded`
- `failed`
- `cancelled`
- `unknown`

### FailureDetail

Failure detail attached to a plan or receipt.

Required fields:

- `class`: one of `validation`, `execution`, `agent`, `infra`, `policy`, or `unknown`
- `code`: machine-readable failure code
- `message`: operator-readable failure message

Optional fields:

- `details`: bounded extension object with implementation diagnostics

### RoleProvenance

Role metadata for deterministic role-template binding.

Required fields:

- `role_name`
- `template_hash`
- `render_hash`

### PlanProvenance

Generation metadata for a plan and policy context.

Required fields:

- `generated_by`
- `generated_at_ms`

Optional fields:

- `policy_profile`
- `role`

### PlanStep

Execution step in a plan, with dependency and template fields.

Required fields:

- `step_id`
- `description`
- `task_template`

Optional fields:

- `depends_on`
- `failure`

### Plan

Canonical plan contract.

Required fields:

- `contract_version`: required contract tag (for now `"v1"`)
- `plan_id`
- `objective`
- `status`
- `created_at_ms`
- `updated_at_ms`
- `provenance`
- `steps`

Optional fields:

- `run_id`

### ExecutionReceipt

Deterministic execution contract for a run.

Required fields:

- `contract_version`: required contract tag (for now `"v1"`)
- `run_id`
- `plan_id`
- `plan_hash`
- `task_hashes`
- `artifact_hashes`
- `outcome_hash`
- `status`
- `generated_at_ms`

Optional fields:

- `failure`

### DatasetRef

Reference to a dataset used by an experiment or output artifact.

Required fields:

- `dataset_id`
- `sha256`
- `format`

Optional fields include `uri`, `split`, `size_bytes`, and `description`.

### ExperimentSpec

Typed contract for model design and acceptance checks.

Required fields:

- `experiment_id`
- `objective`
- `dataset_refs`: list of `DatasetRef`
- `acceptance`: metric threshold policy

Optional fields include `hypothesis`, `model_family`, `seeds`, and free-form `constraints`.

### ObjectiveSpec

Typed objective scoring contract for progress/outcome checks.

Required fields:

- `metric_key`
- `direction`: `maximize`, `minimize`, or `target`

Optional fields include `target`, `min_delta`, `tolerance`, `report_file`,
`report_task_id`, `weight`, and `description`.

### EvalResult

Typed evaluation output row.

Required fields:

- `metric`
- `value`
- `passed`

Optional fields include `lower_ci`, `upper_ci`, `variance`, `seed`, and `notes`.

### Provenance

Typed provenance contract for reproducibility and traceability.

Required fields:

- `prompt_sha256`
- `code_sha256`
- `runtime`
- `runner`
- `orchestrator`
- `created_at`

Optional fields include dataset hashes/references and command/task/pipeline hashes.

## Rust

The crate lives at the repo root with sources under `src/rust/lib.rs`.

```rust
use monarchic_agent_protocol::{AgentRole, Task, PROTOCOL_VERSION};

let task = Task {
    version: PROTOCOL_VERSION.to_string(),
    task_id: "task-123".to_string(),
    role: AgentRole::Dev as i32,
    role_id: "dev".to_string(),
    goal: "Implement protocol".to_string(),
    inputs: None,
    constraints: None,
    gates_required: Vec::new(),
    run_context: None,
    extensions: Default::default(),
};
```

#### TypeScript

TypeScript bindings are in `src/ts/index.ts`.

```ts
import { Task } from "./src/ts/index";

const task: Task = {
  version: "v1",
  task_id: "task-123",
  role: "dev",
  goal: "Implement protocol",
};
```

#### Go

Go module sources live under `src/go` with module path:

```
github.com/monarchic-ai/monarchic-agent-protocol/src/go
```

#### Protobuf

The v1 protobuf schema lives at `schemas/v1/monarchic_agent_protocol.proto`. Its portable object messages mirror the JSON schema and use `google.protobuf.Struct` for free-form objects (`inputs`, `constraints`, `evidence`, `extensions`). Additional JSON properties should be stored in the `extensions` field on each message.

The protobuf file also contains transport-only service definitions for machine-to-machine control-plane RPC, starting with `RunnerControlService`. Those protobuf-only contracts cover registration, heartbeats, lease acquisition, lease renewal, lease resume, step progress/outcome reporting, and cancellation acknowledgement, and they are not mirrored into the JSON schema index.

The Rust crate published from this repository currently exports protobuf message types. Runtime repositories that need gRPC client/server bindings should generate transport stubs from the canonical proto with their chosen toolchain, such as `tonic-build`.

Language packages are published per registry. Use the registry package for your language instead of generating local outputs.

#### Python (PyPI)

Install the published package and import the generated protobuf bindings:

```python
from monarchic_agent_protocol import monarchic_agent_protocol_pb2 as map_pb2
```

#### Ruby

Ruby bindings live under `src/ruby`.

#### Java/Kotlin

Java/Kotlin sources live under `src/java`.

#### C#

C# sources live under `src/csharp`.

#### PHP

PHP sources live under `src/php`.

#### Dart

Dart sources live under `src/dart`.

## Contributing

### Tooling

- `nix develop` provides Rust, Node, jq, Python `jsonschema`, and `protoc`.
- `nix flake check` validates JSON schemas, protobuf codegen, and package imports (PyPI + Rust + npm + Go).
- JSON Schema test: `scripts/test-json-schema.sh`.
- Language-agnostic schema validation helper: `scripts/validate-protocol-json.sh`.
- Language-agnostic schema validator regression test: `scripts/test-validate-protocol-json.sh`.
- Pre-commit schema JSON parse check: `scripts/pre-commit-schema-json-parse.sh`.
- Pre-commit schema parse smoke test: `scripts/test-pre-commit-schema-json-parse.sh`.
- Schema edit changelog: `schemas/SCHEMA_CHANGELOG.md`.
- Schema changelog format test: `scripts/test-schema-changelog-format.sh`.
- README schema index coverage test: `scripts/test-readme-schema-index-coverage.sh`.
- README examples coverage test: `scripts/test-readme-examples-coverage.sh`.
- README/examples examples synchronization test: `scripts/test-readme-examples-sync.sh`.
- Protobuf codegen test (all languages): `scripts/test-proto.sh`.
- Protobuf availability smoke test: `scripts/test-proto-availability-smoke.sh`.
- Protobuf codegen (write to `src/<lang>`): `scripts/generate-proto.sh`.
- Protobuf codegen (write to `src/<lang>` and regenerate JSON schemas): `scripts/generate-proto.sh`.
- JSON Schema regeneration only: `scripts/generate-json-schema.sh`.
- JSON Schema generation requires `protoc-gen-jsonschema` (install with `go install github.com/chrusty/protoc-gen-jsonschema/cmd/protoc-gen-jsonschema@latest`).

### Schema validation workflow

1. Run full schema lint and semantic checks: `bash scripts/lint-schemas.sh`.
2. Run direct schema fixture checks: `bash scripts/test-json-schema.sh`.
3. Validate language-agnostic payloads through JSON schema: `bash scripts/validate-protocol-json.sh schemas/v1/objective_spec.json schemas/fixtures/valid/objective_spec.minimal.json`.
4. Verify schema validator behavior is deterministic: `bash scripts/test-validate-protocol-json.sh`.
5. Validate staged schema JSON before commit: `bash scripts/pre-commit-schema-json-parse.sh`.
6. Verify pre-commit checker behavior is deterministic: `bash scripts/test-pre-commit-schema-json-parse.sh`.
7. Verify schema changelog entry format: `bash scripts/test-schema-changelog-format.sh`.
8. Verify README schema index coverage stays aligned: `bash scripts/test-readme-schema-index-coverage.sh`.
9. Verify README examples coverage for non-protobuf and protobuf paths: `bash scripts/test-readme-examples-coverage.sh`.
10. Verify README and examples/README example entries stay synchronized: `bash scripts/test-readme-examples-sync.sh`.

## Nix packages

- `packages.default`: Rust crate for protocol types
- `packages.rs-lib`: Rust crate for protocol types (local)
- `packages.rs-registry-lib`: Rust crate from crates.io (registry)
- `packages.py-lib`: installable Python package (local)
- `packages.py-registry-lib`: PyPI package (registry)
- `packages.ts-lib`: TypeScript types package (local)
- `packages.ts-registry-lib`: npm registry package (types-only)
- `packages.go-lib`: Go module (local)
- `packages.go-registry-lib`: Go module from GitHub (registry)
- `packages.rb-lib`: Ruby gem (local)
- `packages.rb-registry-lib`: Ruby gem from RubyGems (registry)
- `packages.java-lib`: Java/Kotlin jar (local)
- `packages.java-registry-lib`: Java/Kotlin jar from JitPack (registry)
- `packages.dart-lib`: Dart package (local)
- `packages.dart-registry-lib`: Dart package from pub.dev (registry)
- `packages.csharp-lib`: C# package sources (local)
- `packages.csharp-registry-lib`: C# package from NuGet (registry)
- `packages.php-lib`: PHP package sources (local)
- `packages.php-registry-lib`: PHP package from Packagist (registry)

### CI and releases

- `.github/workflows/ci.yml` validates JSON schemas, protobuf codegen, and runs `cargo test`.
- `.github/workflows/release.yml` publishes language packages.
  - Python publishing is implemented for PyPI; other language registry steps are scaffolded.

## License

LGPL-3.0-only
