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
- Protobuf C++: `examples/proto/cpp/task.cpp`
- Protobuf Java: `examples/proto/java/TaskExample.java`
- Protobuf Kotlin: `examples/proto/kotlin/TaskExample.kt`
- Protobuf C#: `examples/proto/csharp/TaskExample.cs`
- Protobuf Python: `examples/proto/python/task.py`
- Protobuf Ruby: `examples/proto/ruby/task.rb`
- Protobuf PHP: `examples/proto/php/task.php`
- Protobuf Dart: `examples/proto/dart/task.dart`
- Protobuf Rust: `examples/proto/rust/task.rs`

### Versioning

- Protocol versions live under `schemas/v1/`.
- Each v1 object requires `version: "v1"`.
- New versions must be added under a new directory (e.g. `schemas/v2/`) without changing existing v1 files.

### Schema summary

JSON Schema files are generated from the protobuf definitions. Do not edit them by hand.

Schema files live under `schemas/v1/`:

- `schemas/v1/task.json`
- `schemas/v1/artifact.json`
- `schemas/v1/event.json`
- `schemas/v1/gate_result.json`
- `schemas/v1/run_context.json`
- `schemas/v1/delivery_contract.json`
- `schemas/v1/agent_role.json`
- `schemas/v1/dataset_ref.json`
- `schemas/v1/experiment_spec.json`
- `schemas/v1/eval_result.json`
- `schemas/v1/provenance.json`
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
- `delivery_contract`: typed acceptance and risk contract for autonomous delivery loops
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


### Language bindings

#### Rust

The crate lives at the repo root with sources under `src/rust/lib.rs`.

```rust
use monarchic_agent_protocol::{AgentRole, Task, PROTOCOL_VERSION};

let task = Task {
    version: PROTOCOL_VERSION.to_string(),
    task_id: "task-123".to_string(),
    role: AgentRole::Dev as i32,
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

The v1 protobuf schema lives at `schemas/v1/monarchic_agent_protocol.proto`. It mirrors the JSON schema and uses `google.protobuf.Struct` for free-form objects (`inputs`, `constraints`, `evidence`, `extensions`). Additional JSON properties should be stored in the `extensions` field on each message.

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
- Protobuf codegen test (all languages): `scripts/test-proto.sh`.
- Protobuf codegen (write to `src/<lang>` and regenerate JSON schemas): `scripts/generate-proto.sh`.
- JSON Schema regeneration only: `scripts/generate-json-schema.sh`.
- JSON Schema generation requires `protoc-gen-jsonschema` (install with `go install github.com/chrusty/protoc-gen-jsonschema/cmd/protoc-gen-jsonschema@latest`).

Use the Nix apps (preferred) or the scripts directly:

- `nix run .#generate-proto` (`scripts/generate-proto.sh`): regenerate protobuf outputs into `src/<lang>`.
- `nix run .#generate-json-schema` (`scripts/generate-json-schema.sh`): regenerate JSON Schemas from the protobuf source.
- `nix run .#update-local-hashes` (`scripts/update-local-hashes.sh`): refresh hashes for local build inputs.
- `nix run .#update-version -- <version>` (`scripts/update-version.sh`): bump version across manifests and tags (expects `vX.Y.Z` input).
- `nix run .#update-registry-hashes` (`scripts/update-registry-hashes.sh`): refresh hashes for published registries (npm, crates, PyPI, RubyGems, NuGet, JitPack, GitHub source).

For every schema change, generate protobuf outputs and update local hashes.

For every release, tag the commit, update versions, push, and update registry hashes *after pushing*.

### Nix packages

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
