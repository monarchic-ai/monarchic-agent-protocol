---
page_id: validation
page_type: validation
generation_mode: inferred
freshness_status: new
updated_at: 2026-04-12T23:17:57.274Z
---

<details>
<summary>Build metadata</summary>

```json
{
  "freshnessKey": "23f85368b8de9aef97874a83d0d697ffdffcfb5e",
  "plannerReason": "Generated when enough deterministic workflow evidence exists to separate fast feedback, behavioral verification, and release-safety validation.",
  "changedPaths": [
    "flake.nix",
    "Cargo.toml",
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "pyproject.toml"
  ],
  "dependencyPaths": [
    "flake.nix",
    "Cargo.toml",
    "Monarchic.AgentProtocol.csproj",
    "build.gradle.kts",
    "pyproject.toml"
  ],
  "dependencyEvidenceIds": [
    "workflow:flake.nix",
    "workflow:Cargo.toml",
    "workflow:Monarchic.AgentProtocol.csproj",
    "workflow:build.gradle.kts",
    "workflow:pyproject.toml"
  ],
  "evidenceIds": [
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

# Validation

Validation strategy guide for monarchic-agent-protocol.

## Related Pages

- [playbook](playbook.md)
- [testing](testing.md)
- [troubleshooting](troubleshooting.md)
- [workflows](workflows.md)

## Fast Feedback

- Run `nix build .#default` (build) from `.` for fast structural feedback before broader validation.
- Run `nix flake check` (check) from `.` for fast structural feedback before broader validation.
- Run `cargo build` (build) from `.` for fast structural feedback before broader validation.
- Run `cargo check` (check) from `.` for fast structural feedback before broader validation.

<details>
<summary>Related files:</summary>

- `flake.nix`
- `Cargo.toml`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

<details>
<summary>Citations:</summary>

- `flake.nix`
- `Cargo.toml`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

## Behavioral Verification

- Use `dotnet test Monarchic.AgentProtocol.csproj` (test) from `.` to confirm user-visible or behavior-level expectations.
- Use `gradle test` (test) from `.` to confirm user-visible or behavior-level expectations.
- Use `python -m pytest` (test) from `.` to confirm user-visible or behavior-level expectations.
- Use `cargo test` (test) from `.` to confirm user-visible or behavior-level expectations.
- Treat runtime surface `Primary Service` as behavior-sensitive; prioritize checks that exercise it end to end.

<details>
<summary>Related files:</summary>

- `flake.nix`
- `Cargo.toml`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

<details>
<summary>Citations:</summary>

- `flake.nix`
- `Cargo.toml`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

## Release-Safety Validation

- Reserve `nix build .#default` (build) from `.` for packaging, release, deploy, or pre-release safety gates.
- Reserve `cargo build` (build) from `.` for packaging, release, deploy, or pre-release safety gates.
- Review `.github/workflows/nix-ci.yml` when changing release-sensitive validation because it delegates package builds, checks, generated artifact freshness, and commit-checker tests to the shared Nix CI workflow.
- Review `.github/workflows/release.yml` when changing release-sensitive publication behavior.

<details>
<summary>Related files:</summary>

- `flake.nix`
- `Cargo.toml`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

<details>
<summary>Citations:</summary>

- `flake.nix`
- `Cargo.toml`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>

## Citations

<details>
<summary>Citations:</summary>

- `flake.nix`
- `Cargo.toml`
- `Monarchic.AgentProtocol.csproj`
- `build.gradle.kts`
- `pyproject.toml`
</details>
