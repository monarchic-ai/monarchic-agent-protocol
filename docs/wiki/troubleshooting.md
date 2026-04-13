---
page_id: troubleshooting
page_type: troubleshooting
generation_mode: inferred
freshness_status: new
updated_at: 2026-04-12T23:17:57.286Z
---

<details>
<summary>Build metadata</summary>

```json
{
  "freshnessKey": "413f038c46907351ac53e8cc83f4be889b814661",
  "plannerReason": "Generated when enough deterministic runtime, hotspot, and validation evidence exists to assemble a bounded troubleshooting guide.",
  "changedPaths": [
    "flake.nix",
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
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
    "flake.nix",
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
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
    "workflow:flake.nix",
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
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
    "workflow:flake.nix",
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
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

# Troubleshooting

Failure-first inspection guide for monarchic-agent-protocol.

## Related Pages

- [playbook](playbook.md)
- [runtime](runtime.md)
- [components](components.md)
- [testing](testing.md)

## First Inspection Points

- Reproduce the failure through `nix develop` (dev-shell) from `.`.
- Inspect src at `src`.
- Inspect Tests at `tests`.
- Inspect github.com/monarchic-ai/monarchic-agent-protocol/src/go at `src/go`.
- Inspect Primary Service at `src` via `src/dart/lib/monarchic_agent_protocol.pbserver.dart`.

<details>
<summary>Related files:</summary>

- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
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
- `Cargo.toml`
</details>

<details>
<summary>Citations:</summary>

- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
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

## Likely Failure Boundaries

- src/go/github.com/monarchic-ai/monarchic-agent-protocol/src: score 684; watch inbound 114, outbound 114, and 0 bridged subsystem boundaries from `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src`.
- src: score 81; watch inbound 2, outbound 23, and 2 bridged subsystem boundaries from `src`.
- serde: score 78; watch inbound 22, outbound 2, and 2 bridged subsystem boundaries from `external/rust/serde`.
- serde_json: score 72; watch inbound 17, outbound 5, and 2 bridged subsystem boundaries from `external/rust/serde_json`.

<details>
<summary>Related files:</summary>

- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
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
- `Cargo.toml`
</details>

<details>
<summary>Citations:</summary>

- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
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

## Relevant Validation Commands

- Run `dotnet test Monarchic.AgentProtocol.csproj` (test) from `.` after reproducing or patching the issue.
- Run `gradle test` (test) from `.` after reproducing or patching the issue.
- Run `nix build .#default` (build) from `.` after reproducing or patching the issue.
- Run `nix flake check` (check) from `.` after reproducing or patching the issue.
- If needed, re-run `nix develop` to verify the runtime path after the fix.

<details>
<summary>Related files:</summary>

- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
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
- `Cargo.toml`
</details>

<details>
<summary>Citations:</summary>

- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
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

## Citations

<details>
<summary>Citations:</summary>

- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
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
