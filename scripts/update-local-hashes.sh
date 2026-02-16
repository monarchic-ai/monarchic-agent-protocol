#!/usr/bin/env bash
set -euo pipefail

if ! command -v git >/dev/null 2>&1; then
  echo "git is required" >&2
  exit 1
fi

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

if [[ ! -f flake.nix ]]; then
  echo "Run from repo root" >&2
  exit 1
fi

echo "Updating local build hashes"

get_got_hash() {
  local attr="$1"
  local log
  log="$(mktemp)"
  set +e
  nix build -L "$attr" --no-link >"$log" 2>&1
  set -e
  grep -oE 'got:[[:space:]]*sha256-[A-Za-z0-9+/=]+' "$log" | head -1 | sed -E 's/got:[[:space:]]*//' || true
  rm -f "$log"
}

# Protobuf Java jar hash for java-lib
protobuf_url="https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/4.32.1/protobuf-java-4.32.1.jar"
protobuf_hash="$(nix-prefetch-url --type sha256 "$protobuf_url")"

# ts-lib npm deps hash (if mismatch)
ts_deps_hash="$(get_got_hash .#ts-lib)"

# go-lib vendor hash (if mismatch)
go_vendor_hash="$(get_got_hash .#go-lib)"

# go-import vendor hash in checks (if mismatch)
go_import_vendor_hash="$(get_got_hash .#checks.x86_64-linux.go-import)"

python - <<PY
import re
from pathlib import Path

path = Path("flake.nix")
lines = path.read_text(encoding="utf-8").splitlines()

protobuf_url = "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/4.32.1/protobuf-java-4.32.1.jar"
protobuf_hash = """$protobuf_hash"""

ts_deps_hash = """$ts_deps_hash"""
go_vendor_hash = """$go_vendor_hash"""
go_import_vendor_hash = """$go_import_vendor_hash"""

# Update protobuf-java hashes anywhere the URL appears
for i, line in enumerate(lines):
    if 'url = "%s"' % protobuf_url in line:
        for j in range(i + 1, min(i + 6, len(lines))):
            if "sha256" in lines[j]:
                lines[j] = re.sub(r'sha256\s*=\s*"[^"]+"', f'sha256 = "{protobuf_hash}"', lines[j])
                break

# Update npmDepsHash in ts-lib block only
if ts_deps_hash:
    for i, line in enumerate(lines):
        if 'pname = "monarchic-agent-protocol-ts";' in line:
            for j in range(i, min(i + 20, len(lines))):
                if "npmDepsHash" in lines[j]:
                    lines[j] = re.sub(r'npmDepsHash\s*=\s*"[^"]+"', f'npmDepsHash = "{ts_deps_hash}"', lines[j])
                    break
            break

# Update vendorHash in go-lib block
if go_vendor_hash:
    for i, line in enumerate(lines):
        if 'pname = "monarchic-agent-protocol-go";' in line:
            for j in range(i, min(i + 20, len(lines))):
                if "vendorHash" in lines[j]:
                    lines[j] = re.sub(r'vendorHash\s*=\s*"[^"]+"', f'vendorHash = "{go_vendor_hash}"', lines[j])
                    break
            break

# Update vendorHash in go-import check block
if go_import_vendor_hash:
    for i, line in enumerate(lines):
        if 'pname = "go-import";' in line:
            for j in range(i, min(i + 20, len(lines))):
                if "vendorHash" in lines[j]:
                    lines[j] = re.sub(r'vendorHash\s*=\s*"[^"]+"', f'vendorHash = "{go_import_vendor_hash}"', lines[j])
                    break
            break

path.write_text("\n".join(lines) + "\n", encoding="utf-8")
PY

printf "Updated local hashes in flake.nix\n"
