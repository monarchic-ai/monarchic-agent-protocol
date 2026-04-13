---
page_id: diagrams
page_type: diagrams
generation_mode: inferred
freshness_status: new
updated_at: 2026-04-12T23:17:57.286Z
---

<details>
<summary>Build metadata</summary>

```json
{
  "freshnessKey": "44f5012d277f9aa520b1f6a7f57b42aa39392ec7",
  "plannerReason": "Generated to provide a compact architecture and dependency overview.",
  "changedPaths": [],
  "dependencyPaths": [],
  "dependencyEvidenceIds": [],
  "evidenceIds": [],
  "qualityWarnings": [
    "Diagrams has no citations."
  ]
}

```
</details>

# Diagrams

Generated 4 diagrams.

## Diagram Navigation

- [Component Overview](#component-overview) (component-overview; 9 nodes; 8 edges; omitted 73 nodes / 73 edges)
- [Dependency Graph](#dependency-graph) (dependency-graph; 21 nodes; 16 edges; omitted 0 nodes / 582 edges)
- [Directory Map](#directory-map) (directory-map; 12 nodes; 11 edges)
- [Subsystem Clusters](#subsystem-clusters) (component-overview; 3 nodes; 3 edges; omitted 0 nodes / 364 edges)

## Related Pages

- [architecture](architecture.md)
- [dependencies](dependencies.md)
- [runtime](runtime.md)

## Component Overview

Shows the most prominent inferred components connected to the repository root.

Explained in:
- [Architecture Summary](architecture.md#architecture-summary)
- [Graph Hotspots](architecture.md#architecture-hotspots)
- [Design-Shaping Dependencies](dependencies.md#design-shaping-dependencies)

Interpretation note:
- Interpretation: use this view to see the main repository-owned components and their highest-level relationships before drilling into page-level details. Favor it when you need a fast inventory of the system surface.

Rendered surface:
- rendered nodes: 9, rendered edges: 8

Node mix:
- component: 8, repository: 1

Omitted surface:
- omitted nodes: 73
- omitted edges: 73

```mermaid
graph LR
  repository["monarchic-agent-protocol"] --> component_build_gradle_kts["monarchic-agent-protocol"]
  repository["monarchic-agent-protocol"] --> component_Cargo_toml["monarchic-agent-protocol"]
  repository["monarchic-agent-protocol"] --> component_composer_json["monarchic/agent-protocol"]
  repository["monarchic-agent-protocol"] --> component_docs["Documentation"]
  repository["monarchic-agent-protocol"] --> component_external_dotnet_Google_Protobuf["Google.Protobuf"]
  repository["monarchic-agent-protocol"] --> component_external_go_google_golang_org_protobuf["google.golang.org/protobuf"]
  repository["monarchic-agent-protocol"] --> component_external_jvm_com_google_protobuf_protobuf_java["com.google.protobuf:protobuf-java"]
  repository["monarchic-agent-protocol"] --> component_external_php_google_protobuf["google/protobuf"]

```

```dot
digraph RepoIntel {
  label="Component Overview";
  labelloc=t;
  rankdir=LR;
  node [shape=box];
  "repository" [label="monarchic-agent-protocol", shape=box];
  "component:build.gradle.kts" [label="monarchic-agent-protocol", shape=box];
  "component:Cargo.toml" [label="monarchic-agent-protocol", shape=box];
  "component:composer.json" [label="monarchic/agent-protocol", shape=box];
  "component:docs" [label="Documentation", shape=box];
  "component:external:dotnet:Google.Protobuf" [label="Google.Protobuf", shape=box];
  "component:external:go:google.golang.org/protobuf" [label="google.golang.org/protobuf", shape=box];
  "component:external:jvm:com.google.protobuf:protobuf-java" [label="com.google.protobuf:protobuf-java", shape=box];
  "component:external:php:google/protobuf" [label="google/protobuf", shape=box];
  "repository" -> "component:build.gradle.kts" [label="contains"];
  "repository" -> "component:Cargo.toml" [label="contains"];
  "repository" -> "component:composer.json" [label="contains"];
  "repository" -> "component:docs" [label="contains"];
  "repository" -> "component:external:dotnet:Google.Protobuf" [label="contains"];
  "repository" -> "component:external:go:google.golang.org/protobuf" [label="contains"];
  "repository" -> "component:external:jvm:com.google.protobuf:protobuf-java" [label="contains"];
  "repository" -> "component:external:php:google/protobuf" [label="contains"];
}

```

Structured graph:
- nodes: 9
- edges: 8

Layout:
- direction: LR
- strategy: root-spoke

Simplification:
- simplified: yes
- rendered nodes: 9
- rendered edges: 8
- omitted nodes: 73
- omitted edges: 73
- Omitted 73 lower-priority components to keep the overview readable.
- Switched to a left-to-right root-spoke layout to keep the largest components scannable.

Why these edges:
- Repository contains monarchic-agent-protocol as a prominent component.
- Repository contains monarchic-agent-protocol as a prominent component.
- Repository contains monarchic-agent-protocol as a prominent component.
- Repository contains monarchic-agent-protocol as a prominent component.
- Repository contains monarchic-agent-protocol as a prominent component.
- Repository contains monarchic-agent-protocol as a prominent component.

## Dependency Graph

Shows a sampled set of dependency and call relationships across indexed entities.

Explained in:
- [Graph Hotspots](architecture.md#architecture-hotspots)
- [Design-Shaping Dependencies](dependencies.md#design-shaping-dependencies)
- [Navigation Guidance](dependencies.md#dependency-guidance)

Interpretation note:
- Interpretation: use this graph to spot concentrated dependency hubs and outward package pressure across the repository. Favor it when you need to reason about coupling, likely blast radius, or external dependency concentration.

Rendered surface:
- rendered nodes: 21, rendered edges: 16

Node mix:
- symbol: 21

Omitted surface:
- omitted nodes: 0
- omitted edges: 582

```mermaid
graph LR
  symbol_gen_go_monarchic_agent_protocol_pb_go_Descriptor_130 --> symbol_gen_go_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_rawDescGZIP_637
  symbol_gen_go_monarchic_agent_protocol_pb_go_Descriptor_236 --> symbol_gen_go_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_rawDescGZIP_637
  symbol_gen_go_monarchic_agent_protocol_pb_go_Descriptor_328 --> symbol_gen_go_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_rawDescGZIP_637
  symbol_gen_go_monarchic_agent_protocol_pb_go_Descriptor_419 --> symbol_gen_go_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_rawDescGZIP_637
  symbol_gen_go_monarchic_agent_protocol_pb_go_Descriptor_504 --> symbol_gen_go_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_rawDescGZIP_637
  symbol_gen_go_monarchic_agent_protocol_pb_go_EnumDescriptor_85 --> symbol_gen_go_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_rawDescGZIP_637
  symbol_gen_go_monarchic_agent_protocol_pb_go_init_673 --> symbol_gen_go_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_init_674
  symbol_gen_go_monarchic_agent_protocol_pb_go_String_68 --> symbol_gen_go_monarchic_agent_protocol_pb_go_Descriptor_72
  symbol_scripts_conventional_commit_check_py_main_291 --> symbol_scripts_conventional_commit_check_py_build_single_message_summary_153
  symbol_scripts_conventional_commit_check_py_main_291 --> symbol_scripts_conventional_commit_check_py_build_summary_194
  symbol_scripts_conventional_commit_check_py_main_291 --> symbol_scripts_conventional_commit_check_py_collect_commits_130
  symbol_scripts_conventional_commit_check_py_main_291 --> symbol_scripts_conventional_commit_check_py_parse_args_249
  symbol_src_go_github_com_monarchic_ai_monarchic_agent_protocol_src_go_monarchic_agent_protocol_v1_monarchic_agent_protocol_pb_go_Descriptor_1523 --> symbol_src_go_github_com_monarchic_ai_monarchic_agent_protocol_src_go_monarchic_agent_protocol_v1_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_rawDescGZIP_9017
  symbol_src_go_github_com_monarchic_ai_monarchic_agent_protocol_src_go_monarchic_agent_protocol_v1_monarchic_agent_protocol_pb_go_Descriptor_1622 --> symbol_src_go_github_com_monarchic_ai_monarchic_agent_protocol_src_go_monarchic_agent_protocol_v1_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_rawDescGZIP_9017
  symbol_src_go_github_com_monarchic_ai_monarchic_agent_protocol_src_go_monarchic_agent_protocol_v1_monarchic_agent_protocol_pb_go_Descriptor_1716 --> symbol_src_go_github_com_monarchic_ai_monarchic_agent_protocol_src_go_monarchic_agent_protocol_v1_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_rawDescGZIP_9017
  symbol_src_go_github_com_monarchic_ai_monarchic_agent_protocol_src_go_monarchic_agent_protocol_v1_monarchic_agent_protocol_pb_go_Descriptor_1825 --> symbol_src_go_github_com_monarchic_ai_monarchic_agent_protocol_src_go_monarchic_agent_protocol_v1_monarchic_agent_protocol_pb_go_file_monarchic_agent_protocol_proto_rawDescGZIP_9017

```

```dot
digraph RepoIntel {
  label="Dependency Graph";
  labelloc=t;
  rankdir=LR;
  node [shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:130" [label="Descriptor", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637" [label="file_monarchic_agent_protocol_proto_rawDescGZIP", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:236" [label="Descriptor", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:328" [label="Descriptor", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:419" [label="Descriptor", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:504" [label="Descriptor", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:EnumDescriptor:85" [label="EnumDescriptor", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:init:673" [label="init", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_init:674" [label="file_monarchic_agent_protocol_proto_init", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:String:68" [label="String", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:72" [label="Descriptor", shape=box];
  "symbol:scripts/conventional_commit_check.py:main:291" [label="main", shape=box];
  "symbol:scripts/conventional_commit_check.py:build_single_message_summary:153" [label="build_single_message_summary", shape=box];
  "symbol:scripts/conventional_commit_check.py:build_summary:194" [label="build_summary", shape=box];
  "symbol:scripts/conventional_commit_check.py:collect_commits:130" [label="collect_commits", shape=box];
  "symbol:scripts/conventional_commit_check.py:parse_args:249" [label="parse_args", shape=box];
  "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1523" [label="Descriptor", shape=box];
  "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017" [label="file_monarchic_agent_protocol_proto_rawDescGZIP", shape=box];
  "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1622" [label="Descriptor", shape=box];
  "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1716" [label="Descriptor", shape=box];
  "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1825" [label="Descriptor", shape=box];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:130" -> "symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637" [label="calls"];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:236" -> "symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637" [label="calls"];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:328" -> "symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637" [label="calls"];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:419" -> "symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637" [label="calls"];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:504" -> "symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637" [label="calls"];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:EnumDescriptor:85" -> "symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637" [label="calls"];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:init:673" -> "symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_init:674" [label="calls"];
  "symbol:gen/go/monarchic_agent_protocol.pb.go:String:68" -> "symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:72" [label="calls"];
  "symbol:scripts/conventional_commit_check.py:main:291" -> "symbol:scripts/conventional_commit_check.py:build_single_message_summary:153" [label="calls"];
  "symbol:scripts/conventional_commit_check.py:main:291" -> "symbol:scripts/conventional_commit_check.py:build_summary:194" [label="calls"];
  "symbol:scripts/conventional_commit_check.py:main:291" -> "symbol:scripts/conventional_commit_check.py:collect_commits:130" [label="calls"];
  "symbol:scripts/conventional_commit_check.py:main:291" -> "symbol:scripts/conventional_commit_check.py:parse_args:249" [label="calls"];
  "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1523" -> "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017" [label="calls"];
  "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1622" -> "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017" [label="calls"];
  "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1716" -> "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017" [label="calls"];
  "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:Descriptor:1825" -> "symbol:src/go/github.com/monarchic-ai/monarchic-agent-protocol/src/go/monarchic/agent_protocol/v1/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:9017" [label="calls"];
}

```

Structured graph:
- nodes: 21
- edges: 16

Layout:
- direction: LR
- strategy: edge-ranked

Simplification:
- simplified: yes
- rendered nodes: 21
- rendered edges: 16
- omitted nodes: 0
- omitted edges: 582
- Omitted 582 lower-priority dependency edges to avoid an unreadable graph.
- Kept a rank-ordered sample of stronger edges and switched to a left-to-right layout for denser graphs.

Why these edges:
- symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:130 calls symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637 via gen/go/monarchic_agent_protocol.pb.go.
- symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:236 calls symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637 via gen/go/monarchic_agent_protocol.pb.go.
- symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:328 calls symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637 via gen/go/monarchic_agent_protocol.pb.go.
- symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:419 calls symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637 via gen/go/monarchic_agent_protocol.pb.go.
- symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:504 calls symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637 via gen/go/monarchic_agent_protocol.pb.go.
- symbol:gen/go/monarchic_agent_protocol.pb.go:EnumDescriptor:85 calls symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_rawDescGZIP:637 via gen/go/monarchic_agent_protocol.pb.go.
- symbol:gen/go/monarchic_agent_protocol.pb.go:init:673 calls symbol:gen/go/monarchic_agent_protocol.pb.go:file_monarchic_agent_protocol_proto_init:674 via gen/go/monarchic_agent_protocol.pb.go.
- symbol:gen/go/monarchic_agent_protocol.pb.go:String:68 calls symbol:gen/go/monarchic_agent_protocol.pb.go:Descriptor:72 via gen/go/monarchic_agent_protocol.pb.go.
- symbol:scripts/conventional_commit_check.py:main:291 calls symbol:scripts/conventional_commit_check.py:build_single_message_summary:153 via scripts/conventional_commit_check.py.
- symbol:scripts/conventional_commit_check.py:main:291 calls symbol:scripts/conventional_commit_check.py:build_summary:194 via scripts/conventional_commit_check.py.

## Directory Map

Shows top-level directory layout to orient unfamiliar agents.

Interpretation note:
- Interpretation: use this map to orient yourself in the repository layout before reading code. Favor it when you need to connect top-level paths to the graph surfaces shown elsewhere.

Rendered surface:
- rendered nodes: 12, rendered edges: 11

Node mix:
- directory: 11, repository: 1

```mermaid
graph TD
  repository["monarchic-agent-protocol"] --> _github[".github/"]
  repository["monarchic-agent-protocol"] --> _monarchic[".monarchic/"]
  repository["monarchic-agent-protocol"] --> checks["checks/"]
  repository["monarchic-agent-protocol"] --> examples["examples/"]
  repository["monarchic-agent-protocol"] --> fixtures["fixtures/"]
  repository["monarchic-agent-protocol"] --> gen["gen/"]
  repository["monarchic-agent-protocol"] --> hashes["hashes/"]
  repository["monarchic-agent-protocol"] --> schemas["schemas/"]
  repository["monarchic-agent-protocol"] --> scripts["scripts/"]
  repository["monarchic-agent-protocol"] --> src["src/"]
  repository["monarchic-agent-protocol"] --> tests["tests/"]

```

```dot
digraph RepoIntel {
  label="Directory Map";
  labelloc=t;
  rankdir=TB;
  node [shape=box];
  "repository" [label="monarchic-agent-protocol", shape=box];
  ".github" [label=".github/", shape=box];
  ".monarchic" [label=".monarchic/", shape=box];
  "checks" [label="checks/", shape=box];
  "examples" [label="examples/", shape=box];
  "fixtures" [label="fixtures/", shape=box];
  "gen" [label="gen/", shape=box];
  "hashes" [label="hashes/", shape=box];
  "schemas" [label="schemas/", shape=box];
  "scripts" [label="scripts/", shape=box];
  "src" [label="src/", shape=box];
  "tests" [label="tests/", shape=box];
  "repository" -> ".github" [label="contains"];
  "repository" -> ".monarchic" [label="contains"];
  "repository" -> "checks" [label="contains"];
  "repository" -> "examples" [label="contains"];
  "repository" -> "fixtures" [label="contains"];
  "repository" -> "gen" [label="contains"];
  "repository" -> "hashes" [label="contains"];
  "repository" -> "schemas" [label="contains"];
  "repository" -> "scripts" [label="contains"];
  "repository" -> "src" [label="contains"];
  "repository" -> "tests" [label="contains"];
}

```

Structured graph:
- nodes: 12
- edges: 11

Layout:
- direction: TD
- strategy: linear-map

Simplification:
- simplified: no
- rendered nodes: 12
- rendered edges: 11
- omitted nodes: 0
- omitted edges: 0

Why these edges:
- .github/ is a top-level directory under the repository root.
- .monarchic/ is a top-level directory under the repository root.
- checks/ is a top-level directory under the repository root.
- examples/ is a top-level directory under the repository root.
- fixtures/ is a top-level directory under the repository root.
- gen/ is a top-level directory under the repository root.
- hashes/ is a top-level directory under the repository root.
- schemas/ is a top-level directory under the repository root.
- scripts/ is a top-level directory under the repository root.
- src/ is a top-level directory under the repository root.

## Subsystem Clusters

Shows a simplified subsystem graph grouped by dominant repository paths and graph-connected merges.

Explained in:
- [Subsystem Clusters](architecture.md#architecture-subsystems)
- [Architecture Summary](architecture.md#architecture-summary)

Interpretation note:
- Interpretation: use this clustering view to understand which source areas act like larger architectural slices and how strongly they connect. Favor it when you need a quick map of architectural boundaries instead of individual files or packages.

Rendered surface:
- rendered nodes: 3, rendered edges: 3

Node mix:
- subsystem: 3

Omitted surface:
- omitted nodes: 0
- omitted edges: 364

```mermaid
graph TD
  subgraph group_build_gradle_kts["build.gradle.kts/"]
    subsystem_root["root"]
  end
  subgraph group_Monarchic_AgentProtocol_csproj["Monarchic.AgentProtocol.csproj/"]
    subsystem_external["external"]
  end
  subgraph group_src["src/"]
    subsystem_src["src"]
  end

  subsystem_root --> subsystem_external
  subsystem_src --> subsystem_external
  subsystem_src --> subsystem_root

```

```dot
digraph RepoIntel {
  label="Subsystem Clusters";
  labelloc=t;
  rankdir=TB;
  node [shape=box];
  "subsystem:external" [label="external", shape=box];
  "subsystem:root" [label="root", shape=box];
  "subsystem:src" [label="src", shape=box];
  "subsystem:root" -> "subsystem:external" [label="depends_on", weight=10, penwidth=6];
  "subsystem:src" -> "subsystem:external" [label="depends_on", weight=22, penwidth=6];
  "subsystem:src" -> "subsystem:root" [label="depends_on"];
}

```

Structured graph:
- nodes: 3
- edges: 3

Layout:
- direction: TD
- strategy: hierarchy-ranked

Simplification:
- simplified: yes
- rendered nodes: 3
- rendered edges: 3
- omitted nodes: 0
- omitted edges: 364
- Collapsed 364 additional subsystem edges from the rendered view.
- Grouped subsystem nodes by dominant path segment across 3 hierarchy buckets before rendering edges.

Why these edges:
- root depends_on external via build.gradle.kts. 9 additional inferred edges reinforce this path. (10 inferred edges combined.)
- src depends_on external via src/go/go.mod. 21 additional inferred edges reinforce this path. (22 inferred edges combined.)
- src depends_on root via src/python/monarchic_agent_protocol/__init__.py.