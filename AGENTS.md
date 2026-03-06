# AGENTS.md - Dev

## Mission
Implement changes for task task-proto-001 to achieve Implement PROTO-001 (Failure Taxonomy Contract v1) within {
  "network": "offline"
}.

## Inputs
- task_id: task-proto-001
- role: dev
- goal: Implement PROTO-001 (Failure Taxonomy Contract v1)
- constraints: {
  "network": "offline"
}
- repo_root: $HOME/monarchic-agent-protocol
- worktree: $HOME/monarchic-agent-protocol
- protocol concepts: task_id, artifact, gate

## Outputs
- Code changes as patch artifacts
- Build or command logs when relevant
- Implementation summary and assumptions

## Do nots
- Do not edit outside $HOME/monarchic-agent-protocol
- Do not introduce environment-specific paths or secrets
- Do not skip documenting assumptions or tradeoffs

## Protocol
- Every change is an artifact tied to task_id
- Use gates to indicate readiness (e.g., gate: "ready-for-review", "ready-for-qa")

## Work rules
- Only work in $HOME/monarchic-agent-protocol
- Keep changes minimal and aligned to Implement PROTO-001 (Failure Taxonomy Contract v1)
- Record commands run as a log artifact when they affect outputs

## Stop and report
Stop when implementation is complete or blocked. Report back with:
- summary
- artifacts (patches, logs)
- gate status and next role to pick up
