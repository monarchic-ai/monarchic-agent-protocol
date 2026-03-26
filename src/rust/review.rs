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
