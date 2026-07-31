#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
workflow_path="${repo_root}/.github/workflows/nix-ci.yml"

if [[ ! -f "${workflow_path}" ]]; then
  echo "[test-ci-schema-validation-hook] Missing workflow: ${workflow_path}" >&2
  exit 1
fi

declare -a required_snippets=(
  "uses: monarchic-ai/.github/.github/workflows/nix-ci.yml@main"
  "publish_cache: \${{ github.event_name == 'workflow_dispatch' || (github.event_name == 'push' && github.ref == 'refs/heads/main') }}"
)

for snippet in "${required_snippets[@]}"; do
  if ! grep -Fq "${snippet}" "${workflow_path}"; then
    echo "[test-ci-schema-validation-hook] Missing Nix CI snippet: ${snippet}" >&2
    exit 1
  fi
done

if grep -Fq "pull_request" "${workflow_path}"; then
  echo "[test-ci-schema-validation-hook] Nix CI must not run on pull_request." >&2
  exit 1
fi

if grep -Fq "ubuntu-" "${workflow_path}"; then
  echo "[test-ci-schema-validation-hook] Nix CI must not use Ubuntu fallback runners." >&2
  exit 1
fi

echo "[test-ci-schema-validation-hook] PASS: CI delegates schema validation to shared Nix CI."
