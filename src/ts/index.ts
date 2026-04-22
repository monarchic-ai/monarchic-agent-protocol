export type ProtocolVersion = "v1";

export type AgentRole =
  | "product_owner"
  | "project_manager"
  | "dev"
  | "qa"
  | "reviewer"
  | "security"
  | "ops"
  | "publisher";

export interface Task {
  version: ProtocolVersion;
  task_id: string;
  role_id: string;
  role?: AgentRole | string;
  goal: string;
  inputs?: Record<string, unknown>;
  constraints?: Record<string, unknown>;
  gates_required?: string[];
  run_context?: RunContext;
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
  failure_class?: FailureClass;
  provenance?: Provenance;
  eval_results?: EvalResult[];
  [key: string]: unknown;
}

export interface TaskMessage {
  version: ProtocolVersion;
  message_id: string;
  run_id: string;
  from_task_id: string;
  to_task_id: string;
  kind: string;
  subject?: string;
  body?: string;
  artifact_refs?: string[];
  reply_to?: string;
  created_at: string;
  requires_ack: boolean;
  provenance?: Provenance;
  [key: string]: unknown;
}

export interface TaskMessageAck {
  version: ProtocolVersion;
  message_id: string;
  run_id: string;
  task_id: string;
  acked_at: string;
  status: string;
  note?: string;
  [key: string]: unknown;
}

export interface GateResult {
  version: ProtocolVersion;
  gate: string;
  status: string;
  reason?: string;
  failure_class?: FailureClass;
  evidence?: Record<string, unknown>;
  [key: string]: unknown;
}

export type PublicationActionKind =
  | "commit_split"
  | "create_branch"
  | "push_branch"
  | "open_pull_request"
  | "update_pull_request"
  | "merge_pull_request"
  | "create_tag"
  | "create_release";

export type PublicationActionStatus =
  | "planned"
  | "ready"
  | "blocked"
  | "applied"
  | "failed";

export interface PublicationTargetRef {
  repo: string;
  base_branch: string;
  head_branch?: string;
  base_commit?: string;
  remote?: string;
  [key: string]: unknown;
}

export interface PublicationPullRequestRef {
  number?: number;
  url?: string;
  title?: string;
  [key: string]: unknown;
}

export interface PublicationAction {
  contract_version: ProtocolVersion;
  action_id: string;
  run_id: string;
  plan_id: string;
  task_id?: string;
  kind: PublicationActionKind;
  status: PublicationActionStatus;
  actor: string;
  target: PublicationTargetRef;
  summary: string;
  commit_message?: string;
  artifact_ids?: string[];
  pull_request?: PublicationPullRequestRef;
  failure_reason?: string;
  dry_run: boolean;
  created_at: number;
  [key: string]: unknown;
}

export type ModerationDecisionScope =
  | "intent"
  | "plan"
  | "step"
  | "task"
  | "artifact"
  | "publication"
  | "run";

export type ModerationDisposition =
  | "allow"
  | "block"
  | "escalate"
  | "request_changes";

export interface ModerationDecision {
  contract_version: ProtocolVersion;
  decision_id: string;
  run_id: string;
  plan_id: string;
  task_id?: string;
  scope: ModerationDecisionScope;
  disposition: ModerationDisposition;
  actor: string;
  reason: string;
  policy_tags?: string[];
  artifact_ids?: string[];
  blocked_outcomes?: Record<string, unknown>[];
  created_at: number;
  [key: string]: unknown;
}

export const CONTROL_PLANE_QUEUE_JOB_CONTRACT_VERSION =
  "monarchic.control-plane.queue-job.v1" as const;

export type ControlPlaneWorkflowKind =
  | "bootstrap"
  | "campaign_draft"
  | "campaign_execution";

export type ControlPlaneRunStatus =
  | "requested"
  | "validated"
  | "queued"
  | "assigned"
  | "running"
  | "blocked"
  | "review_required"
  | "completed"
  | "failed"
  | "cancelled";

export type ControlPlaneDispatchSource = "api" | "control_plane" | "recovery";

export type AuthMechanism =
  | "shared_secret"
  | "bearer_token"
  | "signed_token"
  | "mutual_tls"
  | "custom";

export interface PrincipalRef {
  principal_id: string;
  provider: string;
  display_name?: string;
}

export interface TenantRef {
  tenant_id: string;
  display_name?: string;
}

export interface AuthContext {
  contract_version: "v1" | string;
  auth_context_id: string;
  principal: PrincipalRef;
  tenant: TenantRef;
  mechanism: AuthMechanism;
  credential_id: string;
  scopes: string[];
  issued_at: number;
  expires_at?: number;
}

export interface ControlPlaneDispatchRequest {
  tenant_id: string;
  project_key: string;
  run_id: string;
  task_id?: string;
  workflow: ControlPlaneWorkflowKind;
  queue: "control-plane.launch" | string;
  run_status: ControlPlaneRunStatus;
  task_status?: ControlPlaneRunStatus;
}

export interface ControlPlaneQueueJob {
  contract_version: typeof CONTROL_PLANE_QUEUE_JOB_CONTRACT_VERSION;
  queue: "control-plane.launch" | string;
  source: ControlPlaneDispatchSource;
  submitted_at_ms?: number;
  auth_context?: AuthContext;
  run_record_path?: string;
  run_snapshot?: Record<string, unknown>;
  dispatch: ControlPlaneDispatchRequest;
}

export interface FailureClass {
  category:
    | "validation"
    | "dependency"
    | "environment"
    | "timeout"
    | "conflict"
    | "permission"
    | "resource"
    | "internal"
    | "unknown";
  code: string;
  retryable: boolean;
  detail?: string;
  scope?: "task" | "artifact" | "gate" | "runner" | "orchestrator" | "unknown";
  source?: string;
  next_action?: string;
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

export interface RunnerCapabilities {
  platform: string;
  runtime: string;
  supported_role_ids?: string[];
  supported_roles?: (AgentRole | string)[];
  supported_task_versions?: string[];
  labels?: string[];
  supports_interactive_pty: boolean;
  supports_resume: boolean;
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
