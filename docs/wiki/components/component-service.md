---
page_id: component-component:service
page_type: component
generation_mode: inferred
freshness_status: new
updated_at: 2026-04-12T23:17:54.728Z
---

<details>
<summary>Build metadata</summary>

```json
{
  "freshnessKey": "142d2fecd0949a0491fa90f1844b135d533d33ef",
  "plannerReason": "Generated because the component was ranked as significant for repo navigation.",
  "changedPaths": [
    "src/rust/service.rs",
    "src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "pyproject.toml",
    "Cargo.toml"
  ],
  "dependencyPaths": [
    "src/rust/service.rs",
    "src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "pyproject.toml",
    "Cargo.toml"
  ],
  "dependencyEvidenceIds": [
    "ingest:file:src/rust/service.rs",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "ingest:file:examples/README.md",
    "ingest:file:README.md",
    "ingest:file:scripts/test-ci-schema-validation-hook.sh",
    "ingest:file:scripts/test-examples.sh",
    "ingest:file:scripts/test-json-schema.sh",
    "ingest:file:scripts/test-legacy-unresolved-schema-refs-manifest.sh",
    "ingest:file:scripts/test-legacy-unresolved-schema-refs.sh",
    "ingest:file:scripts/test-pre-commit-schema-json-parse.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-first-command.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-format.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-gate.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-path-helper.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-reason-codes.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-shared-fixtures.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-source-repo-seeding.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-wrapper-ownership.sh",
    "ingest:file:scripts/test-project-state-artifact-done-prefix.sh",
    "ingest:file:scripts/test-project-state-artifact-latest-milestone.sh",
    "ingest:file:scripts/test-project-state-artifact-log-key-order.sh",
    "ingest:file:scripts/test-project-state-artifact-log-summary-traceability.sh",
    "ingest:file:scripts/test-project-state-artifact-milestone-count-types.sh",
    "ingest:file:scripts/test-project-state-artifact-pass-progression.sh",
    "ingest:file:scripts/test-project-state-artifact-proof-gate.sh",
    "ingest:file:scripts/test-project-state-artifact-report-file-list-consistency.sh",
    "ingest:file:scripts/test-project-state-artifact-report-file-path-existence.sh",
    "ingest:file:scripts/test-project-state-artifact-report-new-file-path-existence.sh",
    "ingest:file:scripts/test-project-state-artifact-shared-fixtures.sh",
    "ingest:file:scripts/test-project-state-artifact-source-repo-seeding.sh",
    "ingest:file:scripts/test-project-state-artifact-status-alignment.sh",
    "ingest:file:scripts/test-project-state-artifact-text-fields.sh",
    "ingest:file:scripts/test-project-state-artifact-timestamps.sh",
    "ingest:file:scripts/test-project-state-artifacts.sh",
    "ingest:file:scripts/test-project-state-proof-artifact-reason-codes.sh",
    "ingest:file:scripts/test-project-state-proof-artifacts.sh",
    "ingest:file:scripts/test-proto-availability-smoke.sh",
    "ingest:file:scripts/test-proto.sh",
    "ingest:file:scripts/test-readme-examples-coverage.sh",
    "ingest:file:scripts/test-readme-examples-sync.sh",
    "ingest:file:scripts/test-readme-schema-index-coverage.sh",
    "ingest:file:scripts/test-readme-schema-workflow.sh",
    "ingest:file:scripts/test-ready-for-review-gate-checklist.sh",
    "ingest:file:scripts/test-schema-changelog-format.sh",
    "ingest:file:scripts/test-validate-protocol-json.sh",
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:pyproject.toml",
    "workflow:Cargo.toml"
  ],
  "evidenceIds": [
    "ingest:file:src/rust/service.rs",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "ingest:file:examples/README.md",
    "ingest:file:README.md",
    "ingest:file:scripts/test-ci-schema-validation-hook.sh",
    "ingest:file:scripts/test-examples.sh",
    "ingest:file:scripts/test-json-schema.sh",
    "ingest:file:scripts/test-legacy-unresolved-schema-refs-manifest.sh",
    "ingest:file:scripts/test-legacy-unresolved-schema-refs.sh",
    "ingest:file:scripts/test-pre-commit-schema-json-parse.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-first-command.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-format.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-gate.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-path-helper.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-reason-codes.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-shared-fixtures.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-source-repo-seeding.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-wrapper-ownership.sh",
    "ingest:file:scripts/test-project-state-artifact-done-prefix.sh",
    "ingest:file:scripts/test-project-state-artifact-latest-milestone.sh",
    "ingest:file:scripts/test-project-state-artifact-log-key-order.sh",
    "ingest:file:scripts/test-project-state-artifact-log-summary-traceability.sh",
    "ingest:file:scripts/test-project-state-artifact-milestone-count-types.sh",
    "ingest:file:scripts/test-project-state-artifact-pass-progression.sh",
    "ingest:file:scripts/test-project-state-artifact-proof-gate.sh",
    "ingest:file:scripts/test-project-state-artifact-report-file-list-consistency.sh",
    "ingest:file:scripts/test-project-state-artifact-report-file-path-existence.sh",
    "ingest:file:scripts/test-project-state-artifact-report-new-file-path-existence.sh",
    "ingest:file:scripts/test-project-state-artifact-shared-fixtures.sh",
    "ingest:file:scripts/test-project-state-artifact-source-repo-seeding.sh",
    "ingest:file:scripts/test-project-state-artifact-status-alignment.sh",
    "ingest:file:scripts/test-project-state-artifact-text-fields.sh",
    "ingest:file:scripts/test-project-state-artifact-timestamps.sh",
    "ingest:file:scripts/test-project-state-artifacts.sh",
    "ingest:file:scripts/test-project-state-proof-artifact-reason-codes.sh",
    "ingest:file:scripts/test-project-state-proof-artifacts.sh",
    "ingest:file:scripts/test-proto-availability-smoke.sh",
    "ingest:file:scripts/test-proto.sh",
    "ingest:file:scripts/test-readme-examples-coverage.sh",
    "ingest:file:scripts/test-readme-examples-sync.sh",
    "ingest:file:scripts/test-readme-schema-index-coverage.sh",
    "ingest:file:scripts/test-readme-schema-workflow.sh",
    "ingest:file:scripts/test-ready-for-review-gate-checklist.sh",
    "ingest:file:scripts/test-schema-changelog-format.sh",
    "ingest:file:scripts/test-validate-protocol-json.sh",
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:pyproject.toml",
    "workflow:Cargo.toml"
  ],
  "qualityWarnings": []
}

```
</details>

