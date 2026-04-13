---
page_id: playbook
page_type: playbook
generation_mode: inferred
freshness_status: new
updated_at: 2026-04-12T23:17:57.274Z
---

<details>
<summary>Build metadata</summary>

```json
{
  "freshnessKey": "01682cbb969e3855a87a05ddc9cd39be484304be",
  "plannerReason": "Generated when enough workflow, runtime, and hotspot evidence exists to assemble an operational guide.",
  "changedPaths": [
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "flake.nix",
    "pyproject.toml",
    "src/csharp/MonarchicAgentProtocol.cs",
    "src/dart/lib/monarchic_agent_protocol.dart",
    "src/dart/lib/monarchic_agent_protocol.pb.dart",
    "scripts/test-ci-schema-validation-hook.sh",
    "scripts/test-examples.sh",
    "scripts/test-json-schema.sh",
    "src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "src/go/go.mod",
    "src/go/go.sum",
    "src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "src/rust/service.rs",
    "Cargo.toml"
  ],
  "dependencyPaths": [
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "flake.nix",
    "pyproject.toml",
    "src/csharp/MonarchicAgentProtocol.cs",
    "src/dart/lib/monarchic_agent_protocol.dart",
    "src/dart/lib/monarchic_agent_protocol.pb.dart",
    "scripts/test-ci-schema-validation-hook.sh",
    "scripts/test-examples.sh",
    "scripts/test-json-schema.sh",
    "src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "src/go/go.mod",
    "src/go/go.sum",
    "src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "src/rust/service.rs",
    "Cargo.toml"
  ],
  "dependencyEvidenceIds": [
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:flake.nix",
    "workflow:pyproject.toml",
    "ingest:file:src/csharp/MonarchicAgentProtocol.cs",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pb.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbenum.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbjson.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "ingest:file:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "ingest:file:src/go/go.mod",
    "ingest:file:src/go/go.sum",
    "ingest:file:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
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
    "component:src/go/go.mod",
    "ingest:file:src/rust/service.rs",
    "component:Cargo.toml"
  ],
  "evidenceIds": [
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:flake.nix",
    "workflow:pyproject.toml",
    "ingest:file:src/csharp/MonarchicAgentProtocol.cs",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pb.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbenum.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbjson.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "ingest:file:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "ingest:file:src/go/go.mod",
    "ingest:file:src/go/go.sum",
    "ingest:file:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
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
    "component:src/go/go.mod",
    "ingest:file:src/rust/service.rs",
    "component:Cargo.toml"
  ],
  "qualityWarnings": []
}

```
</details>

# Playbook

Operational guide for validating and debugging monarchic-agent-protocol.

## Related Pages

- [workflows](workflows.md)
- [testing](testing.md)
- [runtime](runtime.md)
- [components](components.md)

## Validation Order

1. Run `dotnet test Monarchic.AgentProtocol.csproj` (test) from `.`.
2. Run `gradle test` (test) from `.`.
3. Run `nix build .#default` (build) from `.`.
4. Run `nix flake check` (check) from `.`.
5. Run `python -m pytest` (test) from `.`.

<details>
<summary>Related files:</summary>

- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `flake.nix`
- `pyproject.toml`
</details>

<details>
<summary>Citations:</summary>

- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `flake.nix`
- `pyproject.toml`
</details>

## Debugging Entrypoints

- Start from workflow `nix develop` (dev-shell).
- Inspect src at `src`.
- Inspect Tests at `tests`.
- Inspect github.com/monarchic-ai/monarchic-agent-protocol/src/go at `src/go`.
- Inspect Primary Service at `src` via `src/dart/lib/monarchic_agent_protocol.pbserver.dart`.

<details>
<summary>Related files:</summary>

- `flake.nix`
- `src/csharp/MonarchicAgentProtocol.cs`
- `src/dart/lib/monarchic_agent_protocol.dart`
- `src/dart/lib/monarchic_agent_protocol.pb.dart`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go`
- `src/go/go.mod`
- `src/go/go.sum`
- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs`
</details>

<details>
<summary>Citations:</summary>

- `flake.nix`
- `src/csharp/MonarchicAgentProtocol.cs`
- `src/dart/lib/monarchic_agent_protocol.dart`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `src/go/go.mod`
- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
</details>

## Change-Safety Notes

- src/go/github.com/monarchic-ai/monarchic-agent-protocol/src: score 684; validate around inbound 114, outbound 114, and 0 bridged subsystem boundaries.
- src: score 81; validate around inbound 2, outbound 23, and 2 bridged subsystem boundaries.
- serde: score 78; validate around inbound 22, outbound 2, and 2 bridged subsystem boundaries.

<details>
<summary>Related files:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go`
- `src/csharp/MonarchicAgentProtocol.cs`
- `src/dart/lib/monarchic_agent_protocol.dart`
- `src/dart/lib/monarchic_agent_protocol.pb.dart`
- `Cargo.toml`
</details>

<details>
<summary>Citations:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `src/csharp/MonarchicAgentProtocol.cs`
- `src/dart/lib/monarchic_agent_protocol.dart`
- `Cargo.toml`
</details>

## Citations

<details>
<summary>Citations:</summary>

- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `flake.nix`
- `pyproject.toml`
- `src/csharp/MonarchicAgentProtocol.cs`
- `src/dart/lib/monarchic_agent_protocol.dart`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `src/go/go.mod`
- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
- `Cargo.toml`
</details>
