#!/usr/bin/env bash
set -euo pipefail

if ! command -v git >/dev/null 2>&1; then
  echo "git is required" >&2
  exit 1
fi

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

if [[ ! -f flake.nix || ! -f Cargo.toml ]]; then
  echo "Run from repo root" >&2
  exit 1
fi

version="$(python - <<'PY'
import re
from pathlib import Path
text = Path("Cargo.toml").read_text(encoding="utf-8")
m = re.search(r'^version\s*=\s*"([^"]+)"', text, flags=re.M)
if not m:
    raise SystemExit("Could not find version in Cargo.toml")
print(m.group(1))
PY
)"
tag_version="v${version}"

prefetch_url() {
  local url="$1"
  nix-prefetch-url --type sha256 "$url"
}

prefetch_url_unpacked() {
  local url="$1"
  nix-prefetch-url --type sha256 --unpack "$url"
}

echo "Updating registry hashes for version ${version}"

npm_deps_hash="$(python - <<'PY'
import re
from pathlib import Path
text = Path("flake.nix").read_text(encoding="utf-8")
m = re.search(r'npmDepsHash\\s*=\\s*"([^"]+)"', text)
print(m.group(1) if m else "")
PY
)"

npm_url="https://registry.npmjs.org/@monarchic-ai/monarchic-agent-protocol/-/monarchic-agent-protocol-${version}.tgz"
npm_hash="$(prefetch_url "$npm_url")"

pypi_url="https://files.pythonhosted.org/packages/source/m/monarchic_agent_protocol/monarchic_agent_protocol-${version}.tar.gz"
pypi_hash="$(prefetch_url "$pypi_url")"

ruby_url="https://rubygems.org/downloads/monarchic-agent-protocol-${version}.gem"
ruby_hash="$(prefetch_url "$ruby_url")"

nuget_url="https://api.nuget.org/v3-flatcontainer/monarchic.agentprotocol/${version}/monarchic.agentprotocol.${version}.nupkg"
nuget_hash="$(prefetch_url "$nuget_url")"

crate_url="https://crates.io/api/v1/crates/monarchic-agent-protocol/${version}/download"
crate_hash="$(prefetch_url "$crate_url")"

jitpack_url="https://jitpack.io/com/github/monarchic-ai/monarchic-agent-protocol/v${version}/monarchic-agent-protocol-v${version}.jar"
jitpack_hash="$(prefetch_url "$jitpack_url")"

github_url="https://github.com/monarchic-ai/monarchic-agent-protocol/archive/${tag_version}.tar.gz"
github_hash="$(prefetch_url_unpacked "$github_url")"

export VERSION="$version" TAG_VERSION="$tag_version"
export NPM_URL="$npm_url" NPM_HASH="$npm_hash"
export PYPI_HASH="$pypi_hash"
export RUBY_URL="$ruby_url" RUBY_HASH="$ruby_hash"
export NUGET_URL="$nuget_url" NUGET_HASH="$nuget_hash"
export CRATE_HASH="$crate_hash"
export JITPACK_URL="$jitpack_url" JITPACK_HASH="$jitpack_hash"
export GITHUB_HASH="$github_hash"

python - <<'PY'
import os
import re
from pathlib import Path

path = Path("flake.nix")
lines = path.read_text(encoding="utf-8").splitlines()

def update_url_hash(contains: str, new_url: str, new_hash: str) -> None:
    updated = False
    for i, line in enumerate(lines):
        if 'url = "' in line and contains in line:
            lines[i] = re.sub(r'url\s*=\s*"[^"]+"', f'url = "{new_url}"', line)
            for j in range(i + 1, min(i + 6, len(lines))):
                if "sha256" in lines[j]:
                    lines[j] = re.sub(r'sha256\s*=\s*"[^"]+"', f'sha256 = "{new_hash}"', lines[j])
                    updated = True
                    break
            break
    if not updated:
        raise SystemExit(f"Failed to update url/hash for {contains}")

def update_npm_deps_hash(new_hash: str) -> None:
    for i, line in enumerate(lines):
        if "npmDepsHash" in line:
            lines[i] = re.sub(r'npmDepsHash\s*=\s*"[^"]+"', f'npmDepsHash = "{new_hash}"', line)

def update_fetchpypi_hash(pname: str, version: str, new_hash: str) -> None:
    updated = False
    for i, line in enumerate(lines):
        if f'pname = "{pname}";' in line:
            # ensure version matches nearby
            if any(f'version = "{version}";' in lines[j] for j in range(i, min(i + 6, len(lines)))):
                for j in range(i, min(i + 10, len(lines))):
                    if "sha256" in lines[j]:
                        lines[j] = re.sub(r'sha256\s*=\s*"[^"]+"', f'sha256 = "{new_hash}"', lines[j])
                        updated = True
                        break
        if updated:
            break
    if not updated:
        raise SystemExit("Failed to update fetchPypi hash")

def update_fetchcrate_hash(pname: str, version: str, new_hash: str) -> None:
    updated = False
    for i, line in enumerate(lines):
        if f'pname = "{pname}";' in line:
            if any(f'version = "{version}";' in lines[j] for j in range(i, min(i + 8, len(lines)))):
                for j in range(i, min(i + 12, len(lines))):
                    if "sha256" in lines[j]:
                        lines[j] = re.sub(r'sha256\s*=\s*"[^"]+"', f'sha256 = "{new_hash}"', lines[j])
                        updated = True
                        break
        if updated:
            break
    if not updated:
        raise SystemExit("Failed to update fetchCrate hash")

