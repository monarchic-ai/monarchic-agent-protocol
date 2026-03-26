use serde::{Deserialize, Serialize};

use crate::artifact::ArtifactDescriptor;
use crate::blocking::BlockedOutcome;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum ExecutionStatus {
    Pending,
    Running,
    Completed,
    Failed,
    Cancelled,
    Blocked,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum VerificationStatus {
    Pending,
    Passed,
    Failed,
    Blocked,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum VerificationCheckStatus {
    Passed,
    Failed,
    Blocked,
    Skipped,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct VerificationCheck {
    pub check_id: String,
    pub name: String,
    pub status: VerificationCheckStatus,
    pub message: String,
    pub artifact_ids: Vec<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ExecutionReceipt {
    pub receipt_id: String,
    pub plan_id: String,
    pub step_id: String,
    pub task_id: String,
    pub runner_id: String,
    pub contract_version: String,
    pub status: ExecutionStatus,
    pub started_at: u64,
    pub finished_at: u64,
    pub artifact_descriptors: Vec<ArtifactDescriptor>,
    pub event_digest: String,
    pub output_digest: String,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct VerificationReceipt {
    pub verification_id: String,
    pub plan_id: String,
    pub verification_policy_version: String,
    pub status: VerificationStatus,
    pub checks: Vec<VerificationCheck>,
    pub blocked_outcomes: Vec<BlockedOutcome>,
    pub artifact_digest_set: Vec<String>,
    pub verified_at: u64,
}
