#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="${REPO_ROOT:-}"
if [[ -z "${ROOT_DIR}" ]]; then
  ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
fi
python3 "$ROOT_DIR/scripts/conventional_commit_check.py" "$@"
