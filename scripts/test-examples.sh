#!/usr/bin/env bash
set -euo pipefail

cargo build

rust_lib="$(ls target/debug/deps/libmonarchic_agent_protocol-*.rlib | head -n 1)"
prost_lib="$(ls target/debug/deps/libprost_types-*.rlib | head -n 1)"

rustc examples/rust/task.rs \
  -L target/debug/deps \
  --extern monarchic_agent_protocol="${rust_lib}" \
  --extern prost_types="${prost_lib}" \
  -o /tmp/monarchic-agent-protocol-example-rust

npx tsc --noEmit --moduleResolution node --module commonjs --target es2020 examples/ts/task.ts

tmp_dir="$(mktemp -d)"
trap 'rm -rf "${tmp_dir}"' EXIT

proto_dir="$(cd schemas/v1 && pwd)"
protoc -I "${proto_dir}" \
  --cpp_out="${tmp_dir}/cpp" \
  --java_out="${tmp_dir}/java" \
  --kotlin_out="${tmp_dir}/kotlin" \
  --csharp_out="${tmp_dir}/csharp" \
  --python_out="${tmp_dir}/python" \
  --ruby_out="${tmp_dir}/ruby" \
  --php_out="${tmp_dir}/php" \
  --dart_out="${tmp_dir}/dart" \
  "${proto_dir}/monarchic_agent_protocol.proto"

if command -v g++ >/dev/null 2>&1; then
  g++ -std=c++17 -I "${tmp_dir}/cpp" examples/proto/cpp/task.cpp \
    "${tmp_dir}/cpp/monarchic_agent_protocol.pb.cc" \
    -lprotobuf -pthread -o /tmp/monarchic-agent-protocol-example-cpp
else
  echo "Skipping C++ example (g++ not available)"
fi

if command -v javac >/dev/null 2>&1; then
  protojar="$(ls /usr/share/java/protobuf-java*.jar /usr/share/java/protobuf.jar 2>/dev/null | head -n 1 || true)"
  if [[ -n "${protojar}" ]]; then
    javac -classpath "${protojar}:${tmp_dir}/java" -d "${tmp_dir}/java-classes" examples/proto/java/TaskExample.java
  else
    echo "Skipping Java example (protobuf Java runtime not found)"
  fi
else
  echo "Skipping Java example (javac not available)"
fi

if command -v kotlinc >/dev/null 2>&1; then
  protojar="$(ls /usr/share/java/protobuf-java*.jar /usr/share/java/protobuf.jar 2>/dev/null | head -n 1 || true)"
  if [[ -n "${protojar}" ]]; then
    kotlinc examples/proto/kotlin/TaskExample.kt -classpath "${protojar}:${tmp_dir}/kotlin" -d "${tmp_dir}/kotlin-classes"
  else
    echo "Skipping Kotlin example (protobuf Java runtime not found)"
  fi
else
  echo "Skipping Kotlin example (kotlinc not available)"
fi

if command -v dotnet >/dev/null 2>&1; then
  csharp_dir="${tmp_dir}/csharp-build"
  mkdir -p "${csharp_dir}"
  cp examples/proto/csharp/TaskExample.cs "${csharp_dir}/Program.cs"
  cp -r "${tmp_dir}/csharp/"*.cs "${csharp_dir}/" 2>/dev/null || true
  cat > "${csharp_dir}/Example.csproj" <<'XML'
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net8.0</TargetFramework>
    <Nullable>enable</Nullable>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="Google.Protobuf" Version="3.25.3" />
  </ItemGroup>
</Project>
XML
  dotnet build "${csharp_dir}/Example.csproj" -c Release
else
  echo "Skipping C# example (dotnet not available)"
fi

if command -v python >/dev/null 2>&1; then
  PYTHONPATH="${tmp_dir}/python" python examples/proto/python/task.py
else
  echo "Skipping Python proto example (python not available)"
fi

if command -v ruby >/dev/null 2>&1; then
  RUBYLIB="${tmp_dir}/ruby" ruby examples/proto/ruby/task.rb
else
  echo "Skipping Ruby proto example (ruby not available)"
fi

if command -v php >/dev/null 2>&1; then
  PHP_INI_SCAN_DIR= PHP_INCLUDE_PATH="${tmp_dir}/php" php -d include_path="${tmp_dir}/php" examples/proto/php/task.php
else
  echo "Skipping PHP proto example (php not available)"
fi

if command -v dart >/dev/null 2>&1; then
  dart_root="${tmp_dir}/dart-run"
  mkdir -p "${dart_root}/monarchic/agent_protocol/v1"
  cp "${tmp_dir}/dart/monarchic/agent_protocol/v1/"* "${dart_root}/monarchic/agent_protocol/v1/"
  cp examples/proto/dart/task.dart "${dart_root}/task.dart"
  dart "${dart_root}/task.dart"
else
  echo "Skipping Dart proto example (dart not available)"
fi

echo "Examples compiled successfully"
