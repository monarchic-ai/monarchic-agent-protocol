#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
python_bin="${PYTHON_BIN:-}"

if [[ -z "${python_bin}" ]]; then
  if command -v python >/dev/null 2>&1; then
    python_bin="python"
  elif command -v python3 >/dev/null 2>&1; then
    python_bin="python3"
  else
    echo "[pre-commit-schema-json-parse] python or python3 is required" >&2
    exit 1
  fi
fi

declare -a candidate_files=()

if [[ "$#" -gt 0 ]]; then
  candidate_files=("$@")
elif command -v git >/dev/null 2>&1 && git -C "${repo_root}" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  while IFS= read -r path; do
    if [[ "${path}" =~ ^schemas/.*\.json$ ]]; then
      candidate_files+=("${path}")
    fi
  done < <(git -C "${repo_root}" diff --cached --name-only --diff-filter=ACMR)
else
  while IFS= read -r path; do
    candidate_files+=("${path}")
  done < <(find "${repo_root}/schemas" -type f -name '*.json' | sed "s#^${repo_root}/##" | sort)
fi

if [[ "${#candidate_files[@]}" -eq 0 ]]; then
  echo "[pre-commit-schema-json-parse] No schema JSON files to validate."
  exit 0
fi

candidate_payload="$(printf '%s\n' "${candidate_files[@]}")"

REPO_ROOT="${repo_root}" CANDIDATE_FILES="${candidate_payload}" "${python_bin}" <<'PY'
import json
import os
import sys

repo_root = os.environ["REPO_ROOT"]
raw_candidates = os.environ.get("CANDIDATE_FILES", "")
candidates = [line.strip() for line in raw_candidates.splitlines() if line.strip()]

normalized = []
seen = set()
for candidate in candidates:
    abs_path = candidate if os.path.isabs(candidate) else os.path.join(repo_root, candidate)
    norm_path = os.path.normpath(abs_path)
    if norm_path in seen:
        continue
    seen.add(norm_path)
    normalized.append(norm_path)

for path in normalized:
    try:
        with open(path, "r", encoding="utf-8") as handle:
            json.load(handle)
    except Exception as exc:
        rel_path = os.path.relpath(path, repo_root) if path.startswith(repo_root + os.sep) else path
        print(
            f"[pre-commit-schema-json-parse] Invalid JSON in {rel_path}: {exc}",
            file=sys.stderr,
        )
        raise SystemExit(1)

print(
    f"[pre-commit-schema-json-parse] Parsed {len(normalized)} schema JSON file(s)."
)
PY