def update_fetchgithub(owner: str, repo: str, rev: str, new_hash: str) -> None:
    updated = False
    for i, line in enumerate(lines):
        if f'owner = "{owner}";' in line:
            if any(f'repo = "{repo}";' in lines[j] for j in range(i, min(i + 6, len(lines)))):
                for j in range(i, min(i + 10, len(lines))):
                    if "rev" in lines[j]:
                        lines[j] = re.sub(r'rev\s*=\s*"[^"]+"', f'rev = "{rev}"', lines[j])
                    if "sha256" in lines[j]:
                        lines[j] = re.sub(r'sha256\s*=\s*"[^"]+"', f'sha256 = "{new_hash}"', lines[j])
                        updated = True
                        break
    if not updated:
        raise SystemExit("Failed to update fetchFromGitHub hash")

update_url_hash("registry.npmjs.org/@monarchic-ai/monarchic-agent-protocol/-/monarchic-agent-protocol-", os.environ["NPM_URL"], os.environ["NPM_HASH"])
update_fetchpypi_hash("monarchic_agent_protocol", os.environ["VERSION"], os.environ["PYPI_HASH"])
update_url_hash("rubygems.org/downloads/monarchic-agent-protocol-", os.environ["RUBY_URL"], os.environ["RUBY_HASH"])
update_url_hash("api.nuget.org/v3-flatcontainer/monarchic.agentprotocol/", os.environ["NUGET_URL"], os.environ["NUGET_HASH"])
update_fetchcrate_hash("monarchic-agent-protocol", os.environ["VERSION"], os.environ["CRATE_HASH"])
update_url_hash("jitpack.io/com/github/monarchic-ai/monarchic-agent-protocol/", os.environ["JITPACK_URL"], os.environ["JITPACK_HASH"])
update_fetchgithub("monarchic-ai", "monarchic-agent-protocol", os.environ["TAG_VERSION"], os.environ["GITHUB_HASH"])

path.write_text("\n".join(lines) + "\n", encoding="utf-8")
PY

# Try to derive npmDepsHash from a nix build when possible (handles no-deps edge cases).
tmp_lock="$(mktemp)"
cat >"$tmp_lock" <<JSON
{
  "name": "@monarchic-ai/monarchic-agent-protocol",
  "version": "${version}",
  "lockfileVersion": 3,
  "requires": true,
  "packages": {
    "": {
      "name": "@monarchic-ai/monarchic-agent-protocol",
      "version": "${version}"
    }
  }
}
JSON

if command -v prefetch-npm-deps >/dev/null 2>&1; then
  maybe_hash="$(prefetch-npm-deps "$tmp_lock" 2>/tmp/prefetch-npm-deps.err || true)"
  if [[ -n "$maybe_hash" ]]; then
    npm_deps_hash="$maybe_hash"
  fi
fi
rm -f "$tmp_lock"

build_log="$(mktemp)"
set +e
nix build -L .#ts-registry-lib --no-link >"$build_log" 2>&1
build_status=$?
set -e
if [[ $build_status -ne 0 ]]; then
  got_hash="$(grep -oE 'got:[[:space:]]*sha256-[A-Za-z0-9+/=]+' "$build_log" | head -1 | sed -E 's/got:[[:space:]]*//' || true)"
  if [[ -n "$got_hash" ]]; then
    npm_deps_hash="$got_hash"
  fi
fi
rm -f "$build_log"

if [[ -z "$npm_deps_hash" ]]; then
  npm_deps_hash="sha256-NtaX5b0/+zq75rZXZFePms505Q8kytrhd89ZifQZZyM="
fi

python - <<PY
from pathlib import Path
import re

hash = "$npm_deps_hash"
path = Path("flake.nix")
text = path.read_text(encoding="utf-8")
text = re.sub(r'npmDepsHash\\s*=\\s*"[^"]+"', f'npmDepsHash = "{hash}"', text)
path.write_text(text, encoding="utf-8")
PY

crate_log="$(mktemp)"
set +e
nix build -L .#rs-registry-lib --no-link >"$crate_log" 2>&1
crate_status=$?
set -e
if [[ $crate_status -ne 0 ]]; then
  got_hash="$(grep -oE 'got:[[:space:]]*sha256-[A-Za-z0-9+/=]+' "$crate_log" | head -1 | sed -E 's/got:[[:space:]]*//' || true)"
  if [[ -n "$got_hash" ]]; then
    python - <<PY
from pathlib import Path
import re

hash = "$got_hash"
path = Path("flake.nix")
text = path.read_text(encoding="utf-8")
text = re.sub(r'(fetchCrate\\s*\\{[^}]*pname\\s*=\\s*"monarchic-agent-protocol";[^}]*version\\s*=\\s*"' + re.escape("$version") + r'";[^}]*sha256\\s*=\\s*)"[^"]+"', r'\\1"' + hash + '"', text, flags=re.S)
path.write_text(text, encoding="utf-8")
PY
  fi
fi
rm -f "$crate_log"

echo "Updated registry hashes in flake.nix"
