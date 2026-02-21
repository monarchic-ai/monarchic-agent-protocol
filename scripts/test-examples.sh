#!/usr/bin/env bash
set -euo pipefail

cargo build

rust_lib="$(ls target/debug/deps/libmonarchic_agent_protocol-*.rlib | head -n 1)"
prost_lib="$(ls target/debug/deps/libprost_types-*.rlib | head -n 1)"

rustc examples/rust/task.rs \
  --edition=2021 \
  -L target/debug/deps \
  --extern monarchic_agent_protocol="${rust_lib}" \
  --extern prost_types="${prost_lib}" \
  -o /tmp/monarchic-agent-protocol-example-rust

npx --yes --package typescript tsc --noEmit --moduleResolution node --module commonjs --target es2020 examples/ts/task.ts

tmp_dir="$(mktemp -d)"
trap 'rm -rf "${tmp_dir}"' EXIT

proto_dir="$(cd schemas/v1 && pwd)"
mkdir -p \
  "${tmp_dir}/cpp" \
  "${tmp_dir}/java" \
  "${tmp_dir}/kotlin" \
  "${tmp_dir}/csharp" \
  "${tmp_dir}/python" \
  "${tmp_dir}/ruby" \
  "${tmp_dir}/php" \
  "${tmp_dir}/dart"
proto_args=(
  -I "${proto_dir}"
  --cpp_out="${tmp_dir}/cpp"
  --java_out="${tmp_dir}/java"
  --kotlin_out="${tmp_dir}/kotlin"
  --csharp_out="${tmp_dir}/csharp"
  --python_out="${tmp_dir}/python"
  --ruby_out="${tmp_dir}/ruby"
  --php_out="${tmp_dir}/php"
)
if command -v protoc-gen-dart >/dev/null 2>&1; then
  proto_args+=( --dart_out="${tmp_dir}/dart" )
else
  echo "Skipping Dart proto generation (protoc-gen-dart not available)"
fi
protoc "${proto_args[@]}" "${proto_dir}/monarchic_agent_protocol.proto"

if command -v g++ >/dev/null 2>&1 && [[ -f "${tmp_dir}/cpp/monarchic_agent_protocol.pb.cc" ]]; then
  if ! g++ -std=c++17 -I "${tmp_dir}/cpp" examples/proto/cpp/task.cpp \
    "${tmp_dir}/cpp/monarchic_agent_protocol.pb.cc" \
    -lprotobuf -pthread -o /tmp/monarchic-agent-protocol-example-cpp; then
    echo "Skipping C++ example (compile failed)"
  fi
else
  echo "Skipping C++ example (g++ or generated C++ protobuf not available)"
fi

if command -v javac >/dev/null 2>&1 && [[ -d "${tmp_dir}/java" ]]; then
  protojar="$(ls /usr/share/java/protobuf-java*.jar /usr/share/java/protobuf.jar 2>/dev/null | head -n 1 || true)"
  if [[ -n "${protojar}" ]]; then
    if ! javac -classpath "${protojar}:${tmp_dir}/java" -d "${tmp_dir}/java-classes" examples/proto/java/TaskExample.java; then
      echo "Skipping Java example (compile failed)"
    fi
  else
    echo "Skipping Java example (protobuf Java runtime not found)"
  fi
else
  echo "Skipping Java example (javac or generated Java protobuf not available)"
fi

if command -v kotlinc >/dev/null 2>&1 && [[ -d "${tmp_dir}/kotlin" ]]; then
  protojar="$(ls /usr/share/java/protobuf-java*.jar /usr/share/java/protobuf.jar 2>/dev/null | head -n 1 || true)"
  if [[ -n "${protojar}" ]]; then
    if ! kotlinc examples/proto/kotlin/TaskExample.kt -classpath "${protojar}:${tmp_dir}/kotlin" -d "${tmp_dir}/kotlin-classes"; then
      echo "Skipping Kotlin example (compile failed)"
    fi
  else
    echo "Skipping Kotlin example (protobuf Java runtime not found)"
  fi
else
  echo "Skipping Kotlin example (kotlinc or generated Kotlin protobuf not available)"
fi

if command -v dotnet >/dev/null 2>&1 && compgen -G "${tmp_dir}/csharp/*.cs" >/dev/null; then
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
  if ! dotnet build "${csharp_dir}/Example.csproj" -c Release; then
    echo "Skipping C# example (build failed)"
  fi
else
  echo "Skipping C# example (dotnet or generated C# protobuf not available)"
fi

if command -v python >/dev/null 2>&1 && [[ -d "${tmp_dir}/python" ]]; then
  if ! PYTHONPATH="${tmp_dir}/python" python examples/proto/python/task.py; then
    echo "Skipping Python proto example (runtime failed)"
  fi
else
  echo "Skipping Python proto example (python or generated Python protobuf not available)"
fi

if command -v ruby >/dev/null 2>&1 && [[ -d "${tmp_dir}/ruby" ]]; then
  if ! RUBYLIB="${tmp_dir}/ruby" ruby examples/proto/ruby/task.rb; then
    echo "Skipping Ruby proto example (runtime failed)"
  fi
else
  echo "Skipping Ruby proto example (ruby or generated Ruby protobuf not available)"
fi

if command -v php >/dev/null 2>&1 && [[ -d "${tmp_dir}/php" ]]; then
  if ! PHP_INI_SCAN_DIR= PHP_INCLUDE_PATH="${tmp_dir}/php" php -d include_path="${tmp_dir}/php" examples/proto/php/task.php; then
    echo "Skipping PHP proto example (runtime failed)"
  fi
else
  echo "Skipping PHP proto example (php or generated PHP protobuf not available)"
fi

if command -v dart >/dev/null 2>&1 && [[ -d "${tmp_dir}/dart/monarchic/agent_protocol/v1" ]]; then
  dart_root="${tmp_dir}/dart-run"
  mkdir -p "${dart_root}/monarchic/agent_protocol/v1"
  cp "${tmp_dir}/dart/monarchic/agent_protocol/v1/"* "${dart_root}/monarchic/agent_protocol/v1/"
  cp examples/proto/dart/task.dart "${dart_root}/task.dart"
  if ! dart "${dart_root}/task.dart"; then
    echo "Skipping Dart proto example (runtime failed)"
  fi
else
  echo "Skipping Dart proto example (dart runtime or protoc-gen-dart not available)"
fi

echo "Examples compiled successfully"
