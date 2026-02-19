# Schema Change Log

Track schema edits in reverse chronological order. Each entry must include:

- `task_id`
- `summary`
- `schema_files`
- `validation`

## 2026-02-19
- task_id: task-self-host-001
- summary: Added a lightweight schema edit changelog format and deterministic format validation script.
- schema_files: schemas/SCHEMA_CHANGELOG.md
- validation: bash scripts/test-schema-changelog-format.sh
