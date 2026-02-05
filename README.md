# Monarchic AI Protocol

This repository defines the shared, versioned protocol for Monarchic AI. It provides JSON Schemas, Rust types, and TypeScript types that orchestrator, runner, and agent roles use to communicate.

## Versioning

- Protocol versions live under `schemas/v1/`.
- Version is included as a required `version` field set to `"v1"` for all v1 objects.
- New versions must be added under a new directory (e.g. `schemas/v2/`) without changing existing v1 files.

## Schemas

- `schemas/v1/task.json`
- `schemas/v1/artifact.json`
- `schemas/v1/event.json`
- `schemas/v1/gate_result.json`
- `schemas/v1/run_context.json`
- `schemas/v1/agent_role.json`
- `schemas/v1/schema.json` (index)

All schemas allow additional properties for forward compatibility.

## Rust

The crate lives at the repo root.

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
import { Task, AgentRole } from "./ts/index";

const task: Task = {
  version: "v1",
  task_id: "task-123",
  role: "dev",
  goal: "Implement protocol",
};
```

## Validation

The Nix flake provides a dev shell with `ajv` for schema compilation. A check validates that all schemas compile.

