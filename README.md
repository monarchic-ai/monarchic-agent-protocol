# Monarchic AI Protocol

This repository defines the shared, versioned protocol for Monarchic AI. It is the compatibility layer between the orchestrator, runner, and agent roles, so the schemas are minimal and stable while allowing forward-compatible extensions.

## Purpose

- Provide versioned JSON Schemas for language-agnostic validation.
- Provide Rust, TypeScript, and Protobuf bindings that mirror the schemas.
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
- `schemas/v1/monarchic_agent_protocol.proto`

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

## Protobuf

The v1 protobuf schema lives at `schemas/v1/monarchic_agent_protocol.proto`. It mirrors the JSON schema and uses `google.protobuf.Struct` for free-form objects (`inputs`, `constraints`, `evidence`, `extensions`). Additional JSON properties should be stored in the `extensions` field on each message.

Generate bindings (example commands; adjust output directories and protobuf include paths):

- C++: `protoc -I schemas/v1 -I <protobuf include> --cpp_out=gen/cpp schemas/v1/monarchic_agent_protocol.proto`
- Java: `protoc -I schemas/v1 -I <protobuf include> --java_out=gen/java schemas/v1/monarchic_agent_protocol.proto`
- Kotlin: `protoc -I schemas/v1 -I <protobuf include> --kotlin_out=gen/kotlin schemas/v1/monarchic_agent_protocol.proto`
- C#: `protoc -I schemas/v1 -I <protobuf include> --csharp_out=gen/csharp schemas/v1/monarchic_agent_protocol.proto`
- Python: `protoc -I schemas/v1 -I <protobuf include> --python_out=gen/python schemas/v1/monarchic_agent_protocol.proto`
- Go: `protoc -I schemas/v1 -I <protobuf include> --go_out=gen/go --go_opt=paths=source_relative schemas/v1/monarchic_agent_protocol.proto`
- Ruby: `protoc -I schemas/v1 -I <protobuf include> --ruby_out=gen/ruby schemas/v1/monarchic_agent_protocol.proto`
- Objective-C: `protoc -I schemas/v1 -I <protobuf include> --objc_out=gen/objc schemas/v1/monarchic_agent_protocol.proto`
- PHP: `protoc -I schemas/v1 -I <protobuf include> --php_out=gen/php schemas/v1/monarchic_agent_protocol.proto`
- Dart: `protoc -I schemas/v1 -I <protobuf include> --dart_out=gen/dart schemas/v1/monarchic_agent_protocol.proto`
- Rust (prost): use `prost-build` with `schemas/v1/monarchic_agent_protocol.proto` and include the generated module (see `examples/proto/rust/task.rs`).

## Examples

- Rust: `examples/rust/task.rs`
- TypeScript: `examples/ts/task.ts`
- Protobuf C++: `examples/proto/cpp/task.cpp`
- Protobuf Java: `examples/proto/java/TaskExample.java`
- Protobuf Kotlin: `examples/proto/kotlin/TaskExample.kt`
- Protobuf C#: `examples/proto/csharp/TaskExample.cs`
- Protobuf Python: `examples/proto/python/task.py`
- Protobuf Go: `examples/proto/go/task.go`
- Protobuf Ruby: `examples/proto/ruby/task.rb`
- Protobuf Objective-C: `examples/proto/objective-c/TaskExample.m`
- Protobuf PHP: `examples/proto/php/task.php`
- Protobuf Dart: `examples/proto/dart/task.dart`
- Protobuf Rust: `examples/proto/rust/task.rs`

## Validation and tooling

- `nix develop` provides Rust, Node, jq, Python `jsonschema`, and `protoc`.
- `nix flake check` validates JSON schemas and protobuf codegen.
- JSON Schema test: `scripts/test-json-schema.sh`.
- Protobuf codegen test (all languages): `scripts/test-proto.sh`.
