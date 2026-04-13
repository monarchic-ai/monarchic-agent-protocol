---
page_id: change-guide
page_type: change-guide
generation_mode: inferred
freshness_status: new
updated_at: 2026-04-12T23:17:57.285Z
---

<details>
<summary>Build metadata</summary>

```json
{
  "freshnessKey": "6a5fe55a00b74db4e8099f0090dfe6a54c843289",
  "plannerReason": "Generated when deterministic critical-component, edit-surface, and validation evidence is strong enough to assemble a bounded change-oriented reader path.",
  "changedPaths": [
    "src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "scripts/test-ci-schema-validation-hook.sh",
    "scripts/test-examples.sh",
    "scripts/test-json-schema.sh",
    "scripts/test-legacy-unresolved-schema-refs-manifest.sh",
    "Cargo.toml",
    "flake.nix",
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "pyproject.toml"
  ],
  "dependencyPaths": [
    "src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "scripts/test-ci-schema-validation-hook.sh",
    "scripts/test-examples.sh",
    "scripts/test-json-schema.sh",
    "scripts/test-legacy-unresolved-schema-refs-manifest.sh",
    "Cargo.toml",
    "flake.nix",
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "pyproject.toml"
  ],
  "dependencyEvidenceIds": [
    "ingest:file:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
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
    "component:Cargo.toml",
    "workflow:flake.nix",
    "workflow:Cargo.toml",
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:pyproject.toml"
  ],
  "evidenceIds": [
    "ingest:file:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
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
    "component:Cargo.toml",
    "workflow:flake.nix",
    "workflow:Cargo.toml",
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:pyproject.toml"
  ],
  "qualityWarnings": []
}

```
</details>

# Change Guide

Task-first guide for making bounded changes in monarchic-agent-protocol.

## Related Pages

- [components](components.md)
- [validation](validation.md)
- [playbook](playbook.md)
- [workflows](workflows.md)

## Change Priorities

1. `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src`: Hotspot score 684 with 114 inbound and 114 outbound inferred edges. Touches 3 inferred dependency edges.
2. `Tests`: Hotspot score 48 with 2 inbound and 14 outbound inferred edges. Touches 80 inferred dependency edges.
3. `serde`: Hotspot score 78 with 22 inbound and 2 outbound inferred edges. Shows up in 3 inferred workflows. Touches 27 inferred dependency edges.

<details>
<summary>Related files:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `scripts/test-legacy-unresolved-schema-refs-manifest.sh`
- `Cargo.toml`
- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

<details>
<summary>Citations:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `Cargo.toml`
- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

## Where to Start Editing

- Start with `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src` via `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go`. Then read [src/go/github.com/monarchic-ai/monarchic-agent-protocol/src](components/src-go-github.com-monarchic-ai-monarchic-agent-protocol-src.md) for the bounded component guide.
- Start with `Tests` via `scripts/test-ci-schema-validation-hook.sh`, `scripts/test-examples.sh`. Then read [Tests](components/tests.md) for the bounded component guide.
- Start with `serde` via `Cargo.toml`. Then read [serde](components/external-rust-serde.md) for the bounded component guide.

<details>
<summary>Related files:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `scripts/test-legacy-unresolved-schema-refs-manifest.sh`
- `Cargo.toml`
- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

<details>
<summary>Citations:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `Cargo.toml`
- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

## Validation Order

1. Fast feedback: run `nix build .#default` (build) from `.`.
1. Fast feedback: run `nix flake check` (check) from `.`.
2. Behavioral verification: run `dotnet test Monarchic.AgentProtocol.csproj` (test) from `.`.
2. Behavioral verification: run `gradle test` (test) from `.`.
3. Release-safety validation: run `nix build .#default` (build) from `.`.
3. Release-safety validation: run `cargo build` (build) from `.`.

<details>
<summary>Related files:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `scripts/test-legacy-unresolved-schema-refs-manifest.sh`
- `Cargo.toml`
- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

<details>
<summary>Citations:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `Cargo.toml`
- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

## Common Change Paths

### 1. Modify validation flow for `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src`

Start here:
- Open `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go` first; it is the strongest workflow or owning file tied to the current validation path.
- Then cross-check [validation](validation.md) and [src/go/github.com/monarchic-ai/monarchic-agent-protocol/src](components/src-go-github.com-monarchic-ai-monarchic-agent-protocol-src.md) before changing the command order or scope.

Likely files:
- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go`
- `flake.nix`
- `Cargo.toml`

Risk boundary:
- Validation changes cover hotspot-heavy behavior for `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src`, which currently carries score 684.
- A weaker validation path can miss regressions that ripple into `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src`, `Documentation`, `Tests`.
- Release-safety checks are part of the current confidence boundary, so removing or weakening them can raise publish or deploy risk.

Validate with:
- Run `nix build .#default` (build) from `.`.
- Run `dotnet test Monarchic.AgentProtocol.csproj` (test) from `.`.

<details>
<summary>Supporting citations:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `flake.nix`
- `Cargo.toml`
- `Monarchic.AgentProtocol.csproj`
</details>

<details>
<summary>Related files:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go`
- `flake.nix`
- `Cargo.toml`
- `Monarchic.AgentProtocol.csproj`
</details>

<details>
<summary>Citations:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `flake.nix`
- `Cargo.toml`
- `Monarchic.AgentProtocol.csproj`
</details>

## Citations

<details>
<summary>Citations:</summary>

- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `Cargo.toml`
- `flake.nix`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>
