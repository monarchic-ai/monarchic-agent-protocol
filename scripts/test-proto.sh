#!/usr/bin/env bash
set -euo pipefail

proto_file="${1:-schemas/v1/monarchic_agent_protocol.proto}"
proto_dir="$(cd "$(dirname "${proto_file}")" && pwd)"
proto_file="$(cd "$(dirname "${proto_file}")" && pwd)/$(basename "${proto_file}")"

if [[ ! -f "${proto_file}" ]]; then
  echo "Missing ${proto_file}" >&2
  exit 1
fi

if ! command -v protoc >/dev/null 2>&1; then
  echo "protoc not found in PATH" >&2
  exit 1
fi

tmp_dir="$(mktemp -d)"
trap 'rm -rf "${tmp_dir}"' EXIT

mkdir -p \
  "${tmp_dir}/cpp" \
  "${tmp_dir}/java" \
  "${tmp_dir}/kotlin" \
  "${tmp_dir}/csharp" \
  "${tmp_dir}/python" \
  "${tmp_dir}/ruby" \
  "${tmp_dir}/objc" \
  "${tmp_dir}/php" \
  "${tmp_dir}/go" \
  "${tmp_dir}/dart"

protoc -I "${proto_dir}" \
  --descriptor_set_out="${tmp_dir}/descriptor.pb" \
  "${proto_file}"

protoc -I "${proto_dir}" \
  --cpp_out="${tmp_dir}/cpp" \
  --java_out="${tmp_dir}/java" \
  --kotlin_out="${tmp_dir}/kotlin" \
  --csharp_out="${tmp_dir}/csharp" \
  --python_out="${tmp_dir}/python" \
  --ruby_out="${tmp_dir}/ruby" \
  --objc_out="${tmp_dir}/objc" \
  --php_out="${tmp_dir}/php" \
  "${proto_file}"

if command -v protoc-gen-go >/dev/null 2>&1; then
  protoc -I "${proto_dir}" \
    --go_out="${tmp_dir}/go" --go_opt=paths=source_relative \
    "${proto_file}"
fi

if command -v protoc-gen-dart >/dev/null 2>&1; then
  protoc -I "${proto_dir}" \
    --dart_out="${tmp_dir}/dart" \
    "${proto_file}"
fi
