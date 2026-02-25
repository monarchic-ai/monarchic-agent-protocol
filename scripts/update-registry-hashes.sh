#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_PATH="$ROOT_DIR/hashes/registry-hashes.json"
RELEASE_TAG=""
ALLOW_MISSING=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    --output)
      OUTPUT_PATH="$2"
      shift 2
      ;;
    --tag)
      RELEASE_TAG="$2"
      shift 2
      ;;
    --allow-missing)
      ALLOW_MISSING=1
      shift
      ;;
    *)
      echo "unknown option: $1" >&2
      echo "usage: $0 [--output <path>] [--tag <vX.Y.Z>] [--allow-missing]" >&2
      exit 2
      ;;
  esac
done

python3 - <<'PY' "$ROOT_DIR" "$OUTPUT_PATH" "$RELEASE_TAG" "$ALLOW_MISSING"
from __future__ import annotations

import configparser
import hashlib
import json
from pathlib import Path
import tomllib
import urllib.error
import urllib.parse
import urllib.request
import xml.etree.ElementTree as ET
import sys

root = Path(sys.argv[1]).resolve()
out_path = Path(sys.argv[2]).resolve()
release_tag_arg = sys.argv[3].strip()
allow_missing = sys.argv[4] == "1"

def read_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))

def http_json(url: str) -> dict | list:
    with urllib.request.urlopen(url, timeout=20) as resp:
        return json.load(resp)

def optional_http_json(url: str) -> dict | list | None:
    try:
        return http_json(url)
    except urllib.error.HTTPError as exc:
        if exc.code == 404:
            return None
        raise

cargo = tomllib.loads((root / "Cargo.toml").read_text(encoding="utf-8"))
cargo_version = str(cargo["package"]["version"])

cfg = configparser.ConfigParser()
cfg.read(root / "setup.cfg")
pypi_version = str(cfg["metadata"]["version"])

pkg = read_json(root / "package.json")
npm_version = str(pkg["version"])

composer = read_json(root / "composer.json")
php_version = str(composer["version"])

pubspec_version = ""
for line in (root / "pubspec.yaml").read_text(encoding="utf-8").splitlines():
    if line.strip().startswith("version:"):
        pubspec_version = line.split(":", 1)[1].strip()
        break

csproj_root = ET.fromstring((root / "Monarchic.AgentProtocol.csproj").read_text(encoding="utf-8"))
version_el = csproj_root.find(".//Version")
nuget_version = version_el.text.strip() if version_el is not None and version_el.text else ""

ruby_version = ""
for line in (root / "monarchic-agent-protocol.gemspec").read_text(encoding="utf-8").splitlines():
    if "spec.version" in line and '"' in line:
        ruby_version = line.split('"')[1].strip()
        break

release_tag = release_tag_arg or f"v{cargo_version}"

registries: list[dict[str, object]] = []
missing: list[str] = []

# crates.io checksum
crates_url = f"https://crates.io/api/v1/crates/monarchic-agent-protocol/{cargo_version}"
crates_payload = optional_http_json(crates_url)
if isinstance(crates_payload, dict) and isinstance(crates_payload.get("version"), dict):
    checksum = crates_payload["version"].get("checksum")
    if isinstance(checksum, str) and checksum:
        registries.append({
            "registry": "crates.io",
            "package": "monarchic-agent-protocol",
            "version": cargo_version,
            "status": "published",
            "hash": {"algorithm": "sha256", "value": checksum},
            "source_url": crates_url,
        })
    else:
        missing.append("crates.io checksum")
else:
    missing.append("crates.io version")

# PyPI hashes
pypi_url = f"https://pypi.org/pypi/monarchic-agent-protocol/{pypi_version}/json"
pypi_payload = optional_http_json(pypi_url)
if isinstance(pypi_payload, dict):
    urls = pypi_payload.get("urls")
    files: list[dict[str, str]] = []
    if isinstance(urls, list):
        for item in urls:
            if not isinstance(item, dict):
                continue
            filename = item.get("filename")
            digest = item.get("digests", {}).get("sha256") if isinstance(item.get("digests"), dict) else None
            if isinstance(filename, str) and isinstance(digest, str) and digest:
                files.append({"filename": filename, "sha256": digest})
    if files:
        aggregate = hashlib.sha256(
            "\n".join(f"{f['filename']}:{f['sha256']}" for f in sorted(files, key=lambda x: x["filename"])).encode("utf-8")
        ).hexdigest()
        registries.append({
            "registry": "pypi",
            "package": "monarchic-agent-protocol",
            "version": pypi_version,
            "status": "published",
            "hash": {"algorithm": "sha256", "value": aggregate, "files": files},
            "source_url": pypi_url,
        })
    else:
        missing.append("pypi file hashes")
