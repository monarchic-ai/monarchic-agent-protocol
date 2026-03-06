#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_PATH="$ROOT_DIR/hashes/local-hashes.json"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --output)
      OUTPUT_PATH="$2"
      shift 2
      ;;
    *)
      echo "unknown option: $1" >&2
      echo "usage: $0 [--output <path>]" >&2
      exit 2
      ;;
  esac
done

python3 - <<'PY' "$ROOT_DIR" "$OUTPUT_PATH"
from __future__ import annotations

import hashlib
import json
from pathlib import Path
import sys

root = Path(sys.argv[1]).resolve()
out_path = Path(sys.argv[2]).resolve()

exact_files = [
    "Cargo.toml",
    "Cargo.lock",
    "setup.cfg",
    "pyproject.toml",
    "package.json",
    "package-lock.json",
    "composer.json",
    "pubspec.yaml",
    "Monarchic.AgentProtocol.csproj",
    "monarchic-agent-protocol.gemspec",
    "build.gradle.kts",
    "schemas/v1/monarchic_agent_protocol.proto",
    "schemas/v1/schema.json",
]

glob_patterns = [
    "schemas/v1/*.json",
    "src/rust/**/*.rs",
    "src/python/monarchic_agent_protocol/**/*.py",
    "src/ts/**/*.ts",
    "src/go/**/*.go",
    "src/java/**/*.java",
    "src/csharp/**/*.cs",
    "src/ruby/**/*.rb",
    "src/php/**/*.php",
    "src/dart/lib/**/*.dart",
]

paths: set[Path] = set()
for rel in exact_files:
    p = root / rel
    if p.is_file():
        paths.add(p)

for pattern in glob_patterns:
    for p in root.glob(pattern):
        if p.is_file():
            paths.add(p)

ordered = sorted(paths, key=lambda p: str(p.relative_to(root)).replace('\\\\', '/'))

artifacts: list[dict[str, str]] = []
for p in ordered:
    rel = str(p.relative_to(root)).replace('\\\\', '/')
    digest = hashlib.sha256(p.read_bytes()).hexdigest()
    artifacts.append({"path": rel, "sha256": digest})

combined = hashlib.sha256(
    "\n".join(f"{row['path']}:{row['sha256']}" for row in artifacts).encode("utf-8")
).hexdigest()

payload = {
    "version": "v1",
    "scope": "local",
    "artifact_count": len(artifacts),
    "combined_sha256": combined,
    "artifacts": artifacts,
}

out_path.parent.mkdir(parents=True, exist_ok=True)
out_path.write_text(json.dumps(payload, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")
print(f"wrote {out_path} ({len(artifacts)} artifacts)")
PY
