---
page_id: configuration
page_type: configuration
generation_mode: inferred
freshness_status: new
updated_at: 2026-04-12T23:17:57.285Z
---

<details>
<summary>Build metadata</summary>

```json
{
  "freshnessKey": "83a5994dc5ebb8724f02fe5c561e1fba63dca363",
  "plannerReason": "Generated when enough deterministic configuration evidence exists to separate required setup, optional knobs, and risk-sensitive settings.",
  "changedPaths": [
    "Cargo.toml",
    "flake.nix",
    "package.json",
    "pyproject.toml",
    "src/go/go.mod",
    "settings.gradle.kts",
    "tsconfig.json"
  ],
  "dependencyPaths": [
    "Cargo.toml",
    "flake.nix",
    "package.json",
    "pyproject.toml",
    "src/go/go.mod",
    "settings.gradle.kts",
    "tsconfig.json"
  ],
  "dependencyEvidenceIds": [
    "ingest:file:Cargo.toml",
    "ingest:file:flake.nix",
    "ingest:file:package.json",
    "ingest:file:pyproject.toml",
    "ingest:file:src/go/go.mod",
    "ingest:file:settings.gradle.kts",
    "ingest:file:tsconfig.json"
  ],
  "evidenceIds": [
    "ingest:file:Cargo.toml",
    "ingest:file:flake.nix",
    "ingest:file:package.json",
    "ingest:file:pyproject.toml",
    "ingest:file:src/go/go.mod",
    "ingest:file:settings.gradle.kts",
    "ingest:file:tsconfig.json"
  ],
  "qualityWarnings": []
}

```
</details>

# Configuration

Configuration guide for monarchic-agent-protocol.

## Related Pages

- [start-here](start-here.md)
- [playbook](playbook.md)
- [interfaces](interfaces.md)
- [runtime](runtime.md)

## Required Setup

- Use package manager `pnpm` for setup-sensitive commands.
- Use package manager `cargo` for setup-sensitive commands.
- Check `Cargo.toml` before the first run; it likely carries required setup or environment prerequisites.
- Check `flake.nix` before the first run; it likely carries required setup or environment prerequisites.
- Check `package.json` before the first run; it likely carries required setup or environment prerequisites.
- Check `pyproject.toml` before the first run; it likely carries required setup or environment prerequisites.

<details>
<summary>Related files:</summary>

- `Cargo.toml`
- `flake.nix`
- `package.json`
- `pyproject.toml`
- `src/go/go.mod`
- `settings.gradle.kts`
- `tsconfig.json`
</details>

<details>
<summary>Citations:</summary>

- `Cargo.toml`
- `flake.nix`
- `package.json`
- `pyproject.toml`
- `src/go/go.mod`
- `settings.gradle.kts`
- `tsconfig.json`
</details>

## Optional Knobs

- Review `settings.gradle.kts` for optional tuning knobs and repo-local defaults.
- Review `tsconfig.json` for optional tuning knobs and repo-local defaults.
- flake.nix: Configuration surface defined by flake.nix.
- package.json: Configuration surface defined by package.json.
- pyproject.toml: Configuration surface defined by pyproject.toml.
- src/go/go.mod: Configuration surface defined by src/go/go.mod.

<details>
<summary>Related files:</summary>

- `Cargo.toml`
- `flake.nix`
- `package.json`
- `pyproject.toml`
- `src/go/go.mod`
- `settings.gradle.kts`
- `tsconfig.json`
</details>

<details>
<summary>Citations:</summary>

- `Cargo.toml`
- `flake.nix`
- `package.json`
- `pyproject.toml`
- `src/go/go.mod`
- `settings.gradle.kts`
- `tsconfig.json`
</details>

## Risk-Sensitive Settings

Insufficient evidence to infer risk-sensitive settings.

<details>
<summary>Related files:</summary>

- `Cargo.toml`
- `flake.nix`
- `package.json`
- `pyproject.toml`
- `src/go/go.mod`
- `settings.gradle.kts`
- `tsconfig.json`
</details>

<details>
<summary>Citations:</summary>

- `Cargo.toml`
- `flake.nix`
- `package.json`
- `pyproject.toml`
- `src/go/go.mod`
- `settings.gradle.kts`
- `tsconfig.json`
</details>

## Citations

<details>
<summary>Citations:</summary>

- `Cargo.toml`
- `flake.nix`
- `package.json`
- `pyproject.toml`
- `src/go/go.mod`
- `settings.gradle.kts`
- `tsconfig.json`
</details>
