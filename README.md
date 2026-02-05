# Monarchic AI Protocol

This repository defines the shared, versioned protocol for Monarchic AI. It is the compatibility layer between the orchestrator, runner, and agent roles, so the schemas are minimal and stable while allowing forward-compatible extensions.

## Purpose

- Provide versioned JSON Schemas for language-agnostic validation.
- Provide Rust and TypeScript bindings that mirror the schemas.
- Keep the protocol small and explicit for v1 interoperability.

## Versioning

- Protocol versions live under `schemas/v1/`.
- Each v1 object requires `version: "v1"`.
- New versions must be added under a new directory (e.g. `schemas/v2/`) without changing existing v1 files.

## Protocol v1 schema

Schema files live under `schemas/v1/`:

- `schemas/v1/task.json`
- `schemas/v1/artifact.json`
- `schemas/v1/event.json`
- `schemas/v1/gate_result.json`
- `schemas/v1/run_context.json`
- `schemas/v1/agent_role.json`
- `schemas/v1/schema.json` (index)

All schemas allow additional properties for forward compatibility.

### AgentRole

Enum values:

- `product_owner`
- `project_manager`
- `dev`
- `qa`
- `reviewer`
- `security`
- `ops`

Example:

```json
{
  "role": "reviewer"
}
```

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

## Rust

The crate lives at the repo root in `src/lib.rs`.

```rust
use monarchic_agent_protocol::{AgentRole, Task, PROTOCOL_VERSION};

let task = Task {
    version: PROTOCOL_VERSION.to_string(),
    task_id: "task-123".to_string(),
    role: AgentRole::Dev,
    goal: "Implement protocol".to_string(),
    inputs: None,
    constraints: None,
    gates_required: None,
    run_context: None,
    extensions: Default::default(),
};
```

## TypeScript

TypeScript bindings are in `ts/index.ts`.

```ts
import { Task } from "./ts/index";

const task: Task = {
  version: "v1",
  task_id: "task-123",
  role: "dev",
  goal: "Implement protocol",
};
```

## Validation and tooling

- `nix develop` provides Rust, Node, jq, and Python `jsonschema`.
- `nix flake check` compiles all schemas using Draft 2020-12 validation.
