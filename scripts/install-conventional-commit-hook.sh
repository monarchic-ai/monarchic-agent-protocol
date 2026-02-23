#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage: install-conventional-commit-hook.sh [--force]

Installs a local git commit-msg hook that enforces Conventional Commit subjects.

Options:
  --force   Overwrite an existing non-monarchic commit-msg hook without backup.
  -h, --help Show help.
USAGE
}

FORCE=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    --force)
      FORCE=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

if ! git rev-parse --git-dir >/dev/null 2>&1; then
  echo "Not inside a git repository." >&2
  exit 1
fi

ROOT_DIR="$(git rev-parse --show-toplevel)"
GIT_DIR="$(git rev-parse --git-dir)"
HOOK_PATH="$GIT_DIR/hooks/commit-msg"
MARKER="# monarch conventional commit hook"

mkdir -p "$(dirname "$HOOK_PATH")"

if [[ -f "$HOOK_PATH" ]] && ! grep -qF "$MARKER" "$HOOK_PATH"; then
  if [[ "$FORCE" -eq 1 ]]; then
    echo "Overwriting existing non-monarchic commit-msg hook due to --force."
  else
    backup="${HOOK_PATH}.pre-monarchic.$(date -u +%Y%m%dT%H%M%SZ).bak"
    cp "$HOOK_PATH" "$backup"
    echo "Backed up existing commit-msg hook to: $backup"
  fi
fi

cat >"$HOOK_PATH" <<EOF
#!/usr/bin/env bash
set -euo pipefail
$MARKER

MSG_FILE="\${1:-}"
if [[ -z "\$MSG_FILE" ]]; then
  echo "commit-msg hook missing message file argument" >&2
  exit 2
fi

ROOT_DIR="\$(git rev-parse --show-toplevel)"
GIT_DIR="\$(git rev-parse --git-dir)"
SUMMARY_PATH="\$GIT_DIR/conventional-commit-hook-summary.json"
CHECKER="\$ROOT_DIR/scripts/conventional_commit_check.py"

if [[ ! -f "\$CHECKER" ]]; then
  echo "conventional commit checker not found: \$CHECKER" >&2
  exit 1
fi

if ! python3 "\$CHECKER" \
  --message-file "\$MSG_FILE" \
  --output "\$SUMMARY_PATH" \
  --allow-merge-commits \
  --allow-git-revert >/dev/null 2>&1; then
  reason="\$(python3 - <<'PY' "\$SUMMARY_PATH" 2>/dev/null || true
import json
import pathlib
import sys
path = pathlib.Path(sys.argv[1])
if not path.exists():
    print("UNKNOWN")
    raise SystemExit(0)
payload = json.loads(path.read_text(encoding="utf-8"))
msg = payload.get("message", {})
print(msg.get("reason_code", payload.get("reason_code", "UNKNOWN")))
PY
)"
  subject="\$(head -n1 "\$MSG_FILE" | tr -d '\r')"
  echo "Conventional Commit check failed: \$reason" >&2
  echo "Subject: \$subject" >&2
  echo "Expected format: type(scope?): description" >&2
  echo "Example: feat(worker): add idle worker auto-restart" >&2
  echo "MCP example: feat(mcp): add server capability manifest checks" >&2
  echo "Skills example: feat(skills): add skill installer sync adapter" >&2
  exit 1
fi
EOF

chmod +x "$HOOK_PATH"
echo "Installed commit-msg hook at: $HOOK_PATH"
echo "Repo: $ROOT_DIR"
