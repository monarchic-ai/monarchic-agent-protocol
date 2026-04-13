---
page_id: dependencies
page_type: dependencies
generation_mode: inferred
freshness_status: new
updated_at: 2026-04-12T23:17:57.273Z
---

<details>
<summary>Build metadata</summary>

```json
{
  "freshnessKey": "a0e4f81e5191db537fdab12cad3dd9a93af3de71",
  "plannerReason": "Tooling template selected because deterministic evidence suggests command-centric developer tooling instead of a user-facing runtime surface. The generic runtime page is suppressed because workflows, interfaces, and the optional playbook provide a stronger explanation-first entry surface for this repo shape. The generic components navigation section is demoted to an appendix because change-guide plus component pages provide the stronger explanation-first edit path for this tooling-shaped repository.",
  "changedPaths": [
    "build.gradle.kts",
    "src/csharp/MonarchicAgentProtocol.cs",
    "Cargo.toml",
    "composer.json",
    "examples/README.md",
    "README.md",
    "Monarchic.AgentProtocol.csproj",
    "src/go/go.mod",
    "flake.nix",
    "monarchic-agent-protocol.gemspec",
    "package.json",
    "pyproject.toml",
    "src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "src/rust/service.rs",
    "src/dart/lib/monarchic_agent_protocol.dart",
    "src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "scripts/test-ci-schema-validation-hook.sh",
    "scripts/test-examples.sh"
  ],
  "dependencyPaths": [
    "build.gradle.kts",
    "src/csharp/MonarchicAgentProtocol.cs",
    "Cargo.toml",
    "composer.json",
    "examples/README.md",
    "README.md",
    "Monarchic.AgentProtocol.csproj",
    "src/go/go.mod",
    "flake.nix",
    "monarchic-agent-protocol.gemspec",
    "package.json",
    "pyproject.toml",
    "src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "src/rust/service.rs",
    "src/dart/lib/monarchic_agent_protocol.dart",
    "src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "scripts/test-ci-schema-validation-hook.sh",
    "scripts/test-examples.sh"
  ],
  "dependencyEvidenceIds": [
    "ingest:file:gen/go/monarchic_agent_protocol.pb.go",
    "ingest:file:scripts/conventional_commit_check.py",
    "ingest:file:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "ingest:file:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "ingest:file:src/rust/client_boundary/task.rs",
    "ingest:file:tests/client_boundary_compatibility.rs",
    "ingest:file:tests/client_boundary_support/mod.rs",
    "ingest:file:tests/client_boundary_validation.rs",
    "ingest:file:tests/client_control_service_contract.rs",
    "ingest:file:tests/durable_authority_serialization.rs",
    "ingest:file:tests/map_operation_bundle_contract.rs",
    "ingest:file:tests/runner_control_resume_contract.rs",
    "ingest:file:tests/service_boundary_serialization.rs",
    "component:build.gradle.kts",
    "component:Cargo.toml",
    "component:composer.json",
    "ingest:file:examples/README.md",
    "ingest:file:README.md",
    "component:Monarchic.AgentProtocol.csproj",
    "component:src/go/go.mod",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "ingest:file:src/rust/service.rs",
    "ingest:file:src/csharp/MonarchicAgentProtocol.cs",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pb.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbenum.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbjson.dart",
    "ingest:file:src/go/go.mod",
    "ingest:file:src/go/go.sum",
    "ingest:file:scripts/test-ci-schema-validation-hook.sh",
    "ingest:file:scripts/test-examples.sh",
    "ingest:file:scripts/test-json-schema.sh",
    "ingest:file:scripts/test-legacy-unresolved-schema-refs-manifest.sh",
    "ingest:file:scripts/test-legacy-unresolved-schema-refs.sh",
    "ingest:file:scripts/test-pre-commit-schema-json-parse.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-first-command.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-format.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-gate.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-path-helper.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-reason-codes.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-shared-fixtures.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-source-repo-seeding.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-wrapper-ownership.sh",
    "ingest:file:scripts/test-project-state-artifact-done-prefix.sh",
    "ingest:file:scripts/test-project-state-artifact-latest-milestone.sh",
    "ingest:file:scripts/test-project-state-artifact-log-key-order.sh",
    "ingest:file:scripts/test-project-state-artifact-log-summary-traceability.sh",
    "ingest:file:scripts/test-project-state-artifact-milestone-count-types.sh",
    "ingest:file:scripts/test-project-state-artifact-pass-progression.sh",
    "ingest:file:scripts/test-project-state-artifact-proof-gate.sh",
    "ingest:file:scripts/test-project-state-artifact-report-file-list-consistency.sh",
    "ingest:file:scripts/test-project-state-artifact-report-file-path-existence.sh",
    "ingest:file:scripts/test-project-state-artifact-report-new-file-path-existence.sh",
    "ingest:file:scripts/test-project-state-artifact-shared-fixtures.sh",
    "ingest:file:scripts/test-project-state-artifact-source-repo-seeding.sh",
    "ingest:file:scripts/test-project-state-artifact-status-alignment.sh",
    "ingest:file:scripts/test-project-state-artifact-text-fields.sh",
    "ingest:file:scripts/test-project-state-artifact-timestamps.sh",
    "ingest:file:scripts/test-project-state-artifacts.sh",
    "ingest:file:scripts/test-project-state-proof-artifact-reason-codes.sh",
    "ingest:file:scripts/test-project-state-proof-artifacts.sh",
    "ingest:file:scripts/test-proto-availability-smoke.sh",
    "ingest:file:scripts/test-proto.sh",
    "ingest:file:scripts/test-readme-examples-coverage.sh",
    "ingest:file:scripts/test-readme-examples-sync.sh",
    "ingest:file:scripts/test-readme-schema-index-coverage.sh",
    "ingest:file:scripts/test-readme-schema-workflow.sh",
    "ingest:file:scripts/test-ready-for-review-gate-checklist.sh",
    "ingest:file:scripts/test-schema-changelog-format.sh",
    "ingest:file:scripts/test-validate-protocol-json.sh",
    "ingest:file:examples/rust/task.rs",
    "ingest:file:examples/ts/task.ts",
    "ingest:file:src/python/monarchic_agent_protocol/__init__.py",
    "ingest:file:src/rust/authority.rs",
    "ingest:file:src/rust/client_boundary/artifact.rs",
    "ingest:file:src/rust/client_boundary/blocking.rs",
    "ingest:file:src/rust/client_boundary/bootstrap.rs",
    "ingest:file:src/rust/client_boundary/campaign.rs",
    "ingest:file:src/rust/client_boundary/event.rs",
    "ingest:file:src/rust/client_boundary/intent.rs",
    "ingest:file:src/rust/client_boundary/message.rs",
    "ingest:file:src/rust/client_boundary/plan.rs",
    "ingest:file:src/rust/client_boundary/receipt.rs",
    "ingest:file:src/rust/client_boundary/review.rs",
    "ingest:file:tests/client_boundary_round_trip.rs",
    "ingest:file:flake.nix"
  ],
  "evidenceIds": [
    "ingest:file:gen/go/monarchic_agent_protocol.pb.go",
    "ingest:file:scripts/conventional_commit_check.py",
    "ingest:file:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "ingest:file:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go",
    "ingest:file:src/rust/client_boundary/task.rs",
    "ingest:file:tests/client_boundary_compatibility.rs",
    "ingest:file:tests/client_boundary_support/mod.rs",
    "ingest:file:tests/client_boundary_validation.rs",
    "ingest:file:tests/client_control_service_contract.rs",
    "ingest:file:tests/durable_authority_serialization.rs",
    "ingest:file:tests/map_operation_bundle_contract.rs",
    "ingest:file:tests/runner_control_resume_contract.rs",
    "ingest:file:tests/service_boundary_serialization.rs",
    "component:build.gradle.kts",
    "component:Cargo.toml",
    "component:composer.json",
    "ingest:file:examples/README.md",
    "ingest:file:README.md",
    "component:Monarchic.AgentProtocol.csproj",
    "component:src/go/go.mod",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbserver.dart",
    "ingest:file:src/rust/service.rs",
    "ingest:file:src/csharp/MonarchicAgentProtocol.cs",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pb.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbenum.dart",
    "ingest:file:src/dart/lib/monarchic_agent_protocol.pbjson.dart",
    "ingest:file:src/go/go.mod",
    "ingest:file:src/go/go.sum",
    "ingest:file:scripts/test-ci-schema-validation-hook.sh",
    "ingest:file:scripts/test-examples.sh",
    "ingest:file:scripts/test-json-schema.sh",
    "ingest:file:scripts/test-legacy-unresolved-schema-refs-manifest.sh",
    "ingest:file:scripts/test-legacy-unresolved-schema-refs.sh",
    "ingest:file:scripts/test-pre-commit-schema-json-parse.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-first-command.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-format.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-gate.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-path-helper.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-reason-codes.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-shared-fixtures.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-source-repo-seeding.sh",
    "ingest:file:scripts/test-project-state-artifact-command-log-wrapper-ownership.sh",
    "ingest:file:scripts/test-project-state-artifact-done-prefix.sh",
    "ingest:file:scripts/test-project-state-artifact-latest-milestone.sh",
    "ingest:file:scripts/test-project-state-artifact-log-key-order.sh",
    "ingest:file:scripts/test-project-state-artifact-log-summary-traceability.sh",
    "ingest:file:scripts/test-project-state-artifact-milestone-count-types.sh",
    "ingest:file:scripts/test-project-state-artifact-pass-progression.sh",
    "ingest:file:scripts/test-project-state-artifact-proof-gate.sh",
    "ingest:file:scripts/test-project-state-artifact-report-file-list-consistency.sh",
    "ingest:file:scripts/test-project-state-artifact-report-file-path-existence.sh",
    "ingest:file:scripts/test-project-state-artifact-report-new-file-path-existence.sh",
    "ingest:file:scripts/test-project-state-artifact-shared-fixtures.sh",
    "ingest:file:scripts/test-project-state-artifact-source-repo-seeding.sh",
    "ingest:file:scripts/test-project-state-artifact-status-alignment.sh",
    "ingest:file:scripts/test-project-state-artifact-text-fields.sh",
    "ingest:file:scripts/test-project-state-artifact-timestamps.sh",
    "ingest:file:scripts/test-project-state-artifacts.sh",
    "ingest:file:scripts/test-project-state-proof-artifact-reason-codes.sh",
    "ingest:file:scripts/test-project-state-proof-artifacts.sh",
    "ingest:file:scripts/test-proto-availability-smoke.sh",
    "ingest:file:scripts/test-proto.sh",
    "ingest:file:scripts/test-readme-examples-coverage.sh",
    "ingest:file:scripts/test-readme-examples-sync.sh",
    "ingest:file:scripts/test-readme-schema-index-coverage.sh",
    "ingest:file:scripts/test-readme-schema-workflow.sh",
    "ingest:file:scripts/test-ready-for-review-gate-checklist.sh",
    "ingest:file:scripts/test-schema-changelog-format.sh",
    "ingest:file:scripts/test-validate-protocol-json.sh",
    "ingest:file:examples/rust/task.rs",
    "ingest:file:examples/ts/task.ts",
    "ingest:file:src/python/monarchic_agent_protocol/__init__.py",
    "ingest:file:src/rust/authority.rs",
    "ingest:file:src/rust/client_boundary/artifact.rs",
    "ingest:file:src/rust/client_boundary/blocking.rs",
    "ingest:file:src/rust/client_boundary/bootstrap.rs",
    "ingest:file:src/rust/client_boundary/campaign.rs",
    "ingest:file:src/rust/client_boundary/event.rs",
    "ingest:file:src/rust/client_boundary/intent.rs",
    "ingest:file:src/rust/client_boundary/message.rs",
    "ingest:file:src/rust/client_boundary/plan.rs",
    "ingest:file:src/rust/client_boundary/receipt.rs",
    "ingest:file:src/rust/client_boundary/review.rs",
    "ingest:file:tests/client_boundary_round_trip.rs",
    "ingest:file:flake.nix"
  ],
  "qualityWarnings": []
}

```
</details>

