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
          pkgs = import nixpkgs { inherit system; };
        in
        {
          default = pkgs.rustPlatform.buildRustPackage {
            pname = "monarchic-agent-protocol";
            version = "0.1.0";
            src = ./.;
            cargoLock = {
              lockFile = ./Cargo.lock;
            };
          };
        });

      checks = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          default = self.packages.${system}.default;
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
              pkgs.nodejs
              pkgs.jq
              pkgs.python3
              pkgs.python3Packages.jsonschema
            ];
          };
        });
    };
}