else:
    missing.append("pypi version")

# npm shasum/integrity
npm_pkg = urllib.parse.quote("@monarchic-ai/monarchic-agent-protocol", safe="")
npm_url = f"https://registry.npmjs.org/{npm_pkg}/{npm_version}"
npm_payload = optional_http_json(npm_url)
if isinstance(npm_payload, dict):
    dist = npm_payload.get("dist") if isinstance(npm_payload.get("dist"), dict) else {}
    shasum = dist.get("shasum")
    integrity = dist.get("integrity")
    if isinstance(shasum, str) and shasum:
        registries.append({
            "registry": "npm",
            "package": "@monarchic-ai/monarchic-agent-protocol",
            "version": npm_version,
            "status": "published",
            "hash": {"algorithm": "sha1", "value": shasum, "integrity": integrity if isinstance(integrity, str) else None},
            "source_url": npm_url,
        })
    else:
        missing.append("npm shasum")
else:
    missing.append("npm version")

# RubyGems sha
rubygems_url = f"https://rubygems.org/api/v2/rubygems/monarchic-agent-protocol/versions/{ruby_version}.json"
rubygems_payload = optional_http_json(rubygems_url)
if isinstance(rubygems_payload, dict):
    sha = rubygems_payload.get("sha") or rubygems_payload.get("sha256")
    if isinstance(sha, str) and sha:
        registries.append({
            "registry": "rubygems",
            "package": "monarchic-agent-protocol",
            "version": ruby_version,
            "status": "published",
            "hash": {"algorithm": "sha256", "value": sha},
            "source_url": rubygems_url,
        })
    else:
        # keep observed publication status even when hash unavailable
        registries.append({
            "registry": "rubygems",
            "package": "monarchic-agent-protocol",
            "version": ruby_version,
            "status": "published",
            "hash": None,
            "source_url": rubygems_url,
        })
else:
    missing.append("rubygems version")

# NuGet publication presence check
nuget_id = "monarchic.agentprotocol"
nuget_index_url = f"https://api.nuget.org/v3-flatcontainer/{nuget_id}/index.json"
nuget_payload = optional_http_json(nuget_index_url)
if isinstance(nuget_payload, dict) and isinstance(nuget_payload.get("versions"), list):
    normalized_versions = {str(v) for v in nuget_payload.get("versions", [])}
    if nuget_version.lower() in normalized_versions:
        registries.append({
            "registry": "nuget",
            "package": "Monarchic.AgentProtocol",
            "version": nuget_version,
            "status": "published",
            "hash": None,
            "source_url": nuget_index_url,
        })
    else:
        missing.append("nuget version")
else:
    missing.append("nuget index")

# Packagist publication presence check
packagist_url = "https://repo.packagist.org/p2/monarchic/agent-protocol.json"
packagist_payload = optional_http_json(packagist_url)
if isinstance(packagist_payload, dict):
    packages = packagist_payload.get("packages")
    versions = []
    if isinstance(packages, dict):
        package_entries = packages.get("monarchic/agent-protocol")
        if isinstance(package_entries, list):
            versions = [str(item.get("version")) for item in package_entries if isinstance(item, dict) and isinstance(item.get("version"), str)]
    normalized = {v.lstrip("v") for v in versions}
    if php_version in normalized:
        registries.append({
            "registry": "packagist",
            "package": "monarchic/agent-protocol",
            "version": php_version,
            "status": "published",
            "hash": None,
            "source_url": packagist_url,
        })
    else:
        missing.append("packagist version")
else:
    missing.append("packagist index")

versions = {
    "cargo": cargo_version,
    "pypi": pypi_version,
    "npm": npm_version,
    "ruby": ruby_version,
    "nuget": nuget_version,
    "php": php_version,
    "dart": pubspec_version,
}

payload = {
    "version": "v1",
    "scope": "registry",
    "release_tag": release_tag,
    "versions": versions,
    "registry_count": len(registries),
    "registries": registries,
    "missing": sorted(missing),
}

out_path.parent.mkdir(parents=True, exist_ok=True)
out_path.write_text(json.dumps(payload, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")
print(f"wrote {out_path} ({len(registries)} registries)")

if missing and not allow_missing:
    raise SystemExit("missing expected registry publication/hash data: " + ", ".join(sorted(missing)))
PY
