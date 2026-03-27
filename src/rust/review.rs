use serde::{Deserialize, Serialize};

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
