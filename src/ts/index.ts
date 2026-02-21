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
  delivery_contract?: DeliveryContract;
  objective_spec?: ObjectiveSpec;
  experiment_spec?: ExperimentSpec;
  [key: string]: unknown;
}

export interface Artifact {
  version: ProtocolVersion;
  artifact_id: string;
  type: string;
  summary: string;
  path: string;
  task_id: string;
  provenance?: Provenance;
  dataset_refs?: DatasetRef[];
  eval_results?: EvalResult[];
  experiment_spec?: ExperimentSpec;
  [key: string]: unknown;
}

export interface Event {
  version: ProtocolVersion;
  event_type: string;
  timestamp: string;
  task_id: string;
  status: string;
  message?: string;
  provenance?: Provenance;
  eval_results?: EvalResult[];
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

export interface DatasetRef {
  dataset_id: string;
  uri?: string;
  sha256: string;
  format: string;
  split?: "train" | "validation" | "test" | "holdout" | "reference" | "other";
  size_bytes?: number;
  description?: string;
  [key: string]: unknown;
}

export interface AcceptanceCriteria {
  metric: string;
  direction: "maximize" | "minimize" | "target";
  threshold: number;
  min_effect_size?: number;
  max_variance?: number;
  confidence_level?: number;
  [key: string]: unknown;
}

export interface DeliveryContract {
  objective: string;
  definition_of_done: string[];
  required_checks: string[];
  risk_tier: "low" | "medium" | "high" | "critical";
  max_cycle_minutes?: number;
  max_agent_turns?: number;
  pr_strategy?: "single" | "stacked" | "incremental";
  review_policy?: "auto" | "human_required";
  rollback_strategy?: "revert_commit" | "revert_pr" | "manual";
  notes?: string;
  [key: string]: unknown;
}

export interface ExperimentSpec {
  experiment_id: string;
  objective: string;
  hypothesis?: string;
  model_family?: string;
  seeds?: number[];
  dataset_refs: DatasetRef[];
  acceptance: AcceptanceCriteria;
  constraints?: Record<string, unknown>;
  [key: string]: unknown;
}

export interface ObjectiveSpec {
  metric_key: string;
  direction: "maximize" | "minimize" | "target";
  target?: number;
  min_delta?: number;
  tolerance?: number;
  report_file?: string;
  report_task_id?: string;
  weight?: number;
  description?: string;
  [key: string]: unknown;
}

export interface EvalResult {
  metric: string;
  value: number;
  lower_ci?: number;
  upper_ci?: number;
  variance?: number;
  seed?: number;
  passed: boolean;
  notes?: string;
  [key: string]: unknown;
}

export interface Provenance {
  prompt_sha256: string;
  code_sha256: string;
  dataset_sha256?: string[];
  runtime: string;
  model?: string;
  runner: string;
  orchestrator: string;
  task_spec_sha256?: string;
  pipeline_sha256?: string;
  command_sha256?: string;
  created_at: string;
  source_task_id?: string;
  dataset_refs?: DatasetRef[];
  [key: string]: unknown;
}
