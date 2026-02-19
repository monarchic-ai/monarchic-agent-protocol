#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
proto_test_script="${repo_root}/scripts/test-proto.sh"
proto_file="${repo_root}/schemas/v1/monarchic_agent_protocol.proto"

if [[ ! -x "${proto_test_script}" ]]; then
  echo "[test-proto-availability-smoke] Missing executable: ${proto_test_script}" >&2
  exit 1
fi

if [[ ! -f "${proto_file}" ]]; then
  echo "[test-proto-availability-smoke] Missing proto schema: ${proto_file}" >&2
  exit 1
fi

bash_bin="$(command -v bash)"
dirname_bin="$(command -v dirname)"
basename_bin="$(command -v basename)"

fake_bin="$(mktemp -d)"
stderr_log="$(mktemp)"
trap 'rm -rf "${fake_bin}" "${stderr_log}"' EXIT

# Keep only the minimum commands needed before protoc lookup.
ln -s "${dirname_bin}" "${fake_bin}/dirname"
ln -s "${basename_bin}" "${fake_bin}/basename"

set +e
PATH="${fake_bin}" "${bash_bin}" "${proto_test_script}" "${proto_file}" >/dev/null 2>"${stderr_log}"
exit_code=$?
set -e

if [[ "${exit_code}" -eq 0 ]]; then
  echo "[test-proto-availability-smoke] Expected failure when protoc is unavailable." >&2
  exit 1
fi

if ! grep -q "^protoc not found in PATH$" "${stderr_log}"; then
  echo "[test-proto-availability-smoke] Unexpected stderr output:" >&2
  cat "${stderr_log}" >&2
  exit 1
fi

echo "[test-proto-availability-smoke] PASS: protoc availability guard is deterministic."
