---
page_id: workflows
page_type: workflows
generation_mode: inferred
freshness_status: new
updated_at: 2026-04-12T23:17:57.271Z
---

<details>
<summary>Build metadata</summary>

```json
{
  "freshnessKey": "f30075a787ead07b1f7885fca0d4b36227aa5fe2",
  "plannerReason": "Generated because workflows are one of the primary agent interaction surfaces.",
  "changedPaths": [
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "flake.nix",
    "pyproject.toml",
    "Cargo.toml",
    "package.json"
  ],
  "dependencyPaths": [
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "flake.nix",
    "pyproject.toml",
    "Cargo.toml",
    "package.json"
  ],
  "dependencyEvidenceIds": [
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:flake.nix",
    "workflow:pyproject.toml",
    "workflow:Cargo.toml"
  ],
  "evidenceIds": [
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:flake.nix",
    "workflow:pyproject.toml",
    "workflow:Cargo.toml"
  ],
  "qualityWarnings": []
}

```
</details>

# Workflows

Workflow guide for monarchic-agent-protocol.

## Related Pages

- [testing](testing.md)
- [architecture](architecture.md)

## Workflow Inventory

- `dotnet test Monarchic.AgentProtocol.csproj` (test, confidence high)
- `gradle test` (test, confidence high)
- `nix build .#default` (build, confidence high)
- `nix flake check` (check, confidence medium)
- `nix develop` (dev-shell, confidence high)
- `python -m pytest` (test, confidence high)
- `cargo build` (build, confidence high)
- `cargo check` (check, confidence high)
- `cargo test` (test, confidence high)

<details>
<summary>Related files:</summary>

- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `flake.nix`
- `pyproject.toml`
- `Cargo.toml`
</details>

<details>
<summary>Citations:</summary>

- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `flake.nix`
- `pyproject.toml`
- `Cargo.toml`
</details>

## Testing and Validation

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

## Runtime Entrypoints

- `nix develop`

<details>
<summary>Related files:</summary>

- `Cargo.toml`
- `flake.nix`
- `package.json`
</details>

<details>
<summary>Citations:</summary>

- `Cargo.toml`
- `flake.nix`
- `package.json`
</details>

## Citations

<details>
<summary>Citations:</summary>

- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `flake.nix`
- `pyproject.toml`
- `Cargo.toml`
- `package.json`
</details>
