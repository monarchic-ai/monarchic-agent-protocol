#!/usr/bin/env bash
set -euo pipefail

if ! command -v git >/dev/null 2>&1; then
  repo_root="$PWD"
else
  if repo_root="$(git rev-parse --show-toplevel 2>/dev/null)"; then
    cd "$repo_root"
  else
    repo_root="$PWD"
  fi
fi

if [[ ! -f flake.nix ]]; then
  echo "Run from repo root" >&2
  exit 1
fi

echo "Updating local build hashes"

if [[ "${SKIP_NETWORK:-}" == "1" ]]; then
  echo "SKIP_NETWORK=1 set; skipping local hash updates"
  exit 0
fi

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

# Protobuf Kotlin jar hash for example-kotlin
protobuf_kotlin_url="https://repo1.maven.org/maven2/com/google/protobuf/protobuf-kotlin/4.32.1/protobuf-kotlin-4.32.1.jar"
protobuf_kotlin_hash="$(nix-prefetch-url --type sha256 "$protobuf_kotlin_url")"

# Dart example deps (pub.dev archives)
dart_protobuf_url="https://pub.dev/api/archives/protobuf-6.0.0.tar.gz"
dart_collection_url="https://pub.dev/api/archives/collection-1.19.1.tar.gz"
dart_fixnum_url="https://pub.dev/api/archives/fixnum-1.1.1.tar.gz"
dart_meta_url="https://pub.dev/api/archives/meta-1.18.1.tar.gz"
dart_protobuf_hash="$(nix-prefetch-url --type sha256 "$dart_protobuf_url")"
dart_collection_hash="$(nix-prefetch-url --type sha256 "$dart_collection_url")"
dart_fixnum_hash="$(nix-prefetch-url --type sha256 "$dart_fixnum_url")"
dart_meta_hash="$(nix-prefetch-url --type sha256 "$dart_meta_url")"

# PHP example runtime (protocolbuffers/protobuf)
php_runtime_url="https://github.com/protocolbuffers/protobuf/archive/v32.1.tar.gz"
php_runtime_hash="$(nix-prefetch-url --type sha256 --unpack "$php_runtime_url")"

# C# example Google.Protobuf nupkg
csharp_protobuf_url="https://www.nuget.org/api/v2/package/Google.Protobuf/3.25.3"
csharp_protobuf_hash="$(nix-prefetch-url --type sha256 "$csharp_protobuf_url")"

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
protobuf_kotlin_url = "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-kotlin/4.32.1/protobuf-kotlin-4.32.1.jar"
protobuf_kotlin_hash = """$protobuf_kotlin_hash"""
dart_protobuf_url = "https://pub.dev/api/archives/protobuf-6.0.0.tar.gz"
dart_collection_url = "https://pub.dev/api/archives/collection-1.19.1.tar.gz"
dart_fixnum_url = "https://pub.dev/api/archives/fixnum-1.1.1.tar.gz"
dart_meta_url = "https://pub.dev/api/archives/meta-1.18.1.tar.gz"
dart_protobuf_hash = """$dart_protobuf_hash"""
dart_collection_hash = """$dart_collection_hash"""
dart_fixnum_hash = """$dart_fixnum_hash"""
dart_meta_hash = """$dart_meta_hash"""
php_runtime_url = "https://github.com/protocolbuffers/protobuf/archive/v32.1.tar.gz"
php_runtime_hash = """$php_runtime_hash"""
csharp_protobuf_url = "https://www.nuget.org/api/v2/package/Google.Protobuf/3.25.3"
csharp_protobuf_hash = """$csharp_protobuf_hash"""

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

# Update protobuf-kotlin hashes anywhere the URL appears
for i, line in enumerate(lines):
    if 'url = "%s"' % protobuf_kotlin_url in line:
        for j in range(i + 1, min(i + 6, len(lines))):
            if "sha256" in lines[j]:
                lines[j] = re.sub(r'sha256\s*=\s*"[^"]+"', f'sha256 = "{protobuf_kotlin_hash}"', lines[j])
                break

# Update Dart example tarball hashes
dart_map = {
    dart_protobuf_url: dart_protobuf_hash,
    dart_collection_url: dart_collection_hash,
    dart_fixnum_url: dart_fixnum_hash,
    dart_meta_url: dart_meta_hash,
}
for url, hash_value in dart_map.items():
    for i, line in enumerate(lines):
        if f'url = "{url}"' in line:
            for j in range(i + 1, min(i + 6, len(lines))):
                if "sha256" in lines[j]:
                    lines[j] = re.sub(r'sha256\s*=\s*"[^"]+"', f'sha256 = "{hash_value}"', lines[j])
                    break

# Update PHP runtime fetchFromGitHub hash
for i, line in enumerate(lines):
    if 'owner = "protocolbuffers";' in line:
        if any('repo = "protobuf";' in lines[j] for j in range(i, min(i + 6, len(lines)))):
            for j in range(i, min(i + 12, len(lines))):
                if "sha256" in lines[j]:
                    lines[j] = re.sub(r'sha256\s*=\s*"[^"]+"', f'sha256 = "{php_runtime_hash}"', lines[j])
                    break

# Update C# example Google.Protobuf nupkg hash
for i, line in enumerate(lines):
    if f'url = "{csharp_protobuf_url}"' in line:
        for j in range(i + 1, min(i + 6, len(lines))):
            if "sha256" in lines[j]:
                lines[j] = re.sub(r'sha256\s*=\s*"[^"]+"', f'sha256 = "{csharp_protobuf_hash}"', lines[j])
                break

# Update npmDepsHash in all blocks
if ts_deps_hash:
    for i, line in enumerate(lines):
        if "npmDepsHash" in line:
            lines[i] = re.sub(r'npmDepsHash\s*=\s*"[^"]+"', f'npmDepsHash = "{ts_deps_hash}"', line)

# Update vendorHash in go-lib and go-registry-lib blocks
if go_vendor_hash:
    for i, line in enumerate(lines):
        if 'pname = "monarchic-agent-protocol-go";' in line or 'pname = "monarchic-agent-protocol-go-mod";' in line:
            for j in range(i, min(i + 20, len(lines))):
                if "vendorHash" in lines[j]:
                    lines[j] = re.sub(r'vendorHash\s*=\s*"[^"]+"', f'vendorHash = "{go_vendor_hash}"', lines[j])
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
