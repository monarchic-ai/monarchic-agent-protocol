---
page_id: testing
page_type: testing
generation_mode: inferred
freshness_status: new
updated_at: 2026-04-12T23:17:57.273Z
---

<details>
<summary>Build metadata</summary>

```json
{
  "freshnessKey": "f7cca33b2c9e722dd53ccaf50c460afb3e92672a",
  "plannerReason": "Generated because test workflows are critical for validation and agent execution safety.",
  "changedPaths": [
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "pyproject.toml",
    "Cargo.toml",
    "scripts/test-ci-schema-validation-hook.sh",
    "scripts/test-examples.sh",
    "scripts/test-json-schema.sh",
    "scripts/test-legacy-unresolved-schema-refs-manifest.sh",
    "scripts/test-legacy-unresolved-schema-refs.sh",
    "scripts/test-pre-commit-schema-json-parse.sh",
    "scripts/test-project-state-artifact-command-log-first-command.sh",
    "scripts/test-project-state-artifact-command-log-format.sh",
    "scripts/test-project-state-artifact-command-log-gate.sh",
    "scripts/test-project-state-artifact-command-log-path-helper.sh",
    "scripts/test-project-state-artifact-command-log-reason-codes.sh",
    "scripts/test-project-state-artifact-command-log-shared-fixtures.sh",
    "scripts/test-project-state-artifact-command-log-source-repo-seeding.sh",
    "scripts/test-project-state-artifact-command-log-wrapper-ownership.sh",
    "scripts/test-project-state-artifact-done-prefix.sh",
    "scripts/test-project-state-artifact-latest-milestone.sh",
    "scripts/test-project-state-artifact-log-key-order.sh",
    "scripts/test-project-state-artifact-log-summary-traceability.sh",
    "scripts/test-project-state-artifact-milestone-count-types.sh",
    "scripts/test-project-state-artifact-pass-progression.sh"
  ],
  "dependencyPaths": [
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "pyproject.toml",
    "Cargo.toml",
    "scripts/test-ci-schema-validation-hook.sh",
    "scripts/test-examples.sh",
    "scripts/test-json-schema.sh",
    "scripts/test-legacy-unresolved-schema-refs-manifest.sh",
    "scripts/test-legacy-unresolved-schema-refs.sh",
    "scripts/test-pre-commit-schema-json-parse.sh",
    "scripts/test-project-state-artifact-command-log-first-command.sh",
    "scripts/test-project-state-artifact-command-log-format.sh",
    "scripts/test-project-state-artifact-command-log-gate.sh",
    "scripts/test-project-state-artifact-command-log-path-helper.sh",
    "scripts/test-project-state-artifact-command-log-reason-codes.sh",
    "scripts/test-project-state-artifact-command-log-shared-fixtures.sh",
    "scripts/test-project-state-artifact-command-log-source-repo-seeding.sh",
    "scripts/test-project-state-artifact-command-log-wrapper-ownership.sh",
    "scripts/test-project-state-artifact-done-prefix.sh",
    "scripts/test-project-state-artifact-latest-milestone.sh",
    "scripts/test-project-state-artifact-log-key-order.sh",
    "scripts/test-project-state-artifact-log-summary-traceability.sh",
    "scripts/test-project-state-artifact-milestone-count-types.sh",
    "scripts/test-project-state-artifact-pass-progression.sh"
  ],
  "dependencyEvidenceIds": [
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:pyproject.toml",
    "workflow:Cargo.toml"
  ],
  "evidenceIds": [
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:pyproject.toml",
    "workflow:Cargo.toml"
  ],
  "qualityWarnings": []
}

```
</details>

# Testing

Testing guidance for monarchic-agent-protocol.

## Related Pages

- [workflows](workflows.md)

## Test Workflows

- `dotnet test Monarchic.AgentProtocol.csproj`
- `gradle test`
- `python -m pytest`
- `cargo test`

<details>
<summary>Related files:</summary>

- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
- `Cargo.toml`
</details>

<details>
<summary>Citations:</summary>

- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
- `Cargo.toml`
</details>

## Known Test Files

- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `scripts/test-legacy-unresolved-schema-refs-manifest.sh`
- `scripts/test-legacy-unresolved-schema-refs.sh`
- `scripts/test-pre-commit-schema-json-parse.sh`
- `scripts/test-project-state-artifact-command-log-first-command.sh`
- `scripts/test-project-state-artifact-command-log-format.sh`
- `scripts/test-project-state-artifact-command-log-gate.sh`
- `scripts/test-project-state-artifact-command-log-path-helper.sh`
- `scripts/test-project-state-artifact-command-log-reason-codes.sh`
- `scripts/test-project-state-artifact-command-log-shared-fixtures.sh`
- `scripts/test-project-state-artifact-command-log-source-repo-seeding.sh`
- `scripts/test-project-state-artifact-command-log-wrapper-ownership.sh`
- `scripts/test-project-state-artifact-done-prefix.sh`
- `scripts/test-project-state-artifact-latest-milestone.sh`
- `scripts/test-project-state-artifact-log-key-order.sh`
- `scripts/test-project-state-artifact-log-summary-traceability.sh`
- `scripts/test-project-state-artifact-milestone-count-types.sh`
- `scripts/test-project-state-artifact-pass-progression.sh`

<details>
<summary>Related files:</summary>

- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `scripts/test-legacy-unresolved-schema-refs-manifest.sh`
- `scripts/test-legacy-unresolved-schema-refs.sh`
- `scripts/test-pre-commit-schema-json-parse.sh`
- `scripts/test-project-state-artifact-command-log-first-command.sh`
- `scripts/test-project-state-artifact-command-log-format.sh`
- `scripts/test-project-state-artifact-command-log-gate.sh`
- `scripts/test-project-state-artifact-command-log-path-helper.sh`
- `scripts/test-project-state-artifact-command-log-reason-codes.sh`
- `scripts/test-project-state-artifact-command-log-shared-fixtures.sh`
- `scripts/test-project-state-artifact-command-log-source-repo-seeding.sh`
- `scripts/test-project-state-artifact-command-log-wrapper-ownership.sh`
- `scripts/test-project-state-artifact-done-prefix.sh`
- `scripts/test-project-state-artifact-latest-milestone.sh`
- `scripts/test-project-state-artifact-log-key-order.sh`
- `scripts/test-project-state-artifact-log-summary-traceability.sh`
- `scripts/test-project-state-artifact-milestone-count-types.sh`
- `scripts/test-project-state-artifact-pass-progression.sh`
</details>

<details>
<summary>Citations:</summary>

- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `scripts/test-legacy-unresolved-schema-refs-manifest.sh`
- `scripts/test-legacy-unresolved-schema-refs.sh`
- `scripts/test-pre-commit-schema-json-parse.sh`
- `scripts/test-project-state-artifact-command-log-first-command.sh`
- `scripts/test-project-state-artifact-command-log-format.sh`
- `scripts/test-project-state-artifact-command-log-gate.sh`
- `scripts/test-project-state-artifact-command-log-path-helper.sh`
- `scripts/test-project-state-artifact-command-log-reason-codes.sh`
- `scripts/test-project-state-artifact-command-log-shared-fixtures.sh`
- `scripts/test-project-state-artifact-command-log-source-repo-seeding.sh`
- `scripts/test-project-state-artifact-command-log-wrapper-ownership.sh`
- `scripts/test-project-state-artifact-done-prefix.sh`
- `scripts/test-project-state-artifact-latest-milestone.sh`
- `scripts/test-project-state-artifact-log-key-order.sh`
- `scripts/test-project-state-artifact-log-summary-traceability.sh`
- `scripts/test-project-state-artifact-milestone-count-types.sh`
- `scripts/test-project-state-artifact-pass-progression.sh`
</details>

## Citations

<details>
<summary>Citations:</summary>

- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
- `Cargo.toml`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
- `scripts/test-json-schema.sh`
- `scripts/test-legacy-unresolved-schema-refs-manifest.sh`
- `scripts/test-legacy-unresolved-schema-refs.sh`
- `scripts/test-pre-commit-schema-json-parse.sh`
- `scripts/test-project-state-artifact-command-log-first-command.sh`
- `scripts/test-project-state-artifact-command-log-format.sh`
- `scripts/test-project-state-artifact-command-log-gate.sh`
- `scripts/test-project-state-artifact-command-log-path-helper.sh`
- `scripts/test-project-state-artifact-command-log-reason-codes.sh`
- `scripts/test-project-state-artifact-command-log-shared-fixtures.sh`
- `scripts/test-project-state-artifact-command-log-source-repo-seeding.sh`
- `scripts/test-project-state-artifact-command-log-wrapper-ownership.sh`
- `scripts/test-project-state-artifact-done-prefix.sh`
- `scripts/test-project-state-artifact-latest-milestone.sh`
- `scripts/test-project-state-artifact-log-key-order.sh`
- `scripts/test-project-state-artifact-log-summary-traceability.sh`
- `scripts/test-project-state-artifact-milestone-count-types.sh`
- `scripts/test-project-state-artifact-pass-progression.sh`
</details>
