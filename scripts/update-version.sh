#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <new-version>" >&2
  exit 1
fi

input_version="$1"
new_version="${input_version#v}"

if [[ ! -f Cargo.toml ]]; then
  echo "Run from repo root" >&2
  exit 1
fi

old_version=$(python - <<'PY'
import re
from pathlib import Path
text = Path("Cargo.toml").read_text(encoding="utf-8")
m = re.search(r'^version\s*=\s*"([^"]+)"', text, flags=re.M)
if not m:
    raise SystemExit("Could not find version in Cargo.toml")
print(m.group(1))
PY
)

if [[ "$old_version" == "$new_version" ]]; then
  echo "Version already $new_version" >&2
  exit 0
fi

update_text() {
  local file="$1"
  python - <<PY
from pathlib import Path
path = Path("$file")
text = path.read_text(encoding="utf-8")
text = text.replace("$old_version", "$new_version")
text = text.replace(f"v$old_version", f"v$new_version")
path.write_text(text, encoding="utf-8")
PY
}

update_json_version() {
  local file="$1"
  python - <<PY
import json
from pathlib import Path
path = Path("$file")
obj = json.loads(path.read_text(encoding="utf-8"))
obj["version"] = "$new_version"
path.write_text(json.dumps(obj, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")
PY
}

# Text-based versions
update_text Cargo.toml
update_text setup.cfg
update_text pubspec.yaml
update_text build.gradle.kts
update_text Monarchic.AgentProtocol.csproj
update_text flake.nix

# JSON version fields
update_json_version package.json
update_json_version package-lock.json
update_json_version composer.json

# Keep package-lock's top-level package version in sync when present
python - <<PY
import json
from pathlib import Path
path = Path("package-lock.json")
obj = json.loads(path.read_text(encoding="utf-8"))
if "packages" in obj and "" in obj["packages"]:
    obj["packages"][""]["version"] = "$new_version"
path.write_text(json.dumps(obj, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")
PY

# Strip accidental v-prefixes on the new version in known files
python - <<PY
from pathlib import Path

new_version = "$new_version"
files = [
    "Cargo.toml",
    "setup.cfg",
    "pubspec.yaml",
    "build.gradle.kts",
    "Monarchic.AgentProtocol.csproj",
]
for file in files:
    path = Path(file)
    if not path.exists():
        continue
    text = path.read_text(encoding="utf-8")
    text = text.replace(f"v{new_version}", new_version)
    path.write_text(text, encoding="utf-8")
PY

# Update gemspec version explicitly (it may not match old_version)
python - <<PY
import re
from pathlib import Path
path = Path("monarchic-agent-protocol.gemspec")
if path.exists():
    text = path.read_text(encoding="utf-8")
    text = re.sub(r'^(\s*spec\.version\s*=\s*)"[^"]+"', r'\1"%s"' % "$new_version", text, flags=re.M)
    path.write_text(text, encoding="utf-8")
PY

# Update gradle.properties if it ever gains a version field
if rg -q "version" gradle.properties 2>/dev/null; then
  update_text gradle.properties
fi

# Refresh Cargo.lock if cargo is available
if command -v cargo >/dev/null 2>&1; then
  cargo generate-lockfile
fi

echo "Updated version $old_version -> $new_version"
