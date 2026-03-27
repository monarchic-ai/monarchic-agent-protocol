use serde::{Deserialize, Serialize};

use crate::{blocking::BlockedOutcome, receipt::VerificationReceipt};

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum ReviewDecisionScope {
    Plan,
    Step,
    PullRequest,
    Verification,
    Release,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum ReviewDisposition {
    Approve,
    RequestChanges,
    Reject,
    Defer,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ReviewDecision {
    pub decision_id: String,
    pub plan_id: String,
    pub scope: ReviewDecisionScope,
    pub actor: String,
    pub decision: ReviewDisposition,
    pub reason: String,
    pub created_at: u64,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum RerunTrigger {
    #[default]
    Unspecified,
    ReviewDecision,
    Manual,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct RerunScope {
    pub scope_id: String,
    pub plan_id: String,
    #[serde(default)]
    pub trigger: RerunTrigger,
    pub reason: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub source_decision_id: Option<String>,
    #[serde(default)]
    pub task_ids: Vec<String>,
    #[serde(default)]
    pub step_ids: Vec<String>,
    #[serde(default)]
    pub paths: Vec<String>,
    pub created_at: u64,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum RerunSelectionStrategy {
    #[default]
    Unspecified,
    TaskIds,
    StepIds,
    Paths,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum RerunExecutionStatus {
    #[default]
    Unspecified,
    Pending,
    Succeeded,
    Failed,
    Partial,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct RerunExecutionResult {
    pub result_id: String,
    pub plan_id: String,
    pub rerun_scope_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub source_decision_id: Option<String>,
    #[serde(default)]
    pub trigger: RerunTrigger,
    #[serde(default)]
    pub matched_strategy: RerunSelectionStrategy,
    #[serde(default)]
    pub root_tasks: Vec<String>,
    #[serde(default)]
    pub selected_tasks: Vec<String>,
    #[serde(default)]
    pub matched_paths: Vec<String>,
    pub reason: String,
    #[serde(default)]
    pub status: RerunExecutionStatus,
    #[serde(default)]
    pub completed_tasks: Vec<String>,
    #[serde(default)]
    pub failed_tasks: Vec<String>,
    #[serde(default)]
    pub skipped_tasks: Vec<String>,
    pub created_at: u64,
    pub updated_at: u64,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct PrLifecycleState {
    pub state_id: String,
    pub plan_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub pr_number: Option<u64>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub pr_url: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub review_decision: Option<ReviewDecision>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub rerun_scope: Option<RerunScope>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub rerun_result: Option<RerunExecutionResult>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub verification_receipt: Option<VerificationReceipt>,
    pub merge_ready: bool,
    pub release_ready: bool,
    #[serde(default)]
    pub blocked_outcomes: Vec<BlockedOutcome>,
    pub updated_at: u64,
}
