# Schema Change Log

Track schema edits in reverse chronological order. Each entry must include:

- `task_id`
- `summary`
- `schema_files`
- `validation`

## 2026-03-25
- task_id: task-proto-008
- summary: Added canonical verification receipt protobuf contracts and tightened the client-boundary VerificationReceipt with contract_version, execution receipt linkage, and validity checks that stay compatibility-safe for older JSON artifacts.
- schema_files: schemas/v1/monarchic_agent_protocol.proto
- validation: bash scripts/lint-schemas.sh && bash scripts/test-proto.sh && cargo test -q && bash scripts/update-local-hashes.sh

## 2026-03-25
- task_id: task-proto-007
- summary: Added canonical intent_class to the planning Intent contract across the protobuf and client-boundary Rust surfaces, with unspecified-default compatibility for older JSON artifacts.
- schema_files: schemas/v1/monarchic_agent_protocol.proto
- validation: bash scripts/lint-schemas.sh && bash scripts/test-proto.sh && cargo test -q && bash scripts/update-local-hashes.sh

## 2026-03-25
- task_id: task-proto-006
- summary: Added canonical protobuf planning-boundary contracts for Intent and typed plan metadata, including step kind, replan policy, expected outputs, and input intent lineage on Plan and PlanStep.
- schema_files: schemas/v1/monarchic_agent_protocol.proto
- validation: bash scripts/lint-schemas.sh && bash scripts/test-proto.sh && cargo test -q && bash scripts/update-local-hashes.sh

## 2026-03-25
- task_id: task-proto-005
- summary: Added protobuf-only lease resume control messages and the lease superseded rejection reason for restart-safe runner reconnect handling.
- schema_files: schemas/v1/monarchic_agent_protocol.proto
- validation: bash scripts/lint-schemas.sh && bash scripts/test-proto.sh && cargo test -q && bash scripts/update-local-hashes.sh

## 2026-03-25
- task_id: task-proto-004
- summary: Added durable authority contracts for lease persistence, fencing, lifecycle state, and recovery events across the canonical proto and Rust authority surface.
- schema_files: schemas/v1/monarchic_agent_protocol.proto
- validation: bash scripts/lint-schemas.sh && bash scripts/test-proto.sh && cargo test -q && bash scripts/update-local-hashes.sh

## 2026-03-25
- task_id: task-proto-003
- summary: Added canonical protobuf-only runner control-plane RPC contracts for registration, leases, heartbeats, progress, outcomes, and cancellation acknowledgements.
- schema_files: schemas/v1/monarchic_agent_protocol.proto
- validation: bash scripts/lint-schemas.sh && bash scripts/test-proto.sh && bash scripts/test-schema-changelog-format.sh && cargo test -q

## 2026-03-24
- task_id: task-proto-002
- summary: Added canonical autonomy-plan and execution receipt protocol contracts (Plan, PlanStep, PlanStatus, FailureDetail, PlanProvenance, RoleProvenance, ExecutionReceipt), plus schema index updates.
- schema_files: schemas/v1/plan_status.json, schemas/v1/failure_detail.json, schemas/v1/role_provenance.json, schemas/v1/plan_provenance.json, schemas/v1/plan_step.json, schemas/v1/plan.json, schemas/v1/execution_receipt.json, schemas/v1/schema.json, schemas/v1/monarchic_agent_protocol.proto
- validation: bash scripts/lint-schemas.sh && bash scripts/test-json-schema.sh && bash scripts/test-readme-schema-index-coverage.sh

## 2026-02-20
- task_id: task-proto-001
- summary: Added FailureClass taxonomy contract, indexed schema coverage, and failure_class references for event/gate payloads.
- schema_files: schemas/v1/failure_class.json, schemas/v1/event.json, schemas/v1/gate_result.json, schemas/v1/schema.json, schemas/v1/monarchic_agent_protocol.proto
- validation: bash scripts/lint-schemas.sh && bash scripts/test-json-schema.sh && cargo test -q

## 2026-02-20
- task_id: task-project-state-002
- summary: Added ObjectiveSpec and wired task/objective schema references for explicit outcome scoring contracts.
- schema_files: schemas/v1/objective_spec.json, schemas/v1/task.json, schemas/v1/schema.json
- validation: bash scripts/test-json-schema.sh && bash scripts/test-readme-schema-index-coverage.sh

## 2026-02-19
- task_id: task-project-state-001
- summary: Added a lightweight schema edit changelog format and deterministic format validation script.
- schema_files: schemas/SCHEMA_CHANGELOG.md
- validation: bash scripts/test-schema-changelog-format.sh