# Primary Service

Service-like runtime inferred from source filenames and flake support.

## Related Pages

- [components](components.md)
- [workflows](workflows.md)
- [interfaces](interfaces.md)
- [dependencies](dependencies.md)

## Implementation Roles

### `src/rust/service.rs`
Role classification: inferred execution boundary.
Proved signals:
- Matched an inferred entrypoint or entrypoint symbol in `src/rust/service.rs`.
- Exports 8 symbols on the visible component surface.
Why this role fits: These proved signals suggest this unit is a first-hop execution boundary that receives control and hands it into component logic.
Supporting implementation citations:
- `src/rust/service.rs:276`

<details>
<summary>Related files:</summary>

- `src/rust/service.rs`
</details>

<details>
<summary>Citations:</summary>

- `src/rust/service.rs:276`
</details>

## Module Responsibilities

### `src/rust/service.rs`
Role: Entrypoint and orchestration.
Primary behavior: Exports `PrincipalRef` (class), `TenantRef` (class), `AuthMechanism` (class), which makes this one of the visible implementation surfaces for `Primary Service`.
Why this module matters: Matched as an inferred entrypoint for this component. 8 exported symbols make this file part of the component's public surface.
Supporting implementation citations:
- `src/rust/service.rs:9`
- `src/rust/service.rs:46`
- `src/rust/service.rs:77`

<details>
<summary>Related files:</summary>

- `src/rust/service.rs`
</details>

<details>
<summary>Citations:</summary>

- `src/rust/service.rs:9`
- `src/rust/service.rs:46`
- `src/rust/service.rs:77`
</details>

## Key Symbols

Insufficient evidence to infer key symbol behavior confidently.

<details>
<summary>Supporting citations:</summary>

- none
</details>


## State Boundaries

Insufficient evidence to infer state boundaries confidently.

<details>
<summary>Supporting citations:</summary>

- none
</details>


## State Ownership and Handoffs

Insufficient evidence to infer state ownership and handoffs confidently.

<details>
<summary>Supporting citations:</summary>

- none
</details>


## Request Lifecycle

Insufficient evidence to infer a bounded request lifecycle confidently.

<details>
<summary>Supporting citations:</summary>

- none
</details>


## Responsibilities

Service-like runtime inferred from source filenames and flake support.

Type: service
Root path: `src`
Ecosystem: node

<details>
<summary>Related files:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs`
</details>

<details>
<summary>Citations:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
</details>

## Entrypoints and Runtime Surface

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs`

<details>
<summary>Related files:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs`
</details>

<details>
<summary>Citations:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
</details>

## Interfaces and Config

- none

## Dependencies and Relationships

- `component:docs` documents `component:service` (medium)
- `repository` contains `component:service` (high)
- `component:tests` tests `component:service` (high)
- `component:service` depends_on `component:external:rust:serde` (medium)

<details>
<summary>Related files:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs`
</details>

<details>
<summary>Citations:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
</details>

## Why This Hotspot Matters

Insufficient evidence to explain this component as a hotspot confidently.

<details>
<summary>Supporting citations:</summary>

- none
</details>


## Operational Risk Surface

Insufficient evidence to infer operational risk surface confidently.

<details>
<summary>Supporting citations:</summary>

- none
</details>


## Invariants and Failure Handling

Insufficient evidence to infer invariants and failure handling confidently.

<details>
<summary>Supporting citations:</summary>

- none
</details>


## Where to Edit

Likely change entry files:
- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs`

Owned interfaces:
- none

Nearby verification surfaces:
- Validate with `dotnet test Monarchic.AgentProtocol.csproj` (test) from `.`.
- Validate with `gradle test` (test) from `.`.

<details>
<summary>Supporting citations:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
- `Cargo.toml`
</details>

<details>
<summary>Related files:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
- `Cargo.toml`
</details>

<details>
<summary>Citations:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
- `Cargo.toml`
</details>

## Change Planning

Impacted areas:
- Downstream components likely affected: `serde`.

Suggested verification steps:
- Validate with `dotnet test Monarchic.AgentProtocol.csproj` (test) from `.`.
- Validate with `gradle test` (test) from `.`.

<details>
<summary>Supporting citations:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
- `Cargo.toml`
</details>

<details>
<summary>Related files:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
- `Cargo.toml`
</details>

<details>
<summary>Citations:</summary>

- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
- `Cargo.toml`
</details>

## Nearby Workflows

- none

## Citations

<details>
<summary>Citations:</summary>

- `src/rust/service.rs:276`
- `src/rust/service.rs:9`
- `src/rust/service.rs:46`
- `src/rust/service.rs:77`
- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
- `Cargo.toml`
</details>
