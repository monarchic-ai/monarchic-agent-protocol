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

bash ./scripts/generate-json-schema.sh "${proto_file}"

echo "Generated: python, go, java, csharp, ruby, php, dart, json-schema"
echo "Outputs in: src/python, src/go, src/java, src/csharp, src/ruby, src/php, src/dart/lib, schemas/v1"