# Dependencies

Dependency and relationship guide for monarchic-agent-protocol.

## Related Pages

- [components](components.md)
- [diagrams](diagrams.md)

## Design-Shaping Dependencies

Insufficient evidence to infer design-shaping dependencies confidently.

<details>
<summary>Supporting citations:</summary>

- none
</details>


## Dependency Boundaries

Insufficient evidence to infer dependency boundaries confidently.

<details>
<summary>Supporting citations:</summary>

- none
</details>


## Dependency Inventory

- `symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:130` calls `symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:236` calls `symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:328` calls `symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:419` calls `symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:504` calls `symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:gen/go/monarchic_agent_protocol.pb.go:EnumDescriptor:85` calls `symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:gen/go/monarchic_agent_protocol.pb.go:init:673` calls `symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_init:674` (high)
- `symbol:gen/go/monarchic_agent_protocol.pb.go:String:68` calls `symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:72` (high)
- `symbol:scripts/conventional_commit_check.py:main:291` calls `symbol:scripts/conventional_commit_check.py:build_single_message_summary:153` (high)
- `symbol:scripts/conventional_commit_check.py:main:291` calls `symbol:scripts/conventional_commit_check.py:build_summary:194` (high)
- `symbol:scripts/conventional_commit_check.py:main:291` calls `symbol:scripts/conventional_commit_check.py:collect_commits:130` (high)
- `symbol:scripts/conventional_commit_check.py:main:291` calls `symbol:scripts/conventional_commit_check.py:parse_args:249` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1523` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1622` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1716` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1825` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1940` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2047` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2153` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2297` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2406` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2467` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2535` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2606` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2699` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2794` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2853` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:2912` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:3022` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:3144` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:3245` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:3297` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:3357` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:3477` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:3621` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:3732` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:3808` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:3889` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:4002` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:4096` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:4211` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:4371` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:4502` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:4626` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:4749` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:4868` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:5009` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:5151` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:5250` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:5351` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:5506` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:5601` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:5701` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:5784` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:5867` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:5999` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6124` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6200` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6276` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6353` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6437` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6521` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6604` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6682` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6773` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6857` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:6942` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:7033` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:7120` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:7226` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:7316` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:7395` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:7493` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:7583` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:7708` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:7787` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:7884` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:1031` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:1086` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:1147` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:1208` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:1275` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:1342` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:1409` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:1479` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:149` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:204` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:271` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:347` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:405` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:463` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:524` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:588` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:643` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:698` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:753` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:817` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:875` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:930` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:94` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:979` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:init:9305` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_init:9306` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:1014` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:1069` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:1130` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:1191` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:1258` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:132` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:1325` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:1392` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:1462` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:187` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:254` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:330` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:388` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:446` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:507` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:571` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:626` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:681` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:736` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:77` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:800` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:858` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:913` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:962` calls `symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:81` (high)
- `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:130` calls `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:236` calls `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:328` calls `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:419` calls `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:504` calls `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:EnumDescriptor:85` calls `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637` (high)
- `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:init:673` calls `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_init:674` (high)
- `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:String:68` calls `symbol:src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:72` (high)
- `symbol:src/rust/client_boundary/task.rs:try_from:87` calls `symbol:src/rust/client_boundary/task.rs:assert_extension_match:165` (high)
- `symbol:src/rust/client_boundary/task.rs:try_from:87` calls `symbol:src/rust/client_boundary/task.rs:validate_optional_object:158` (high)
- `symbol:tests/client_boundary_compatibility.rs:legacy_execution_receipt_rejects_multiple_task_hashes:218` calls `symbol:tests/client_boundary_compatibility.rs:upgrade_legacy_execution_receipt:136` (high)
- `symbol:tests/client_boundary_compatibility.rs:legacy_execution_receipt_rejects_unknown_status:212` calls `symbol:tests/client_boundary_compatibility.rs:map_legacy_execution_status:125` (high)
- `symbol:tests/client_boundary_compatibility.rs:legacy_plan_rejects_non_object_task_template:236` calls `symbol:tests/client_boundary_compatibility.rs:upgrade_legacy_plan:80` (high)
- `symbol:tests/client_boundary_compatibility.rs:read_fixture:18` calls `symbol:tests/client_boundary_compatibility.rs:compatibility_fixture_path:10` (high)
- `symbol:tests/client_boundary_compatibility.rs:upgrade_legacy_plan:80` calls `symbol:tests/client_boundary_compatibility.rs:value_to_btree_map:71` (high)
- `symbol:tests/client_boundary_compatibility.rs:upgrades_legacy_runtime_execution_receipt_fixture:196` calls `symbol:tests/client_boundary_compatibility.rs:read_fixture:18` (high)
- `symbol:tests/client_boundary_compatibility.rs:upgrades_legacy_runtime_execution_receipt_fixture:196` calls `symbol:tests/client_boundary_compatibility.rs:upgrade_legacy_execution_receipt:136` (high)
- `symbol:tests/client_boundary_compatibility.rs:upgrades_legacy_runtime_plan_fixture:179` calls `symbol:tests/client_boundary_compatibility.rs:read_fixture:18` (high)
- `symbol:tests/client_boundary_compatibility.rs:upgrades_legacy_runtime_plan_fixture:179` calls `symbol:tests/client_boundary_compatibility.rs:upgrade_legacy_plan:80` (high)
- `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` calls `symbol:tests/client_boundary_support/mod.rs:read_fixture:16` (high)
- `symbol:tests/client_boundary_support/mod.rs:read_fixture:16` calls `symbol:tests/client_boundary_support/mod.rs:fixture_path:8` (high)
- `symbol:tests/client_boundary_validation.rs:blocked_outcome_rejects_invalid_scope:226` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:blocked_verification_receipt_requires_blocked_outcomes:171` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:bootstrap_plan_rejects_invalid_planning_mode:42` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:bootstrap_plan_rejects_missing_task_milestone:32` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:bootstrap_plan_uses_typed_planning_mode:49` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:bootstrap_planning_context_rejects_missing_planning_mode:60` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:bootstrap_planning_context_uses_typed_planning_mode:70` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:campaign_pipeline_spec_rejects_missing_task_artifact:104` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:digest_manifest_rejects_missing_artifacts:212` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:execution_receipt_rejects_missing_required_field:202` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:failed_verification_receipt_requires_failure_signal:179` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:intent_defaults_to_unspecified_class_when_missing:13` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:intent_rejects_invalid_intent_class:25` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:passed_verification_receipt_rejects_blocked_outcomes:160` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:passed_verification_receipt_rejects_blocked_outcomes:160` calls `symbol:tests/client_boundary_support/mod.rs:read_fixture:16` (low)
- `symbol:tests/client_boundary_validation.rs:plan_rejects_missing_intent_id:233` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:rerun_execution_result_rejects_invalid_status:195` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:rerun_scope_rejects_invalid_trigger:188` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:run_event_record_rejects_invalid_stream:219` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:task_message_rejects_invalid_kind:82` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:task_message_reply_to_requires_clarification_response_kind:89` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:task_message_uses_typed_kind:96` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:task_rejects_mismatched_required_mcps_between_top_level_and_extensions:124` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:task_rejects_missing_task_id:114` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:verification_receipt_defaults_contract_version_when_missing:131` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_boundary_validation.rs:verification_receipt_defaults_execution_receipt_ids_when_missing:147` calls `symbol:tests/client_boundary_support/mod.rs:load_fixture_value:38` (low)
- `symbol:tests/client_control_service_contract.rs:apply_control_plane_run_action_messages_round_trip_over_protobuf_wire:114` calls `symbol:tests/client_control_service_contract.rs:sample_run_summary:18` (high)
- `symbol:tests/client_control_service_contract.rs:apply_control_plane_run_action_messages_round_trip_over_protobuf_wire:114` calls `symbol:tests/client_control_service_contract.rs:sample_scope:10` (high)
- `symbol:tests/client_control_service_contract.rs:get_control_plane_run_activity_page_response_round_trips_with_cursor:90` calls `symbol:tests/client_control_service_contract.rs:sample_run_event_record:47` (high)
- `symbol:tests/client_control_service_contract.rs:list_control_plane_runs_request_round_trips_over_protobuf_wire:66` calls `symbol:tests/client_control_service_contract.rs:sample_scope:10` (high)
- `symbol:tests/durable_authority_serialization.rs:lease_rejects_invalid_status:97` calls `symbol:tests/durable_authority_serialization.rs:load_fixture_value:39` (high)
- `symbol:tests/durable_authority_serialization.rs:load_fixture_value:39` calls `symbol:tests/durable_authority_serialization.rs:read_fixture:17` (high)
- `symbol:tests/durable_authority_serialization.rs:read_fixture:17` calls `symbol:tests/durable_authority_serialization.rs:fixture_path:9` (high)
- `symbol:tests/durable_authority_serialization.rs:recovery_event_rejects_invalid_lease_rejection_reason:104` calls `symbol:tests/durable_authority_serialization.rs:load_fixture_value:39` (high)
- `symbol:tests/durable_authority_serialization.rs:recovery_event_rejects_missing_contract_version:111` calls `symbol:tests/durable_authority_serialization.rs:load_fixture_value:39` (high)
- `symbol:tests/durable_authority_serialization.rs:recovery_replay_fixture_round_trips_canonically:81` calls `symbol:tests/durable_authority_serialization.rs:read_fixture:17` (high)
- `symbol:tests/map_operation_bundle_contract.rs:bundle:13` calls `symbol:tests/map_operation_bundle_contract.rs:fixture_path:5` (high)
- `symbol:tests/map_operation_bundle_contract.rs:map_operation_bundle_declares_protocol_owned_source_metadata:19` calls `symbol:tests/map_operation_bundle_contract.rs:bundle:13` (high)
- `symbol:tests/map_operation_bundle_contract.rs:map_operation_bundle_operation_order_matches_declared_operations:54` calls `symbol:tests/map_operation_bundle_contract.rs:bundle:13` (high)
- `symbol:tests/runner_control_resume_contract.rs:resume_lease_request_round_trips_over_protobuf_wire:42` calls `symbol:tests/runner_control_resume_contract.rs:sample_lease_ref:7` (high)
- `symbol:tests/runner_control_resume_contract.rs:resume_lease_response_round_trips_superseded_rejection:62` calls `symbol:tests/runner_control_resume_contract.rs:sample_lease:18` (high)
- `symbol:tests/service_boundary_serialization.rs:audit_export_manifest_rejects_missing_artifacts:99` calls `symbol:tests/service_boundary_serialization.rs:load_fixture_value:39` (high)
- `symbol:tests/service_boundary_serialization.rs:auth_context_defaults_contract_version_when_missing:59` calls `symbol:tests/service_boundary_serialization.rs:load_fixture_value:39` (high)
- `symbol:tests/service_boundary_serialization.rs:auth_context_rejects_unspecified_mechanism:75` calls `symbol:tests/service_boundary_serialization.rs:load_fixture_value:39` (high)
- `symbol:tests/service_boundary_serialization.rs:load_fixture_value:39` calls `symbol:tests/service_boundary_serialization.rs:read_fixture:17` (high)
- `symbol:tests/service_boundary_serialization.rs:read_fixture:17` calls `symbol:tests/service_boundary_serialization.rs:fixture_path:9` (high)
- `symbol:tests/service_boundary_serialization.rs:usage_record_rejects_unspecified_unit:87` calls `symbol:tests/service_boundary_serialization.rs:load_fixture_value:39` (high)
- `component:build.gradle.kts` depends_on `component:external:jvm:com.google.protobuf:protobuf-java` (high)
- `component:Cargo.toml` depends_on `component:external:rust:name` (high)
- `component:Cargo.toml` depends_on `component:external:rust:path` (high)
- `component:Cargo.toml` depends_on `component:external:rust:prost` (high)
- `component:Cargo.toml` depends_on `component:external:rust:prost-build` (high)
- `component:Cargo.toml` depends_on `component:external:rust:prost-types` (high)
- `component:Cargo.toml` depends_on `component:external:rust:serde` (high)
- `component:Cargo.toml` depends_on `component:external:rust:serde_json` (high)
- `component:composer.json` depends_on `component:external:php:google/protobuf` (high)
- `component:docs` documents `component:build.gradle.kts` (medium)
- `component:docs` documents `component:Cargo.toml` (medium)
- `component:docs` documents `component:composer.json` (medium)
- `component:docs` documents `component:external:dotnet:Google.Protobuf` (medium)
- `component:docs` documents `component:external:go:google.golang.org/protobuf` (medium)
- `component:docs` documents `component:external:jvm:com.google.protobuf:protobuf-java` (medium)
- `component:docs` documents `component:external:php:google/protobuf` (medium)
- `component:docs` documents `component:external:rust:aho-corasick` (medium)
- `component:docs` documents `component:external:rust:anyhow` (medium)
- `component:docs` documents `component:external:rust:bitflags` (medium)
- `component:docs` documents `component:external:rust:bytes` (medium)
- `component:docs` documents `component:external:rust:cfg-if` (medium)
- `component:docs` documents `component:external:rust:either` (medium)
- `component:docs` documents `component:external:rust:equivalent` (medium)
- `component:docs` documents `component:external:rust:errno` (medium)
- `component:docs` documents `component:external:rust:fastrand` (medium)
- `component:docs` documents `component:external:rust:fixedbitset` (medium)
- `component:docs` documents `component:external:rust:foldhash` (medium)
- `component:docs` documents `component:external:rust:getrandom` (medium)
- `component:docs` documents `component:external:rust:hashbrown` (medium)
- `component:docs` documents `component:external:rust:heck` (medium)
- `component:docs` documents `component:external:rust:id-arena` (medium)
- `component:docs` documents `component:external:rust:indexmap` (medium)
- `component:docs` documents `component:external:rust:itertools` (medium)
- `component:docs` documents `component:external:rust:itoa` (medium)
- `component:docs` documents `component:external:rust:leb128fmt` (medium)
- `component:docs` documents `component:external:rust:libc` (medium)
- `component:docs` documents `component:external:rust:linux-raw-sys` (medium)
- `component:docs` documents `component:external:rust:log` (medium)
- `component:docs` documents `component:external:rust:memchr` (medium)
- `component:docs` documents `component:external:rust:multimap` (medium)
- `component:docs` documents `component:external:rust:name` (medium)
- `component:docs` documents `component:external:rust:once_cell` (medium)
- `component:docs` documents `component:external:rust:path` (medium)
- `component:docs` documents `component:external:rust:petgraph` (medium)
- `component:docs` documents `component:external:rust:prettyplease` (medium)
- `component:docs` documents `component:external:rust:proc-macro2` (medium)
- `component:docs` documents `component:external:rust:prost` (medium)
- `component:docs` documents `component:external:rust:prost-build` (medium)
- `component:docs` documents `component:external:rust:prost-derive` (medium)
- `component:docs` documents `component:external:rust:prost-types` (medium)
- `component:docs` documents `component:external:rust:quote` (medium)
- `component:docs` documents `component:external:rust:r-efi` (medium)
- `component:docs` documents `component:external:rust:regex` (medium)
- `component:docs` documents `component:external:rust:regex-automata` (medium)
- `component:docs` documents `component:external:rust:regex-syntax` (medium)
- `component:docs` documents `component:external:rust:rustix` (medium)
- `component:docs` documents `component:external:rust:semver` (medium)
- `component:docs` documents `component:external:rust:serde` (medium)
- `component:docs` documents `component:external:rust:serde_core` (medium)
- `component:docs` documents `component:external:rust:serde_derive` (medium)
- `component:docs` documents `component:external:rust:serde_json` (medium)
- `component:docs` documents `component:external:rust:syn` (medium)
- `component:docs` documents `component:external:rust:tempfile` (medium)
- `component:docs` documents `component:external:rust:unicode-ident` (medium)
- `component:docs` documents `component:external:rust:unicode-xid` (medium)
- `component:docs` documents `component:external:rust:wasip2` (medium)
- `component:docs` documents `component:external:rust:wasip3` (medium)
- `component:docs` documents `component:external:rust:wasm-encoder` (medium)
- `component:docs` documents `component:external:rust:wasm-metadata` (medium)
- `component:docs` documents `component:external:rust:wasmparser` (medium)
- `component:docs` documents `component:external:rust:windows-link` (medium)
- `component:docs` documents `component:external:rust:windows-sys` (medium)
- `component:docs` documents `component:external:rust:wit-bindgen` (medium)
- `component:docs` documents `component:external:rust:wit-bindgen-core` (medium)
- `component:docs` documents `component:external:rust:wit-bindgen-rust` (medium)
- `component:docs` documents `component:external:rust:wit-bindgen-rust-macro` (medium)
- `component:docs` documents `component:external:rust:wit-component` (medium)
- `component:docs` documents `component:external:rust:wit-parser` (medium)
- `component:docs` documents `component:external:rust:zmij` (medium)
- `component:docs` documents `component:flake` (medium)
- `component:docs` documents `component:monarchic-agent-protocol.gemspec` (medium)
- `component:docs` documents `component:Monarchic.AgentProtocol.csproj` (medium)
- `component:docs` documents `component:package.json` (medium)
- `component:docs` documents `component:pyproject.toml` (medium)
- `component:docs` documents `component:service` (medium)
- `component:docs` documents `component:src` (medium)
- `component:docs` documents `component:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src` (medium)
- `component:docs` documents `component:src/go/go.mod` (medium)
- `component:docs` documents `component:tests` (medium)
- `repository` contains `component:external:dotnet:Google.Protobuf` (high)
- `repository` contains `component:external:go:google.golang.org/protobuf` (high)
- `repository` contains `component:external:jvm:com.google.protobuf:protobuf-java` (high)
- `repository` contains `component:external:php:google/protobuf` (high)
- `component:external:rust:aho-corasick` depends_on `component:external:rust:memchr` (medium)
- `repository` contains `component:external:rust:aho-corasick` (high)
- `repository` contains `component:external:rust:anyhow` (high)
- `repository` contains `component:external:rust:bitflags` (high)
- `repository` contains `component:external:rust:bytes` (high)
- `repository` contains `component:external:rust:cfg-if` (high)
- `repository` contains `component:external:rust:either` (high)
- `repository` contains `component:external:rust:equivalent` (high)
- `component:external:rust:errno` depends_on `component:external:rust:libc` (medium)
- `component:external:rust:errno` depends_on `component:external:rust:windows-sys` (medium)
- `repository` contains `component:external:rust:errno` (high)
- `repository` contains `component:external:rust:fastrand` (high)
- `repository` contains `component:external:rust:fixedbitset` (high)
- `repository` contains `component:external:rust:foldhash` (high)
- `component:external:rust:getrandom` depends_on `component:external:rust:cfg-if` (medium)
- `component:external:rust:getrandom` depends_on `component:external:rust:libc` (medium)
- `component:external:rust:getrandom` depends_on `component:external:rust:r-efi` (medium)
- `component:external:rust:getrandom` depends_on `component:external:rust:wasip2` (medium)
- `component:external:rust:getrandom` depends_on `component:external:rust:wasip3` (medium)
- `repository` contains `component:external:rust:getrandom` (high)
- `component:external:rust:hashbrown` depends_on `component:external:rust:foldhash` (medium)
- `repository` contains `component:external:rust:hashbrown` (high)
- `repository` contains `component:external:rust:heck` (high)
- `repository` contains `component:external:rust:id-arena` (high)
- `component:external:rust:indexmap` depends_on `component:external:rust:equivalent` (medium)
- `component:external:rust:indexmap` depends_on `component:external:rust:hashbrown` (medium)
- `component:external:rust:indexmap` depends_on `component:external:rust:serde_core` (medium)
- `component:external:rust:indexmap` depends_on `component:external:rust:serde` (medium)
- `repository` contains `component:external:rust:indexmap` (high)
- `component:external:rust:itertools` depends_on `component:external:rust:either` (medium)
- `repository` contains `component:external:rust:itertools` (high)
- `repository` contains `component:external:rust:itoa` (high)
- `repository` contains `component:external:rust:leb128fmt` (high)
- `repository` contains `component:external:rust:libc` (high)
- `repository` contains `component:external:rust:linux-raw-sys` (high)
- `repository` contains `component:external:rust:log` (high)
- `repository` contains `component:external:rust:memchr` (high)
- `repository` contains `component:external:rust:multimap` (high)
- `repository` contains `component:external:rust:name` (high)
- `repository` contains `component:external:rust:once_cell` (high)
- `repository` contains `component:external:rust:path` (high)
- `component:external:rust:petgraph` depends_on `component:external:rust:fixedbitset` (medium)
- `component:external:rust:petgraph` depends_on `component:external:rust:hashbrown` (medium)
- `component:external:rust:petgraph` depends_on `component:external:rust:indexmap` (medium)
- `repository` contains `component:external:rust:petgraph` (high)
- `component:external:rust:prettyplease` depends_on `component:external:rust:proc-macro2` (medium)
- `component:external:rust:prettyplease` depends_on `component:external:rust:syn` (medium)
- `repository` contains `component:external:rust:prettyplease` (high)
- `component:external:rust:proc-macro2` depends_on `component:external:rust:unicode-ident` (medium)
- `repository` contains `component:external:rust:proc-macro2` (high)
- `component:external:rust:prost` depends_on `component:external:rust:bytes` (medium)
- `component:external:rust:prost` depends_on `component:external:rust:prost-derive` (medium)
- `repository` contains `component:external:rust:prost` (high)
- `component:external:rust:prost-build` depends_on `component:external:rust:heck` (medium)
- `component:external:rust:prost-build` depends_on `component:external:rust:itertools` (medium)
- `component:external:rust:prost-build` depends_on `component:external:rust:log` (medium)
- `component:external:rust:prost-build` depends_on `component:external:rust:multimap` (medium)
- `component:external:rust:prost-build` depends_on `component:external:rust:petgraph` (medium)
- `component:external:rust:prost-build` depends_on `component:external:rust:prettyplease` (medium)
- `component:external:rust:prost-build` depends_on `component:external:rust:prost-types` (medium)
- `component:external:rust:prost-build` depends_on `component:external:rust:prost` (medium)
- `component:external:rust:prost-build` depends_on `component:external:rust:regex` (medium)
- `component:external:rust:prost-build` depends_on `component:external:rust:syn` (medium)
- `component:external:rust:prost-build` depends_on `component:external:rust:tempfile` (medium)
- `repository` contains `component:external:rust:prost-build` (high)
- `component:external:rust:prost-derive` depends_on `component:external:rust:anyhow` (medium)
- `component:external:rust:prost-derive` depends_on `component:external:rust:itertools` (medium)
- `component:external:rust:prost-derive` depends_on `component:external:rust:proc-macro2` (medium)
- `component:external:rust:prost-derive` depends_on `component:external:rust:quote` (medium)
- `component:external:rust:prost-derive` depends_on `component:external:rust:syn` (medium)
- `repository` contains `component:external:rust:prost-derive` (high)
- `component:external:rust:prost-types` depends_on `component:external:rust:prost` (medium)
- `repository` contains `component:external:rust:prost-types` (high)
- `component:external:rust:quote` depends_on `component:external:rust:proc-macro2` (medium)
- `repository` contains `component:external:rust:quote` (high)
- `repository` contains `component:external:rust:r-efi` (high)
- `component:external:rust:regex` depends_on `component:external:rust:aho-corasick` (medium)
- `component:external:rust:regex` depends_on `component:external:rust:memchr` (medium)
- `component:external:rust:regex` depends_on `component:external:rust:regex-automata` (medium)
- `component:external:rust:regex` depends_on `component:external:rust:regex-syntax` (medium)
- `repository` contains `component:external:rust:regex` (high)
- `component:external:rust:regex-automata` depends_on `component:external:rust:aho-corasick` (medium)
- `component:external:rust:regex-automata` depends_on `component:external:rust:memchr` (medium)
- `component:external:rust:regex-automata` depends_on `component:external:rust:regex-syntax` (medium)
- `repository` contains `component:external:rust:regex-automata` (high)
- `repository` contains `component:external:rust:regex-syntax` (high)
- `component:external:rust:rustix` depends_on `component:external:rust:bitflags` (medium)
- `component:external:rust:rustix` depends_on `component:external:rust:errno` (medium)
- `component:external:rust:rustix` depends_on `component:external:rust:libc` (medium)
- `component:external:rust:rustix` depends_on `component:external:rust:linux-raw-sys` (medium)
- `component:external:rust:rustix` depends_on `component:external:rust:windows-sys` (medium)
- `repository` contains `component:external:rust:rustix` (high)
- `repository` contains `component:external:rust:semver` (high)
- `component:external:rust:serde_core` depends_on `component:external:rust:serde_derive` (medium)
- `repository` contains `component:external:rust:serde_core` (high)
- `component:external:rust:serde_derive` depends_on `component:external:rust:proc-macro2` (medium)
- `component:external:rust:serde_derive` depends_on `component:external:rust:quote` (medium)
- `component:external:rust:serde_derive` depends_on `component:external:rust:syn` (medium)
- `repository` contains `component:external:rust:serde_derive` (high)
- `component:external:rust:serde_json` depends_on `component:external:rust:itoa` (medium)
- `component:external:rust:serde_json` depends_on `component:external:rust:memchr` (medium)
- `component:external:rust:serde_json` depends_on `component:external:rust:serde_core` (medium)
- `component:external:rust:serde_json` depends_on `component:external:rust:serde` (medium)
- `component:external:rust:serde_json` depends_on `component:external:rust:zmij` (medium)
- `repository` contains `component:external:rust:serde_json` (high)
- `component:external:rust:serde` depends_on `component:external:rust:serde_core` (medium)
- `component:external:rust:serde` depends_on `component:external:rust:serde_derive` (medium)
- `repository` contains `component:external:rust:serde` (high)
- `component:external:rust:syn` depends_on `component:external:rust:proc-macro2` (medium)
- `component:external:rust:syn` depends_on `component:external:rust:quote` (medium)
- `component:external:rust:syn` depends_on `component:external:rust:unicode-ident` (medium)
- `repository` contains `component:external:rust:syn` (high)
- `component:external:rust:tempfile` depends_on `component:external:rust:fastrand` (medium)
- `component:external:rust:tempfile` depends_on `component:external:rust:getrandom` (medium)
- `component:external:rust:tempfile` depends_on `component:external:rust:once_cell` (medium)
- `component:external:rust:tempfile` depends_on `component:external:rust:rustix` (medium)
- `component:external:rust:tempfile` depends_on `component:external:rust:windows-sys` (medium)
- `repository` contains `component:external:rust:tempfile` (high)
- `repository` contains `component:external:rust:unicode-ident` (high)
- `repository` contains `component:external:rust:unicode-xid` (high)
- `component:external:rust:wasip2` depends_on `component:external:rust:wit-bindgen` (medium)
- `repository` contains `component:external:rust:wasip2` (high)
- `component:external:rust:wasip3` depends_on `component:external:rust:wit-bindgen` (medium)
- `repository` contains `component:external:rust:wasip3` (high)
- `component:external:rust:wasm-encoder` depends_on `component:external:rust:leb128fmt` (medium)
- `component:external:rust:wasm-encoder` depends_on `component:external:rust:wasmparser` (medium)
- `repository` contains `component:external:rust:wasm-encoder` (high)
- `component:external:rust:wasm-metadata` depends_on `component:external:rust:anyhow` (medium)
- `component:external:rust:wasm-metadata` depends_on `component:external:rust:indexmap` (medium)
- `component:external:rust:wasm-metadata` depends_on `component:external:rust:wasm-encoder` (medium)
- `component:external:rust:wasm-metadata` depends_on `component:external:rust:wasmparser` (medium)
- `repository` contains `component:external:rust:wasm-metadata` (high)
- `component:external:rust:wasmparser` depends_on `component:external:rust:bitflags` (medium)
- `component:external:rust:wasmparser` depends_on `component:external:rust:hashbrown` (medium)
- `component:external:rust:wasmparser` depends_on `component:external:rust:indexmap` (medium)
- `component:external:rust:wasmparser` depends_on `component:external:rust:semver` (medium)
- `repository` contains `component:external:rust:wasmparser` (high)
- `repository` contains `component:external:rust:windows-link` (high)
- `component:external:rust:windows-sys` depends_on `component:external:rust:windows-link` (medium)
- `repository` contains `component:external:rust:windows-sys` (high)
- `component:external:rust:wit-bindgen` depends_on `component:external:rust:wit-bindgen-rust-macro` (medium)
- `repository` contains `component:external:rust:wit-bindgen` (high)
- `component:external:rust:wit-bindgen-core` depends_on `component:external:rust:anyhow` (medium)
- `component:external:rust:wit-bindgen-core` depends_on `component:external:rust:heck` (medium)
- `component:external:rust:wit-bindgen-core` depends_on `component:external:rust:wit-parser` (medium)
- `repository` contains `component:external:rust:wit-bindgen-core` (high)
- `component:external:rust:wit-bindgen-rust` depends_on `component:external:rust:anyhow` (medium)
- `component:external:rust:wit-bindgen-rust` depends_on `component:external:rust:heck` (medium)
- `component:external:rust:wit-bindgen-rust` depends_on `component:external:rust:indexmap` (medium)
- `component:external:rust:wit-bindgen-rust` depends_on `component:external:rust:prettyplease` (medium)
- `component:external:rust:wit-bindgen-rust` depends_on `component:external:rust:syn` (medium)
- `component:external:rust:wit-bindgen-rust` depends_on `component:external:rust:wasm-metadata` (medium)
- `component:external:rust:wit-bindgen-rust` depends_on `component:external:rust:wit-bindgen-core` (medium)
- `component:external:rust:wit-bindgen-rust` depends_on `component:external:rust:wit-component` (medium)
- `repository` contains `component:external:rust:wit-bindgen-rust` (high)
- `component:external:rust:wit-bindgen-rust-macro` depends_on `component:external:rust:anyhow` (medium)
- `component:external:rust:wit-bindgen-rust-macro` depends_on `component:external:rust:prettyplease` (medium)
- `component:external:rust:wit-bindgen-rust-macro` depends_on `component:external:rust:proc-macro2` (medium)
- `component:external:rust:wit-bindgen-rust-macro` depends_on `component:external:rust:quote` (medium)
- `component:external:rust:wit-bindgen-rust-macro` depends_on `component:external:rust:syn` (medium)
- `component:external:rust:wit-bindgen-rust-macro` depends_on `component:external:rust:wit-bindgen-core` (medium)
- `component:external:rust:wit-bindgen-rust-macro` depends_on `component:external:rust:wit-bindgen-rust` (medium)
- `repository` contains `component:external:rust:wit-bindgen-rust-macro` (high)
- `component:external:rust:wit-component` depends_on `component:external:rust:anyhow` (medium)
- `component:external:rust:wit-component` depends_on `component:external:rust:bitflags` (medium)
- `component:external:rust:wit-component` depends_on `component:external:rust:indexmap` (medium)
- `component:external:rust:wit-component` depends_on `component:external:rust:log` (medium)
- `component:external:rust:wit-component` depends_on `component:external:rust:serde_derive` (medium)
- `component:external:rust:wit-component` depends_on `component:external:rust:serde_json` (medium)
- `component:external:rust:wit-component` depends_on `component:external:rust:serde` (medium)
- `component:external:rust:wit-component` depends_on `component:external:rust:wasm-encoder` (medium)
- `component:external:rust:wit-component` depends_on `component:external:rust:wasm-metadata` (medium)
- `component:external:rust:wit-component` depends_on `component:external:rust:wasmparser` (medium)
- `component:external:rust:wit-component` depends_on `component:external:rust:wit-parser` (medium)
- `repository` contains `component:external:rust:wit-component` (high)
- `component:external:rust:wit-parser` depends_on `component:external:rust:anyhow` (medium)
- `component:external:rust:wit-parser` depends_on `component:external:rust:id-arena` (medium)
- `component:external:rust:wit-parser` depends_on `component:external:rust:indexmap` (medium)
- `component:external:rust:wit-parser` depends_on `component:external:rust:log` (medium)
- `component:external:rust:wit-parser` depends_on `component:external:rust:semver` (medium)
- `component:external:rust:wit-parser` depends_on `component:external:rust:serde_derive` (medium)
- `component:external:rust:wit-parser` depends_on `component:external:rust:serde_json` (medium)
- `component:external:rust:wit-parser` depends_on `component:external:rust:serde` (medium)
- `component:external:rust:wit-parser` depends_on `component:external:rust:unicode-xid` (medium)
- `component:external:rust:wit-parser` depends_on `component:external:rust:wasmparser` (medium)
- `repository` contains `component:external:rust:wit-parser` (high)
- `repository` contains `component:external:rust:zmij` (high)
- `component:Monarchic.AgentProtocol.csproj` depends_on `component:external:dotnet:Google.Protobuf` (high)
- `repository` contains `component:service` (high)
- `repository` contains `component:src` (high)
- `repository` contains `component:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src` (high)
- `component:src/go/go.mod` depends_on `component:external:go:google.golang.org/protobuf` (high)
- `repository` contains `component:src/go/go.mod` (high)
- `component:tests` tests `component:build.gradle.kts` (high)
- `component:tests` tests `component:Cargo.toml` (high)
- `component:tests` tests `component:composer.json` (high)
- `component:tests` tests `component:external:dotnet:Google.Protobuf` (high)
- `component:tests` tests `component:external:go:google.golang.org/protobuf` (high)
- `component:tests` tests `component:external:jvm:com.google.protobuf:protobuf-java` (high)
- `component:tests` tests `component:external:php:google/protobuf` (high)
- `component:tests` tests `component:external:rust:aho-corasick` (high)
- `component:tests` tests `component:external:rust:anyhow` (high)
- `component:tests` tests `component:external:rust:bitflags` (high)
- `component:tests` tests `component:external:rust:bytes` (high)
- `component:tests` tests `component:external:rust:cfg-if` (high)
- `component:tests` tests `component:external:rust:either` (high)
- `component:tests` tests `component:external:rust:equivalent` (high)
- `component:tests` tests `component:external:rust:errno` (high)
- `component:tests` tests `component:external:rust:fastrand` (high)
- `component:tests` tests `component:external:rust:fixedbitset` (high)
- `component:tests` tests `component:external:rust:foldhash` (high)
- `component:tests` tests `component:external:rust:getrandom` (high)
- `component:tests` tests `component:external:rust:hashbrown` (high)
- `component:tests` tests `component:external:rust:heck` (high)
- `component:tests` tests `component:external:rust:id-arena` (high)
- `component:tests` tests `component:external:rust:indexmap` (high)
- `component:tests` tests `component:external:rust:itertools` (high)
- `component:tests` tests `component:external:rust:itoa` (high)
- `component:tests` tests `component:external:rust:leb128fmt` (high)
- `component:tests` tests `component:external:rust:libc` (high)
- `component:tests` tests `component:external:rust:linux-raw-sys` (high)
- `component:tests` tests `component:external:rust:log` (high)
- `component:tests` tests `component:external:rust:memchr` (high)
- `component:tests` tests `component:external:rust:multimap` (high)
- `component:tests` tests `component:external:rust:name` (high)
- `component:tests` tests `component:external:rust:once_cell` (high)
- `component:tests` tests `component:external:rust:path` (high)
- `component:tests` tests `component:external:rust:petgraph` (high)
- `component:tests` tests `component:external:rust:prettyplease` (high)
- `component:tests` tests `component:external:rust:proc-macro2` (high)
- `component:tests` tests `component:external:rust:prost` (high)
- `component:tests` tests `component:external:rust:prost-build` (high)
- `component:tests` tests `component:external:rust:prost-derive` (high)
- `component:tests` tests `component:external:rust:prost-types` (high)
- `component:tests` tests `component:external:rust:quote` (high)
- `component:tests` tests `component:external:rust:r-efi` (high)
- `component:tests` tests `component:external:rust:regex` (high)
- `component:tests` tests `component:external:rust:regex-automata` (high)
- `component:tests` tests `component:external:rust:regex-syntax` (high)
- `component:tests` tests `component:external:rust:rustix` (high)
- `component:tests` tests `component:external:rust:semver` (high)
- `component:tests` tests `component:external:rust:serde` (high)
- `component:tests` tests `component:external:rust:serde_core` (high)
- `component:tests` tests `component:external:rust:serde_derive` (high)
- `component:tests` tests `component:external:rust:serde_json` (high)
- `component:tests` tests `component:external:rust:syn` (high)
- `component:tests` tests `component:external:rust:tempfile` (high)
- `component:tests` tests `component:external:rust:unicode-ident` (high)
- `component:tests` tests `component:external:rust:unicode-xid` (high)
- `component:tests` tests `component:external:rust:wasip2` (high)
- `component:tests` tests `component:external:rust:wasip3` (high)
- `component:tests` tests `component:external:rust:wasm-encoder` (high)
- `component:tests` tests `component:external:rust:wasm-metadata` (high)
- `component:tests` tests `component:external:rust:wasmparser` (high)
- `component:tests` tests `component:external:rust:windows-link` (high)
- `component:tests` tests `component:external:rust:windows-sys` (high)
- `component:tests` tests `component:external:rust:wit-bindgen` (high)
- `component:tests` tests `component:external:rust:wit-bindgen-core` (high)
- `component:tests` tests `component:external:rust:wit-bindgen-rust` (high)
- `component:tests` tests `component:external:rust:wit-bindgen-rust-macro` (high)
- `component:tests` tests `component:external:rust:wit-component` (high)
- `component:tests` tests `component:external:rust:wit-parser` (high)
- `component:tests` tests `component:external:rust:zmij` (high)
- `component:tests` tests `component:flake` (high)
- `component:tests` tests `component:monarchic-agent-protocol.gemspec` (high)
- `component:tests` tests `component:Monarchic.AgentProtocol.csproj` (high)
- `component:tests` tests `component:package.json` (high)
- `component:tests` tests `component:pyproject.toml` (high)
- `component:tests` tests `component:service` (high)
- `component:tests` tests `component:src` (high)
- `component:tests` tests `component:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src` (high)
- `component:tests` tests `component:src/go/go.mod` (high)
- `examples/rust/task.rs` depends_on `component:Cargo.toml` (medium)
- `examples/ts/task.ts` depends_on `src/ts/index.ts` (medium)
- `component:src` depends_on `src/python/monarchic_agent_protocol/monarchic_agent_protocol_pb2.py` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde_json` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde_json` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde_json` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde_json` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde_json` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde_json` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde_json` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde` (medium)
- `component:src` depends_on `component:external:rust:serde_json` (medium)
- `component:service` depends_on `component:external:rust:serde` (medium)
- `tests/client_boundary_compatibility.rs` depends_on `component:external:rust:serde` (medium)
- `tests/client_boundary_compatibility.rs` depends_on `component:external:rust:serde_json` (medium)
- `tests/client_boundary_round_trip.rs` depends_on `tests/client_boundary_support/mod.rs` (medium)
- `tests/client_boundary_support/mod.rs` depends_on `component:external:rust:serde` (medium)
- `tests/client_boundary_support/mod.rs` depends_on `component:external:rust:serde_json` (medium)
- `tests/client_boundary_validation.rs` depends_on `component:external:rust:serde_json` (medium)
- `tests/client_boundary_validation.rs` depends_on `tests/client_boundary_support/mod.rs` (medium)
- `tests/client_control_service_contract.rs` depends_on `component:external:rust:prost` (medium)
- `tests/durable_authority_serialization.rs` depends_on `component:external:rust:serde` (medium)
- `tests/durable_authority_serialization.rs` depends_on `component:external:rust:serde_json` (medium)
- `tests/map_operation_bundle_contract.rs` depends_on `component:external:rust:serde_json` (medium)
- `tests/runner_control_resume_contract.rs` depends_on `component:external:rust:prost` (medium)
- `tests/service_boundary_serialization.rs` depends_on `component:external:rust:serde` (medium)
- `tests/service_boundary_serialization.rs` depends_on `component:external:rust:serde_json` (medium)
- `component:flake` exposes `interface:flake` (high)

<details>
<summary>Related files:</summary>

- `build.gradle.kts`
- `src/csharp/MonarchicAgentProtocol.cs`
- `Cargo.toml`
- `composer.json`
- `examples/README.md`
- `README.md`
- `Monarchic.AgentProtocol.csproj`
- `src/go/go.mod`
- `flake.nix`
- `monarchic-agent-protocol.gemspec`
- `package.json`
- `pyproject.toml`
- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs`
- `src/dart/lib/monarchic_agent_protocol.dart`
- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
</details>

