use serde::{Deserialize, Serialize};

use crate::artifact::ArtifactDescriptor;
use crate::blocking::BlockedOutcome;
use crate::version::CLIENT_BOUNDARY_CONTRACT_VERSION;

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
#[serde(try_from = "VerificationReceiptUnchecked", deny_unknown_fields)]
pub struct VerificationReceipt {
    pub contract_version: String,
    pub verification_id: String,
    pub plan_id: String,
    #[serde(default)]
    pub execution_receipt_ids: Vec<String>,
    pub verification_policy_version: String,
    pub status: VerificationStatus,
    pub checks: Vec<VerificationCheck>,
    pub blocked_outcomes: Vec<BlockedOutcome>,
    pub artifact_digest_set: Vec<String>,
    pub verified_at: u64,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct VerificationReceiptUnchecked {
    #[serde(default = "default_contract_version")]
    contract_version: String,
    verification_id: String,
    plan_id: String,
    #[serde(default)]
    execution_receipt_ids: Vec<String>,
    verification_policy_version: String,
    status: VerificationStatus,
    checks: Vec<VerificationCheck>,
    blocked_outcomes: Vec<BlockedOutcome>,
    artifact_digest_set: Vec<String>,
    verified_at: u64,
}

fn default_contract_version() -> String {
    CLIENT_BOUNDARY_CONTRACT_VERSION.to_string()
}

impl TryFrom<VerificationReceiptUnchecked> for VerificationReceipt {
    type Error = String;

    fn try_from(value: VerificationReceiptUnchecked) -> Result<Self, Self::Error> {
        if value.contract_version.trim().is_empty() {
            return Err(String::from(
                "verification receipt contract_version must not be empty",
            ));
        }

        if matches!(value.status, VerificationStatus::Passed) && !value.blocked_outcomes.is_empty() {
            return Err(String::from(
                "passed verification receipts must not include blocked_outcomes",
            ));
        }

        if matches!(value.status, VerificationStatus::Blocked) && value.blocked_outcomes.is_empty() {
            return Err(String::from(
                "blocked verification receipts must include at least one blocked_outcome",
            ));
        }

        if matches!(value.status, VerificationStatus::Failed)
            && !value
                .checks
                .iter()
                .any(|check| matches!(check.status, VerificationCheckStatus::Failed | VerificationCheckStatus::Blocked))
            && value.blocked_outcomes.is_empty()
        {
            return Err(String::from(
                "failed verification receipts must include a failed or blocked check, or a blocked_outcome",
            ));
        }

        Ok(Self {
            contract_version: value.contract_version,
            verification_id: value.verification_id,
            plan_id: value.plan_id,
            execution_receipt_ids: value.execution_receipt_ids,
            verification_policy_version: value.verification_policy_version,
            status: value.status,
            checks: value.checks,
            blocked_outcomes: value.blocked_outcomes,
            artifact_digest_set: value.artifact_digest_set,
            verified_at: value.verified_at,
        })
    }
}
