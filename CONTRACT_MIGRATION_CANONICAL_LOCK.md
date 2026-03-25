# Contract Migration Canonical Lock

This checklist defines the migration finish line for making protocol contracts owned by
`monarchic-agent-protocol` and consumed by downstream crates through a thin adapter layer.

Canonical contract source:

- Canonical protocol types live in `monarchic-agent-protocol` for:
  - `Plan`
  - `PlanStep`
  - `PlanStatus`
  - `RoleProvenance`
  - `PlanProvenance`
  - `FailureClass`
  - `FailureDetail`
  - `ExecutionReceipt`
- `monarchic-lib` may only provide adapters/conversions for these types.
- No new semantic schema owners should be introduced in `monarchic-lib` during migration.

Behavioral lock:

- Success flow emits both manifest + `receipt.json` with typed success metadata.
- Typed execution failure emits manifest + `receipt.json` with typed `FailureDetail`.
- Pre-execution guard failures emit no manifest and no `receipt.json`.
- `contract_version` remains populated and stable for produced receipts.
- Receipt shape is stable from the seam perspective (`receipt.json` and manifest contracts preserved).

Protocol repo gates:

- CI in `monarchic-agent-protocol` must run:
  - `bash scripts/lint-schemas.sh`
  - `bash scripts/test-json-schema.sh`
  - `bash scripts/test-readme-schema-index-coverage.sh`
  - `bash scripts/test-schema-changelog-format.sh`
  - generated root schema check via `bash scripts/generate-json-schema.sh` + `git diff --exit-code -- schemas/v1/schema.json`

Consumer lock:

- Downstream repo seam checks in `monarch` must continue to run:
  - `scripts/validate_autonomy_seam.sh`
- Any migration step that changes contract ownership must keep this script green.

Migration completion condition:

- Protocol schema contract is the single source of truth.
- `monarchic-lib` remains adapter-only at protocol seam boundaries.
- Canonical protocol types are read from/serialized through the adapter without duplicate local model ownership.
- All above gates pass.
