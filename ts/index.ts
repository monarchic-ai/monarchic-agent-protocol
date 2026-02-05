export type ProtocolVersion = "v1";

export type AgentRole =
  | "product_owner"
  | "project_manager"
  | "dev"
  | "qa"
  | "reviewer"
  | "security"
  | "ops";

export interface Task {
  version: ProtocolVersion;
  task_id: string;
  role: AgentRole;
  goal: string;
  inputs?: Record<string, unknown>;
  constraints?: Record<string, unknown>;
  gates_required?: string[];
  run_context?: RunContext;
  [key: string]: unknown;
}

export interface Artifact {
  version: ProtocolVersion;
  artifact_id: string;
  type: string;
  summary: string;
  path: string;
  task_id: string;
  [key: string]: unknown;
}

export interface Event {
  version: ProtocolVersion;
  event_type: string;
  timestamp: string;
  task_id: string;
  status: string;
  message?: string;
  [key: string]: unknown;
}

export interface GateResult {
  version: ProtocolVersion;
  gate: string;
  status: string;
  reason?: string;
  evidence?: Record<string, unknown>;
  [key: string]: unknown;
}

export interface RunContext {
  version: ProtocolVersion;
  repo: string;
  worktree: string;
  image: string;
  runner: string;
  labels?: string[];
  [key: string]: unknown;
}
