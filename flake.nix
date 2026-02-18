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
            version = "0.1.10";
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
            version = "0.1.10";
            src = pkgs.fetchCrate {
              pname = "monarchic-agent-protocol";
              version = "0.1.10";
              sha256 = "sha256-h6M2iqCBPIiPplWjFtBFL/Jv+RskJSBGxl7zMNfp9cc=";
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
            version = "0.1.10";
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
            version = "0.1.10";
            format = "pyproject";
            src = pkgs.fetchPypi {
              pname = "monarchic_agent_protocol";
              version = "0.1.10";
              sha256 = "0pc753bmbhgfdcw2h4c1jlhcvas3pxh5rz65slp1g7mc5rdynv8i";
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
            version = "0.1.10";
            src = ./.;
            npmDepsHash = "sha256-NtaX5b0/+zq75rZXZFePms505Q8kytrhd89ZifQZZyM=";
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
            version = "0.1.10";
            src = pkgs.fetchurl {
              url = "https://registry.npmjs.org/@monarchic-ai/monarchic-agent-protocol/-/monarchic-agent-protocol-0.1.10.tgz";
              sha256 = "1sm8ry1ck5nqyw807a4zb6x9f7pchvm7nx92k0ys59qvrli7zmza";
            };
            npmDepsHash = "sha256-NtaX5b0/+zq75rZXZFePms505Q8kytrhd89ZifQZZyM=";
            npmPackFlags = [ "--ignore-scripts" ];
            forceEmptyCache = true;
            dontNpmBuild = true;
            dontNpmInstall = true;
            postPatch =
              let
                npmPackageLock = pkgs.writeText "npm-package-lock.json" ''
{
  "name": "@monarchic-ai/monarchic-agent-protocol",
  "version": "0.1.10",
  "lockfileVersion": 3,
  "requires": true,
  "packages": {
    "": {
      "name": "@monarchic-ai/monarchic-agent-protocol",
      "version": "0.1.10"
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
            version = "0.1.10";
            src = ./.;
            modRoot = "src/go";
            vendorHash = "sha256-xj9DXJyfqpCcYXRc6Yr6X4s0F2o3mUQ3HWSNLjlKxWc=";
          };

          go-registry-lib = pkgs.buildGoModule {
            pname = "monarchic-agent-protocol-go-mod";
            version = "0.1.10";
            src = pkgs.fetchFromGitHub {
              owner = "monarchic-ai";
              repo = "monarchic-agent-protocol";
              rev = "v0.1.10";
              sha256 = "14ph6nqnbc351xkwvbfcv3vf3p27pyyy02frnq2z12f5fii9nhiz";
            };
            modRoot = "src/go";
            vendorHash = "sha256-xj9DXJyfqpCcYXRc6Yr6X4s0F2o3mUQ3HWSNLjlKxWc=";
          };

          rb-lib = pkgs.buildRubyGem {
            gemName = "monarchic-agent-protocol";
            version = "0.1.10";
            src = ./.;
          };

          rb-registry-lib = pkgs.buildRubyGem {
            gemName = "monarchic-agent-protocol";
            version = "0.1.10";
            src = pkgs.fetchurl {
              url = "https://rubygems.org/downloads/monarchic-agent-protocol-0.1.10.gem";
              sha256 = "1q97h067bm6pgc883f5qmx5dziy4nrg9zg1jv9ls612q86hjvdb1";
            };
          };

          java-lib =
            let
              protobufJava = pkgs.fetchurl {
                url = "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/4.32.1/protobuf-java-4.32.1.jar";
                sha256 = "1jrjm2y2fz2ckq82b77b62bdrcxvn6lwxldin2qaz2rkf7cy96cc";
              };
            in
            pkgs.stdenv.mkDerivation {
            pname = "monarchic-agent-protocol-java";
            version = "0.1.10";
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
            url = "https://jitpack.io/com/github/monarchic-ai/monarchic-agent-protocol/v0.1.10/monarchic-agent-protocol-v0.1.10.jar";
            sha256 = "0zk78dprdbb93yr941n42wzlgic0n3q68avx22w7h08g4xybsq6l";
          };

          dart-lib = pkgs.stdenv.mkDerivation {
            pname = "monarchic-agent-protocol-dart";
            version = "0.1.10";
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
          #   url = "https://pub.dev/packages/monarchic_agent_protocol/versions/0.1.10.tar.gz";
          #   sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
          # };

          csharp-lib = pkgs.stdenv.mkDerivation {
            pname = "monarchic-agent-protocol-csharp";
            version = "0.1.10";
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
            url = "https://api.nuget.org/v3-flatcontainer/monarchic.agentprotocol/0.1.10/monarchic.agentprotocol.0.1.10.nupkg";
            sha256 = "0282lx5xcl54kgky1cnqx2inmz6qlkg14xcppj7z8rfgcmfd4kna";
          };

          php-lib = pkgs.stdenv.mkDerivation {
            pname = "monarchic-agent-protocol-php";
            version = "0.1.10";
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
            rev = "v0.1.10";
            sha256 = "14ph6nqnbc351xkwvbfcv3vf3p27pyyy02frnq2z12f5fii9nhiz";
          };
        });

      apps = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          generateProto = pkgs.writeShellApplication {
            name = "generate-proto";
            meta = {
              description = "Generate language bindings from protobuf schemas.";
            };
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
            meta = {
              description = "Update versions across project files.";
            };
            runtimeInputs = [
              pkgs.python3
              pkgs.ripgrep
            ];
            text = ''
              exec ${./scripts/update-version.sh} "$@"
            '';
          };
          updateRegistryHashes = pkgs.writeShellApplication {
            name = "update-registry-hashes";
            meta = {
              description = "Update registry package hashes in flake.nix.";
            };
            runtimeInputs = [
              pkgs.nix
              pkgs.nix-prefetch-scripts
              pkgs.prefetch-npm-deps
              pkgs.python3
            ];
            text = ''
              exec ${builtins.path { path = ./scripts/update-registry-hashes.sh; name = "update-registry-hashes.sh"; }} "$@"
            '';
          };
          updateLocalHashes = pkgs.writeShellApplication {
            name = "update-local-hashes";
            meta = {
              description = "Update local build hashes in flake.nix.";
            };
            runtimeInputs = [
              pkgs.nix
              pkgs.nix-prefetch-scripts
              pkgs.python3
            ];
          text = ''
            exec ${builtins.path { path = ./scripts/update-local-hashes.sh; name = "update-local-hashes.sh"; }} "$@"
          '';
        };
        in
        {
          generate-proto = {
            type = "app";
            program = "${generateProto}/bin/generate-proto";
            meta = {
              description = "Generate language bindings from protobuf schemas.";
            };
          };
          update-version = {
            type = "app";
            program = "${updateVersion}/bin/update-version";
            meta = {
              description = "Update versions across project files.";
            };
          };
          update-registry-hashes = {
            type = "app";
            program = "${updateRegistryHashes}/bin/update-registry-hashes";
            meta = {
              description = "Update registry package hashes in flake.nix.";
            };
          };
          update-local-hashes = {
            type = "app";
            program = "${updateLocalHashes}/bin/update-local-hashes";
            meta = {
              description = "Update local build hashes in flake.nix.";
            };
          };
        });

      checks = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
          goRegistrySrc = pkgs.fetchFromGitHub {
            owner = "monarchic-ai";
            repo = "monarchic-agent-protocol";
            rev = "v0.1.10";
            sha256 = "14ph6nqnbc351xkwvbfcv3vf3p27pyyy02frnq2z12f5fii9nhiz";
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
          rs-import = pkgs.rustPlatform.buildRustPackage {
            pname = "rs-import";
            version = "0.1.10";
            nativeBuildInputs = [ pkgs.protobuf ];
            src = pkgs.runCommand "rs-import-src" {} ''
              set -euo pipefail
              mkdir -p $out/src
              cat > $out/Cargo.toml <<'EOF'
[package]
name = "rs-import"
version = "0.1.10"
edition = "2021"

[dependencies]
monarchic-agent-protocol = { path = "${pkgs.fetchCrate {
  pname = "monarchic-agent-protocol";
  version = "0.1.10";
  sha256 = "sha256-h6M2iqCBPIiPplWjFtBFL/Jv+RskJSBGxl7zMNfp9cc=";
}}" }
EOF
              cat > $out/src/main.rs <<'EOF'
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
EOF
              cp ${./checks/rs-import.Cargo.lock} $out/Cargo.lock
            '';
            cargoLock = {
              lockFile = ./checks/rs-import.Cargo.lock;
            };
            doCheck = true;
            checkPhase = ''
              runHook preCheck
              ./target/*/release/rs-import >/dev/null
              runHook postCheck
            '';
          };

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
            version = "0.1.10";
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
            version = "0.1.10";
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
                  github.com/monarchic-ai/monarchic-agent-protocol/src/go v0.1.10
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
              version = "0.1.10";
              src = goModImport;
              vendorHash = "sha256-yZ14RLTS3DccTvhrcawxLFCMiyMgc8maZKez5obuaLc=";
              subPackages = [ "." ];
              doCheck = true;
              checkPhase = ''
                runHook preCheck
                go build .
                runHook postCheck
              '';
            });

          rb-import = pkgs.stdenv.mkDerivation {
            pname = "rb-import";
            version = "0.1.10";
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
                sha256 = "1jrjm2y2fz2ckq82b77b62bdrcxvn6lwxldin2qaz2rkf7cy96cc";
              };
            in
            pkgs.stdenv.mkDerivation {
            pname = "java-import";
            version = "0.1.10";
            nativeBuildInputs = [
              pkgs.jdk
            ];
            src = pkgs.writeTextDir "java-import/Main.java" ''
              package importcheck;

              import ai.monarchic.agent_protocol.v1.Task;
              import ai.monarchic.agent_protocol.v1.AgentRole;

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
              ${pkgs.jdk}/bin/javac -classpath "${self.packages.${system}.java-lib}/share/java/monarchic-agent-protocol.jar:${protobufJava}" -d build/classes $(find . -name '*.java')
              runHook postBuild
            '';
            installPhase = ''
              runHook preInstall
              mkdir -p $out
              runHook postInstall
            '';
            checkPhase = ''
              runHook preCheck
              ${pkgs.jdk}/bin/java -classpath "build/classes:${self.packages.${system}.java-lib}/share/java/monarchic-agent-protocol.jar:${protobufJava}" importcheck.Main
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
            test -f nupkg/lib/netstandard2.0/Monarchic.AgentProtocol.dll
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
