{
  description = "Monarchic AI protocol types and schemas";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);
    in
    {
      packages = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = self.packages.${system}.rs-lib;
          rs-lib = pkgs.rustPlatform.buildRustPackage {
            pname = "monarchic-agent-protocol";
            version = "0.1.6";
            src = ./.;
            nativeBuildInputs = [ pkgs.protobuf ];
            cargoLock = {
              lockFile = ./Cargo.lock;
            };
            installPhase = ''
              runHook preInstall
              mkdir -p $out/lib
              cp target/*/release/deps/*.rlib $out/lib/
              cp target/*/release/deps/*.rmeta $out/lib/ || true
              runHook postInstall
            '';
          };

          rs-registry-lib = pkgs.rustPlatform.buildRustPackage {
            pname = "monarchic-agent-protocol";
            version = "0.1.6";
            src = pkgs.fetchCrate {
              pname = "monarchic-agent-protocol";
              version = "0.1.6";
              sha256 = "14cvs2nnswk7k6v74mpbm78hyw4q185whb5k3jpp96357s5y795b";
            };
            nativeBuildInputs = [ pkgs.protobuf ];
            cargoLock = {
              lockFile = ./Cargo.lock;
            };
            installPhase = ''
              runHook preInstall
              mkdir -p $out/lib
              cp target/*/release/deps/*.rlib $out/lib/
              cp target/*/release/deps/*.rmeta $out/lib/ || true
              runHook postInstall
            '';
          };

          py-lib = pkgs.python3Packages.buildPythonPackage {
            pname = "monarchic-agent-protocol";
            version = "0.1.6";
            format = "pyproject";
            src = ./.;
            nativeBuildInputs = [
              pkgs.protobuf
              pkgs.python3Packages.setuptools
              pkgs.python3Packages.wheel
            ];
            propagatedBuildInputs = [ pkgs.python3Packages.protobuf ];
            preUnpack = ''
              export PROTO_DIR="${./schemas/v1}"
            '';
            preBuild = ''
              protoc -I "$PROTO_DIR" \
                --python_out=src/python/monarchic_agent_protocol \
                "$PROTO_DIR/monarchic_agent_protocol.proto"
            '';
          };

          py-registry-lib = pkgs.python3Packages.buildPythonPackage {
            pname = "monarchic-agent-protocol";
            version = "0.1.6";
            format = "pyproject";
            src = pkgs.fetchPypi {
              pname = "monarchic_agent_protocol";
              version = "0.1.6";
              sha256 = "sha256-qVyEvAg77SUm3InkwrwuT4U8dPcb4R2SUffB4jBRVUY=";
            };
            nativeBuildInputs = [
              pkgs.python3Packages.setuptools
              pkgs.python3Packages.wheel
            ];
            propagatedBuildInputs = [ pkgs.python3Packages.protobuf ];
            doCheck = false;
          };

          ts-lib = pkgs.buildNpmPackage {
            pname = "monarchic-agent-protocol-ts";
            version = "0.1.6";
            src = ./.;
            npmDepsHash = "sha256-mghwLtDPAW8j4+Ihs0vk6/xizUbC/vPAsUZllXknoWs=";
            npmPackFlags = [ "--ignore-scripts" ];
            forceEmptyCache = true;
            dontNpmBuild = true;
            dontNpmInstall = true;
            installPhase = ''
              runHook preInstall
              mkdir -p $out/lib/node_modules/@monarchic-ai/monarchic-agent-protocol
              cp package.json $out/lib/node_modules/@monarchic-ai/monarchic-agent-protocol/package.json
              cp -r src/ts $out/lib/node_modules/@monarchic-ai/monarchic-agent-protocol/src
              runHook postInstall
            '';
          };

          ts-registry-lib = pkgs.buildNpmPackage {
            pname = "monarchic-agent-protocol-npm";
            version = "0.1.6";
            src = pkgs.fetchurl {
              url = "https://registry.npmjs.org/@monarchic-ai/monarchic-agent-protocol/-/monarchic-agent-protocol-0.1.6.tgz";
              sha256 = "sha256-tSN4oIHnzI55n/64PfbwstH8LsE7NCbwbsQhcT6alYE=";
            };
            npmDepsHash = "sha256-mghwLtDPAW8j4+Ihs0vk6/xizUbC/vPAsUZllXknoWs=";
            npmPackFlags = [ "--ignore-scripts" ];
            forceEmptyCache = true;
            dontNpmBuild = true;
            dontNpmInstall = true;
            postPatch =
              let
                npmPackageLock = pkgs.writeText "npm-package-lock.json" ''
{
  "name": "@monarchic-ai/monarchic-agent-protocol",
  "version": "0.1.6",
  "lockfileVersion": 3,
  "requires": true,
  "packages": {
    "": {
      "name": "@monarchic-ai/monarchic-agent-protocol",
      "version": "0.1.6"
    }
  }
}
                '';
              in ''
                if [ ! -f package-lock.json ]; then
                  cp ${npmPackageLock} package-lock.json
                fi
              '';
            installPhase = ''
              runHook preInstall
              mkdir -p $out/lib/node_modules/@monarchic-ai/monarchic-agent-protocol
              tar -xzf $src -C $out/lib/node_modules/@monarchic-ai/monarchic-agent-protocol --strip-components=1
              runHook postInstall
            '';
          };

          go-lib = pkgs.buildGoModule {
            pname = "monarchic-agent-protocol-go";
            version = "0.1.6";
            src = ./.;
            modRoot = "src/go";
            vendorHash = "sha256-xj9DXJyfqpCcYXRc6Yr6X4s0F2o3mUQ3HWSNLjlKxWc=";
          };

          go-registry-lib = pkgs.buildGoModule {
            pname = "monarchic-agent-protocol-go-mod";
            version = "0.1.6";
            src = pkgs.fetchFromGitHub {
              owner = "monarchic-ai";
              repo = "monarchic-agent-protocol";
              rev = "0.1.6";
              sha256 = "sha256-0EFAYy4OlSMnY+qSx/qgR4GuA48Kcg6G1+G02VIs2ZQ=";
            };
            modRoot = "src/go";
            vendorHash = "sha256-xj9DXJyfqpCcYXRc6Yr6X4s0F2o3mUQ3HWSNLjlKxWc=";
          };

          rb-lib = pkgs.buildRubyGem {
            gemName = "monarchic-agent-protocol";
            version = "0.1.6";
            src = ./.;
          };

          rb-registry-lib = pkgs.buildRubyGem {
            gemName = "monarchic-agent-protocol";
            version = "0.1.6";
            src = pkgs.fetchurl {
              url = "https://rubygems.org/downloads/monarchic-agent-protocol-0.1.6.gem";
              sha256 = "sha256-O5p4zJb+iiGVn66ULqjpZwdtCAHU39UGQHRGv0cJzl8=";
            };
          };

          java-lib =
            let
              protobufJava = pkgs.fetchurl {
                url = "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/4.32.1/protobuf-java-4.32.1.jar";
                sha256 = "sha256-jJnk2XEzi6+wsLHRzqmxu7PcljDrnCUQnkx8J7yoMss=";
              };
            in
            pkgs.stdenv.mkDerivation {
            pname = "monarchic-agent-protocol-java";
            version = "0.1.6";
            src = ./.;
            nativeBuildInputs = [
              pkgs.jdk
            ];
            buildPhase = ''
              runHook preBuild
              mkdir -p build/classes
              ${pkgs.jdk}/bin/javac -classpath "${protobufJava}" -d build/classes $(find src/java -name '*.java')
              ${pkgs.jdk}/bin/jar cf build/monarchic-agent-protocol.jar -C build/classes .
              runHook postBuild
            '';
            installPhase = ''
              runHook preInstall
              mkdir -p $out/share/java
              cp build/monarchic-agent-protocol.jar $out/share/java/
              runHook postInstall
            '';
          };

          java-registry-lib = pkgs.fetchurl {
            url = "https://jitpack.io/com/github/monarchic-ai/monarchic-agent-protocol/0.1.6/monarchic-agent-protocol-0.1.6.jar";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
          };

          dart-lib = pkgs.stdenv.mkDerivation {
            pname = "monarchic-agent-protocol-dart";
            version = "0.1.6";
            src = ./.;
            installPhase = ''
              runHook preInstall
              mkdir -p $out/lib/dart
              cp -r $src/src/dart/lib $out/lib/dart/
              cp $src/pubspec.yaml $out/lib/dart/
              runHook postInstall
            '';
          };

          # TODO: pub.dev requires "domain"-based verification through the google console
          # dart-registry-lib = pkgs.fetchurl {
          #   url = "https://pub.dev/packages/monarchic_agent_protocol/versions/0.1.6.tar.gz";
          #   sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
          # };

          csharp-lib = pkgs.stdenv.mkDerivation {
            pname = "monarchic-agent-protocol-csharp";
            version = "0.1.6";
            src = builtins.path {
              path = ./.;
              name = "monarchic-agent-protocol-csharp-src";
            };
            installPhase = ''
              runHook preInstall
              mkdir -p $out/lib/csharp
              cp -r $src/src/csharp $out/lib/csharp/
              cp $src/Monarchic.AgentProtocol.csproj $out/lib/csharp/
              runHook postInstall
            '';
          };

          csharp-registry-lib = pkgs.fetchurl {
            url = "https://api.nuget.org/v3-flatcontainer/monarchic.agentprotocol/0.1.6/monarchic.agentprotocol.0.1.6.nupkg";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
          };

          php-lib = pkgs.stdenv.mkDerivation {
            pname = "monarchic-agent-protocol-php";
            version = "0.1.6";
            src = builtins.path {
              path = ./.;
              name = "monarchic-agent-protocol-php-src";
            };
            installPhase = ''
              runHook preInstall
              mkdir -p $out/lib/php
              cp -r $src/src/php $out/lib/php/
              cp $src/composer.json $out/lib/php/
              runHook postInstall
            '';
          };

          php-registry-lib = pkgs.fetchFromGitHub {
            owner = "monarchic-ai";
            repo = "monarchic-agent-protocol";
            rev = "0.1.6";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
          };
        });

      apps = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          generateProto = pkgs.writeShellApplication {
            name = "generate-proto";
            runtimeInputs = [
              pkgs.protobuf
              pkgs.protoc-gen-go
              pkgs.protoc-gen-dart
            ];
            text = ''
              exec ${./scripts/generate-proto.sh} "$@"
            '';
          };
          updateVersion = pkgs.writeShellApplication {
            name = "update-version";
            runtimeInputs = [
              pkgs.python3
              pkgs.ripgrep
            ];
            text = ''
              exec ${./scripts/update-version.sh} "$@"
            '';
          };
        in
        {
          generate-proto = {
            type = "app";
            program = "${generateProto}/bin/generate-proto";
          };
          update-version = {
            type = "app";
            program = "${updateVersion}/bin/update-version";
          };
        });

      checks = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
          goRegistrySrc = pkgs.fetchFromGitHub {
            owner = "monarchic-ai";
            repo = "monarchic-agent-protocol";
            rev = "0.1.6";
            sha256 = "sha256-0EFAYy4OlSMnY+qSx/qgR4GuA48Kcg6G1+G02VIs2ZQ=";
          };
          rbProtobuf = pkgs.buildRubyGem {
            gemName = "google-protobuf";
            version = "3.25.3";
            hardeningDisable = [ "format" ];
            src = pkgs.fetchurl {
              url = "https://rubygems.org/downloads/google-protobuf-3.25.3.gem";
              sha256 = "sha256-Ob2Xy8djGQXnbN+PG/PdocPQUgDX4j9XWs7XiTD73dY=";
            };
          };
        in
        {
          default = self.packages.${system}.default;
          rs-import = pkgs.rustPlatform.buildRustPackage
            (let
              crateImportLock = ''
# This file is automatically @generated by Cargo.
# It is not intended for manual editing.
version = 3

[[package]]
name = "rs-import"
version = "0.1.6"
dependencies = [
 "monarchic-agent-protocol",
]

[[package]]
name = "itoa"
version = "1.0.17"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "92ecc6618181def0457392ccd0ee51198e065e016d1d527a7ac1b6dc7c1f09d2"

[[package]]
name = "memchr"
version = "2.7.6"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "f52b00d39961fc5b2736ea853c9cc86238e165017a493d1d5c8eac6bdc4cc273"

[[package]]
name = "monarchic-agent-protocol"
version = "0.1.6"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "aba4e38b3e659874af1cb32cc80b0a98700fd1a9eb5672b69967726dadd09b91"
dependencies = [
 "serde",
 "serde_json",
]

[[package]]
name = "proc-macro2"
version = "1.0.106"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "8fd00f0bb2e90d81d1044c2b32617f68fcb9fa3bb7640c23e9c748e53fb30934"
dependencies = [
 "unicode-ident",
]

[[package]]
name = "quote"
version = "1.0.44"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "21b2ebcf727b7760c461f091f9f0f539b77b8e87f2fd88131e7f1b433b3cece4"
dependencies = [
 "proc-macro2",
]

[[package]]
name = "serde"
version = "1.0.228"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "9a8e94ea7f378bd32cbbd37198a4a91436180c5bb472411e48b5ec2e2124ae9e"
dependencies = [
 "serde_core",
 "serde_derive",
]

[[package]]
name = "serde_core"
version = "1.0.228"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "41d385c7d4ca58e59fc732af25c3983b67ac852c1a25000afe1175de458b67ad"

[[package]]
name = "serde_derive"
version = "1.0.228"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "d540f220d3187173da220f885ab66608367b6574e925011a9353e4badda91d79"
dependencies = [
 "proc-macro2",
 "quote",
 "syn",
]

[[package]]
name = "serde_json"
version = "1.0.149"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "83fc039473c5595ace860d8c4fafa220ff474b3fc6bfdb4293327f1a37e94d86"
dependencies = [
 "itoa",
 "memchr",
 "serde_core",
 "zmij",
]

[[package]]
name = "syn"
version = "2.0.114"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "d4d107df263a3013ef9b1879b0df87d706ff80f65a86ea879bd9c31f9b307c2a"
dependencies = [
 "proc-macro2",
 "quote",
 "unicode-ident",
]

[[package]]
name = "unicode-ident"
version = "1.0.22"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "9312f7c4f6ff9069b165498234ce8be658059c6728633667c526e27dc2cf1df5"

[[package]]
name = "zmij"
version = "1.0.19"
source = "registry+https://github.com/rust-lang/crates.io-index"
checksum = "3ff05f8caa9038894637571ae6b9e29466c1f4f829d26c9b28f869a29cbe3445"
              '';
            in {
            pname = "rs-import";
            version = "0.1.6";
            nativeBuildInputs = [ pkgs.protobuf ];
            src =
              let
                crateImportCargoToml = pkgs.writeText "rs-import-Cargo.toml" ''
[package]
name = "rs-import"
version = "0.1.6"
edition = "2021"

[dependencies]
monarchic-agent-protocol = { path = "${pkgs.fetchCrate {
  pname = "monarchic-agent-protocol";
  version = "0.1.6";
  sha256 = "14cvs2nnswk7k6v74mpbm78hyw4q185whb5k3jpp96357s5y795b";
}}" }
                '';
                crateImportMainRs = pkgs.writeText "rs-import-main.rs" ''
use monarchic_agent_protocol::{AgentRole, Task, PROTOCOL_VERSION};

fn main() {
    let task = Task {
        version: PROTOCOL_VERSION.to_string(),
        task_id: "task-123".to_string(),
        role: AgentRole::Dev as i32,
        goal: "hello".to_string(),
        inputs: None,
        constraints: None,
        gates_required: Vec::new(),
        run_context: None,
        extensions: Default::default(),
    };
    println!("{}", task.task_id);
}
                '';
                crateImportCargoLock = pkgs.writeText "rs-import-Cargo.lock" crateImportLock;
              in
              pkgs.runCommand "rs-import-src" {} ''
                set -euo pipefail
                mkdir -p $out/src
                cp ${crateImportCargoToml} $out/Cargo.toml
                cp ${crateImportCargoLock} $out/Cargo.lock
                cp ${crateImportMainRs} $out/src/main.rs
              '';
            cargoLock = {
              lockFile = pkgs.writeText "rs-import-Cargo.lock" crateImportLock;
            };
            cargoHash = "";
            doCheck = true;
            checkPhase = ''
              runHook preCheck
              ./target/*/release/rs-import >/dev/null
              runHook postCheck
            '';
          });

          schema-validation = pkgs.runCommand "schema-validation" {
            nativeBuildInputs = [ pkgs.python3 pkgs.python3Packages.jsonschema ];
          } ''
            set -euo pipefail
            python <<'PY'
            import json
            import os
            from jsonschema import Draft202012Validator

            schema_dir = "${./schemas/v1}"
            schemas = []
            for name in os.listdir(schema_dir):
                if name.endswith(".json"):
                    with open(os.path.join(schema_dir, name), "r", encoding="utf-8") as handle:
                        schemas.append(json.load(handle))

            for schema in schemas:
                Draft202012Validator.check_schema(schema)
            PY
            touch $out
          '';

          proto-validation = pkgs.runCommand "proto-validation" {
            nativeBuildInputs = [
              pkgs.protobuf
            ];
          } ''
            set -euo pipefail
            bash ${./scripts/test-proto.sh} ${./schemas/v1/monarchic_agent_protocol.proto}
            touch $out
          '';

          py-import = pkgs.stdenv.mkDerivation {
            pname = "py-import";
            version = "0.1.6";
            nativeBuildInputs = [
              (pkgs.python3.withPackages (ps: [ self.packages.${system}.py-registry-lib ]))
            ];
            src = pkgs.writeTextDir "py-import-check.py" ''
              import monarchic_agent_protocol
              from monarchic_agent_protocol import monarchic_agent_protocol_pb2 as pb

              task = pb.Task(version="v1", task_id="t1", role=pb.AgentRole.DEV, goal="hello")
              assert task.version == "v1"
            '';
            installPhase = ''
              runHook preInstall
              mkdir -p $out/bin
              cat > $out/bin/py-import-check <<'PY'
              #!/usr/bin/env python
              import monarchic_agent_protocol
              from monarchic_agent_protocol import monarchic_agent_protocol_pb2 as pb

              task = pb.Task(version="v1", task_id="t1", role=pb.AgentRole.DEV, goal="hello")
              assert task.version == "v1"
              PY
              chmod +x $out/bin/py-import-check
              runHook postInstall
            '';
            checkPhase = ''
              runHook preCheck
              $out/bin/py-import-check
              runHook postCheck
            '';
          };

          ts-import = pkgs.stdenv.mkDerivation {
            pname = "ts-import";
            version = "0.1.6";
            nativeBuildInputs = [
              pkgs.nodejs
              pkgs.nodePackages.typescript
            ];
            src = pkgs.writeTextDir "ts-import-check.ts" ''
              import { Task } from "@monarchic-ai/monarchic-agent-protocol";

              const task: Task = {
                version: "v1",
                task_id: "task-123",
                role: "dev",
                goal: "hello",
              };

              void task;
            '';
            installPhase = ''
              runHook preInstall
              mkdir -p $out
              runHook postInstall
            '';
            checkPhase = ''
              runHook preCheck
              mkdir -p node_modules/@monarchic-ai
              cp -r ${self.packages.${system}.ts-registry-lib}/lib/node_modules/@monarchic-ai/monarchic-agent-protocol node_modules/@monarchic-ai/monarchic-agent-protocol
              cat > tsconfig.json <<'JSON'
              {
                "compilerOptions": {
                  "target": "ES2020",
                  "module": "ESNext",
                  "moduleResolution": "Node",
                  "strict": true,
                  "noEmit": true,
                  "skipLibCheck": true
                }
              }
              JSON
              cat > index.ts <<'TS'
              import { Task } from "@monarchic-ai/monarchic-agent-protocol";

              const task: Task = {
                version: "v1",
                task_id: "task-123",
                role: "dev",
                goal: "hello",
              };

              void task;
              TS
              tsc --noEmit index.ts
              runHook postCheck
            '';
          };

          go-import = pkgs.buildGoModule
            (let
              goModImport = pkgs.runCommand "go-import-src" {} ''
                set -euo pipefail
                mkdir -p $out
                cp -r ${goRegistrySrc} $out/monarchic-agent-protocol
                cat > $out/go.mod <<'MOD'
                module go-import

                go 1.22

                require (
                  github.com/monarchic-ai/monarchic-agent-protocol/src/go 0.1.6
                  google.golang.org/protobuf v1.34.2
                )

                replace github.com/monarchic-ai/monarchic-agent-protocol/src/go => ./monarchic-agent-protocol/src/go

                MOD
                cp ${./src/go/go.sum} $out/go.sum
                cat > $out/main.go <<'GO'
                package main

                import (
                  agentprotocol "github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1"
                )

                func main() {
                  _ = &agentprotocol.Task{
                    Version: "v1",
                    TaskId: "task-123",
                    Role: agentprotocol.AgentRole_DEV,
                    Goal: "hello",
                  }
                }
                GO
              '';
            in
            {
              pname = "go-import";
              version = "0.1.6";
              src = goModImport;
              vendorHash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
              doCheck = true;
              checkPhase = ''
                runHook preCheck
                go build ./...
                runHook postCheck
              '';
            });

          rb-import = pkgs.stdenv.mkDerivation {
            pname = "rb-import";
            version = "0.1.6";
            nativeBuildInputs = [ pkgs.ruby ];
            buildInputs = [
              self.packages.${system}.rb-registry-lib
              rbProtobuf
            ];
            src = pkgs.writeTextDir "rb-import-check.rb" ''
              require "monarchic_agent_protocol"

              task = Monarchic::AgentProtocol::V1::Task.new(
                version: "v1",
                task_id: "task-123",
                role: Monarchic::AgentProtocol::V1::AgentRole::DEV,
                goal: "hello"
              )

              raise "unexpected task_id" unless task.task_id == "task-123"
            '';
            installPhase = ''
              runHook preInstall
              mkdir -p $out/bin
              cat > $out/bin/rb-import-check <<'RB'
              #!/usr/bin/env ruby
              require "monarchic_agent_protocol"

              task = Monarchic::AgentProtocol::V1::Task.new(
                version: "v1",
                task_id: "task-123",
                role: Monarchic::AgentProtocol::V1::AgentRole::DEV,
                goal: "hello"
              )

              raise "unexpected task_id" unless task.task_id == "task-123"
              RB
              chmod +x $out/bin/rb-import-check
              runHook postInstall
            '';
            checkPhase = ''
              runHook preCheck
              export GEM_PATH="${self.packages.${system}.rb-registry-lib}/${pkgs.ruby.gemPath}:${rbProtobuf}/${pkgs.ruby.gemPath}"
              $out/bin/rb-import-check
              runHook postCheck
            '';
          };

          java-import =
            let
              protobufJava = pkgs.fetchurl {
                url = "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/4.32.1/protobuf-java-4.32.1.jar";
                sha256 = "sha256-jJnk2XEzi6+wsLHRzqmxu7PcljDrnCUQnkx8J7yoMss=";
              };
            in
            pkgs.stdenv.mkDerivation {
            pname = "java-import";
            version = "0.1.6";
            nativeBuildInputs = [
              pkgs.jdk
            ];
            src = pkgs.writeTextDir "java-import/Main.java" ''
              package importcheck;

              import monarchic.agent_protocol.v1.Task;
              import monarchic.agent_protocol.v1.AgentRole;

              public class Main {
                public static void main(String[] args) {
                  Task task = Task.newBuilder()
                    .setVersion("v1")
                    .setTaskId("task-123")
                    .setRole(AgentRole.DEV)
                    .setGoal("hello")
                    .build();
                  if (!"task-123".equals(task.getTaskId())) {
                    throw new RuntimeException("unexpected task_id");
                  }
                }
              }
            '';
            buildPhase = ''
              runHook preBuild
              mkdir -p build/classes
              ${pkgs.jdk}/bin/javac -classpath "${self.packages.${system}.java-registry-lib}:${protobufJava}" -d build/classes $(find . -name '*.java')
              runHook postBuild
            '';
            installPhase = ''
              runHook preInstall
              mkdir -p $out
              runHook postInstall
            '';
            checkPhase = ''
              runHook preCheck
              ${pkgs.jdk}/bin/java -classpath "build/classes:${self.packages.${system}.java-registry-lib}:${protobufJava}" importcheck.Main
              runHook postCheck
            '';
          };

          # TODO: pub.dev requires "domain"-based verification through the google console
          # dart-import = pkgs.runCommand "dart-import" {} ''
          #   set -euo pipefail
          #   tar -xzf ${self.packages.${system}.dart-registry-lib} -C .
          #   test -f package/lib/monarchic_agent_protocol.pb.dart
          #   rg "class Task" package/lib/monarchic_agent_protocol.pb.dart
          #   touch $out
          # '';

          csharp-import = pkgs.runCommand "csharp-import" { nativeBuildInputs = [ pkgs.unzip pkgs.ripgrep ]; } ''
            set -euo pipefail
            unzip -q ${self.packages.${system}.csharp-registry-lib} -d nupkg
            rg "class Task" nupkg/lib -g '*.cs'
            touch $out
          '';

          php-import = pkgs.runCommand "php-import" { nativeBuildInputs = [ pkgs.ripgrep ]; } ''
            set -euo pipefail
            rg "class Task" ${self.packages.${system}.php-registry-lib}/src/php/Monarchic/AgentProtocol/V1/Task.php
            touch $out
          '';
        });

      devShells = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          default = pkgs.mkShell {
            packages = [
              pkgs.cargo
              pkgs.rustc
              pkgs.rustfmt
              pkgs.protobuf
              pkgs.nodejs
              pkgs.jq
              pkgs.python3
              pkgs.python3Packages.jsonschema
            ];
          };
        });
    };
}
