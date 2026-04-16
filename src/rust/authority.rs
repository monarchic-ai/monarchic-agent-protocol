use std::collections::BTreeMap;

use serde::{Deserialize, Serialize};
use serde_json::Value;

use crate::version::DURABLE_AUTHORITY_CONTRACT_VERSION;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum LeaseLifecycleState {
    Issued,
    Active,
    Released,
    Expired,
    Cancelled,
    Rejected,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum RunLifecycleState {
    Pending,
    Executing,
    Paused,
    Cancelling,
    Cancelled,
    Failed,
    Complete,
    Blocked,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum StepLifecycleState {
    Pending,
    Ready,
    Leased,
    Running,
    Complete,
    Failed,
    Cancelled,
    Blocked,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum LeaseRejectionReason {
    StaleFencingToken,
    LeaseExpired,
    SessionMismatch,
    UnknownLease,
    StepAlreadyTerminal,
    RunNotExecutable,
    DependencyBlocked,
    LeaseSuperseded,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum RecoveryEventKind {
    OrchestratorStarted,
    StateReloaded,
    LeaseRestored,
    LeaseRejected,
    CancellationRequested,
    CancellationAcknowledged,
    StepRequeued,
    StepBlocked,
    RunRecovered,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum ManualOverrideAction {
    #[default]
    Unspecified,
    ApproveBlockedRun,
    ApprovePublication,
    BypassGate,
    ExtendLease,
    CancelRun,
    ResumeRun,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct FencingToken {
    pub token: String,
    pub issued_at_ms: u64,
    pub issuer: String,
    pub scope: String,
    #[serde(default, skip_serializing_if = "BTreeMap::is_empty")]
    pub extensions: BTreeMap<String, Value>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Lease {
    pub lease_id: String,
    pub run_id: String,
    pub plan_id: String,
    pub step_id: String,
    pub task_id: String,
    pub runner_id: String,
    pub session_id: String,
    pub fencing_token: FencingToken,
    pub issued_at_ms: u64,
    pub expires_at_ms: u64,
    pub status: LeaseLifecycleState,
    #[serde(default, skip_serializing_if = "BTreeMap::is_empty")]
    pub extensions: BTreeMap<String, Value>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct RecoveryEvent {
    pub event_id: String,
    pub run_id: String,
    pub plan_id: String,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub step_id: Option<String>,
    pub kind: RecoveryEventKind,
    pub occurred_at_ms: u64,
    pub actor: String,
    pub details: BTreeMap<String, Value>,
    pub contract_version: String,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub run_state: Option<RunLifecycleState>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub step_state: Option<StepLifecycleState>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub lease_rejection_reason: Option<LeaseRejectionReason>,
    #[serde(default, skip_serializing_if = "BTreeMap::is_empty")]
    pub extensions: BTreeMap<String, Value>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(try_from = "ManualOverrideRecordUnchecked", deny_unknown_fields)]
pub struct ManualOverrideRecord {
    pub contract_version: String,
    pub override_id: String,
    pub run_id: String,
    pub plan_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub step_id: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub task_id: Option<String>,
    #[serde(default)]
    pub action: ManualOverrideAction,
    pub actor: String,
    pub reason: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub source_decision_id: Option<String>,
    #[serde(default)]
    pub affected_artifact_ids: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub supersedes_override_id: Option<String>,
    pub created_at_ms: u64,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub expires_at_ms: Option<u64>,
    #[serde(default, skip_serializing_if = "BTreeMap::is_empty")]
    pub extensions: BTreeMap<String, Value>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct ManualOverrideRecordUnchecked {
    #[serde(default = "default_durable_authority_contract_version")]
    contract_version: String,
    override_id: String,
    run_id: String,
    plan_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    step_id: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    task_id: Option<String>,
    #[serde(default)]
    action: ManualOverrideAction,
    actor: String,
    reason: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    source_decision_id: Option<String>,
    #[serde(default)]
    affected_artifact_ids: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    supersedes_override_id: Option<String>,
    created_at_ms: u64,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    expires_at_ms: Option<u64>,
    #[serde(default, skip_serializing_if = "BTreeMap::is_empty")]
    extensions: BTreeMap<String, Value>,
}

fn default_durable_authority_contract_version() -> String {
    DURABLE_AUTHORITY_CONTRACT_VERSION.to_string()
}

impl TryFrom<ManualOverrideRecordUnchecked> for ManualOverrideRecord {
    type Error = String;

    fn try_from(value: ManualOverrideRecordUnchecked) -> Result<Self, Self::Error> {
        require_non_empty("manual override contract_version", &value.contract_version)?;
        require_non_empty("manual override override_id", &value.override_id)?;
        require_non_empty("manual override run_id", &value.run_id)?;
        require_non_empty("manual override plan_id", &value.plan_id)?;
        require_optional_non_empty("manual override step_id", value.step_id.as_deref())?;
        require_optional_non_empty("manual override task_id", value.task_id.as_deref())?;
        require_non_empty("manual override actor", &value.actor)?;
        require_non_empty("manual override reason", &value.reason)?;
        require_optional_non_empty(
            "manual override source_decision_id",
            value.source_decision_id.as_deref(),
        )?;
        require_optional_non_empty(
            "manual override supersedes_override_id",
            value.supersedes_override_id.as_deref(),
        )?;
        for artifact_id in &value.affected_artifact_ids {
            require_non_empty("manual override affected_artifact_id", artifact_id)?;
        }

        if matches!(value.action, ManualOverrideAction::Unspecified) {
            return Err(String::from(
                "manual override action must not be unspecified",
            ));
        }
        if value
            .expires_at_ms
            .is_some_and(|expires_at_ms| expires_at_ms <= value.created_at_ms)
        {
            return Err(String::from(
                "manual override expires_at_ms must be greater than created_at_ms",
            ));
        }

        Ok(Self {
            contract_version: value.contract_version,
            override_id: value.override_id,
            run_id: value.run_id,
            plan_id: value.plan_id,
            step_id: value.step_id,
            task_id: value.task_id,
            action: value.action,
            actor: value.actor,
            reason: value.reason,
            source_decision_id: value.source_decision_id,
            affected_artifact_ids: value.affected_artifact_ids,
            supersedes_override_id: value.supersedes_override_id,
            created_at_ms: value.created_at_ms,
            expires_at_ms: value.expires_at_ms,
            extensions: value.extensions,
        })
    }
}

fn require_non_empty(label: &str, value: &str) -> Result<(), String> {
    if value.trim().is_empty() {
        return Err(format!("{label} must not be empty"));
    }
    Ok(())
}

fn require_optional_non_empty(label: &str, value: Option<&str>) -> Result<(), String> {
    if value.is_some_and(|entry| entry.trim().is_empty()) {
        return Err(format!("{label} must not be empty when present"));
    }
    Ok(())
}
