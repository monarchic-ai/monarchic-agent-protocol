# Schema Change Log

Track schema edits in reverse chronological order. Each entry must include:

- `task_id`
- `summary`
- `schema_files`
- `validation`

## 2026-02-20
- task_id: task-proto-001
- summary: Added FailureClass taxonomy contract, indexed schema coverage, and failure_class references for event/gate payloads.
- schema_files: schemas/v1/failure_class.json, schemas/v1/event.json, schemas/v1/gate_result.json, schemas/v1/schema.json, schemas/v1/monarchic_agent_protocol.proto
- validation: bash scripts/lint-schemas.sh && bash scripts/test-json-schema.sh && cargo test -q

## 2026-02-20
- task_id: task-self-host-002
- summary: Added ObjectiveSpec and wired task/objective schema references for explicit outcome scoring contracts.
- schema_files: schemas/v1/objective_spec.json, schemas/v1/task.json, schemas/v1/schema.json
- validation: bash scripts/test-json-schema.sh && bash scripts/test-readme-schema-index-coverage.sh

## 2026-02-19
- task_id: task-self-host-001
- summary: Added a lightweight schema edit changelog format and deterministic format validation script.
- schema_files: schemas/SCHEMA_CHANGELOG.md
- validation: bash scripts/test-schema-changelog-format.sh
