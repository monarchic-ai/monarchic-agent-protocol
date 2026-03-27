use std::collections::BTreeMap;

use serde::{Deserialize, Serialize};
use serde_json::Value;

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
