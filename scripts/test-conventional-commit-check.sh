#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
checker="${repo_root}/scripts/conventional_commit_check.py"
tmp_dir="$(mktemp -d)"
trap 'rm -rf "${tmp_dir}"' EXIT

valid_msg="${tmp_dir}/valid.msg"
invalid_msg="${tmp_dir}/invalid.msg"
deprecated_msg="${tmp_dir}/deprecated.msg"
merge_msg="${tmp_dir}/merge.msg"

printf 'feat(protocol): add schema manifest\n\nBody text.\n' >"${valid_msg}"
printf 'update schema manifest\n' >"${invalid_msg}"
printf 'mcp: add server manifest\n' >"${deprecated_msg}"
printf 'Merge branch '\''main'\'' into release\n' >"${merge_msg}"

python3 "${checker}" \
  --message-file "${valid_msg}" \
  --output "${tmp_dir}/valid.json" >/dev/null

if ! python3 "${checker}" \
  --message-file "${invalid_msg}" \
  --output "${tmp_dir}/invalid.json" >/dev/null 2>&1; then
  :
else
  echo "[test-conventional-commit-check] Expected non-conventional subject to fail." >&2
  exit 1
fi

python3 - <<'PY' "${tmp_dir}/invalid.json"
import json
import pathlib
import sys

payload = json.loads(pathlib.Path(sys.argv[1]).read_text(encoding="utf-8"))
assert payload["status"] == "fail"
assert payload["message"]["reason_code"] == "SUBJECT_NOT_CONVENTIONAL"
PY

if ! python3 "${checker}" \
  --message-file "${deprecated_msg}" \
  --output "${tmp_dir}/deprecated.json" >/dev/null 2>&1; then
  :
else
  echo "[test-conventional-commit-check] Expected deprecated MCP type to fail." >&2
  exit 1
fi

python3 - <<'PY' "${tmp_dir}/deprecated.json"
import json
import pathlib
import sys

payload = json.loads(pathlib.Path(sys.argv[1]).read_text(encoding="utf-8"))
assert payload["status"] == "fail"
assert payload["message"]["reason_code"] == "MCP_SKILLS_TYPE_DEPRECATED_USE_FEAT_SCOPE"
PY

python3 "${checker}" \
  --message-file "${merge_msg}" \
  --output "${tmp_dir}/merge.json" \
  --allow-merge-commits >/dev/null

if ! python3 "${checker}" \
  --message-file "${merge_msg}" \
  --output "${tmp_dir}/merge-disallowed.json" \
  --no-allow-merge-commits >/dev/null 2>&1; then
  :
else
  echo "[test-conventional-commit-check] Expected merge subject to fail when disallowed." >&2
  exit 1
fi

python3 - <<'PY' "${tmp_dir}/merge-disallowed.json"
import json
import pathlib
import sys

payload = json.loads(pathlib.Path(sys.argv[1]).read_text(encoding="utf-8"))
assert payload["status"] == "fail"
assert payload["message"]["reason_code"] == "SUBJECT_NOT_CONVENTIONAL"
PY

echo "[test-conventional-commit-check] PASS: conventional commit checker behavior is deterministic."
