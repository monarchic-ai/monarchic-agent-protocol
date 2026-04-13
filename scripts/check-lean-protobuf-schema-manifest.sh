#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "${script_dir}/.." && pwd)"

python "${repo_root}/scripts/generate-lean-protobuf-schema-manifest.py"
git -C "${repo_root}" diff --exit-code -- formal/lean/MonarchicAgentProtocol/ProtobufSchemaManifest.lean