<details>
<summary>Citations:</summary>

- `build.gradle.kts`
- `src/csharp/MonarchicAgentProtocol.cs`
- `Cargo.toml`
- `composer.json`
- `examples/README.md`
- `README.md`
- `Monarchic.AgentProtocol.csproj`
- `src/go/go.mod`
- `flake.nix`
- `monarchic-agent-protocol.gemspec`
- `package.json`
- `pyproject.toml`
- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
- `src/dart/lib/monarchic_agent_protocol.dart`
- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
</details>

## Navigation Guidance

- Follow component pages for detailed file lists.
- Use interfaces to inspect exposed configuration and manifests.
- Read diagrams for a simplified graph view.

## Citations

<details>
<summary>Citations:</summary>

- `build.gradle.kts`
- `src/csharp/MonarchicAgentProtocol.cs`
- `Cargo.toml`
- `composer.json`
- `examples/README.md`
- `README.md`
- `Monarchic.AgentProtocol.csproj`
- `src/go/go.mod`
- `flake.nix`
- `monarchic-agent-protocol.gemspec`
- `package.json`
- `pyproject.toml`
- `src/dart/lib/monarchic_agent_protocol.pbserver.dart`
- `src/rust/service.rs:276`
- `src/dart/lib/monarchic_agent_protocol.dart`
- `src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:1583`
- `scripts/test-ci-schema-validation-hook.sh`
- `scripts/test-examples.sh`
</details>
