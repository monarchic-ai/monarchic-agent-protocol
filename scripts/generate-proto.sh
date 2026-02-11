#!/usr/bin/env bash
set -euo pipefail

proto_file="${1:-schemas/v1/monarchic_agent_protocol.proto}"
proto_dir="$(cd "$(dirname "${proto_file}")" && pwd)"
proto_file="${proto_dir}/$(basename "${proto_file}")"

if [[ ! -f "${proto_file}" ]]; then
  echo "Missing ${proto_file}" >&2
  exit 1
fi

if ! command -v protoc >/dev/null 2>&1; then
  echo "protoc not found in PATH" >&2
  exit 1
fi

mkdir -p \
  src/python/monarchic_agent_protocol \
  src/go \
  src/java \
  src/csharp \
  src/ruby \
  src/php \
  src/dart/lib

protoc -I "${proto_dir}" \
  --python_out=src/python/monarchic_agent_protocol \
  --go_out=src/go \
  --java_out=src/java \
  --csharp_out=src/csharp \
  --ruby_out=src/ruby \
  --php_out=src/php \
  --dart_out=src/dart/lib \
  "${proto_file}"

if command -v protoc-gen-go >/dev/null 2>&1; then
  echo "Generated Go protobufs in src/go"
fi

if command -v protoc-gen-dart >/dev/null 2>&1; then
  echo "Generated Dart protobufs in src/dart/lib"
fi

echo "Protobufs generated under src/<lang>"
