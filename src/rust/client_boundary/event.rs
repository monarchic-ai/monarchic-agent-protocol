use serde::{Deserialize, Serialize};

use crate::version::CLIENT_BOUNDARY_CONTRACT_VERSION;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum RunEventStream {
    Execution,
    Recovery,
    Review,
    Verification,
    Lifecycle,
    Custom,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "RunEventRecordUnchecked", deny_unknown_fields)]
pub struct RunEventRecord {
    pub contract_version: String,
    pub event_id: String,
    pub run_id: String,
    pub plan_id: String,
    pub sequence: u64,
    pub stream: RunEventStream,
    pub recorded_at: u64,
    pub step_id: Option<String>,
    pub task_id: Option<String>,
    pub event_type: String,
    pub status: String,
    pub message: Option<String>,
    pub artifact_ids: Vec<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct RunEventRecordUnchecked {
    #[serde(default = "default_contract_version")]
    contract_version: String,
    event_id: String,
    run_id: String,
    plan_id: String,
    sequence: u64,
    stream: RunEventStream,
    recorded_at: u64,
    step_id: Option<String>,
    task_id: Option<String>,
    event_type: String,
    status: String,
    message: Option<String>,
    #[serde(default)]
    artifact_ids: Vec<String>,
}

fn default_contract_version() -> String {
    CLIENT_BOUNDARY_CONTRACT_VERSION.to_string()
}

impl TryFrom<RunEventRecordUnchecked> for RunEventRecord {
    type Error = String;

    fn try_from(value: RunEventRecordUnchecked) -> Result<Self, Self::Error> {
        if value.contract_version.trim().is_empty() {
            return Err(String::from(
                "run event record contract_version must not be empty",
            ));
        }
        if value.event_id.trim().is_empty() {
            return Err(String::from("run event record event_id must not be empty"));
        }
        if value.run_id.trim().is_empty() {
            return Err(String::from("run event record run_id must not be empty"));
        }
        if value.plan_id.trim().is_empty() {
            return Err(String::from("run event record plan_id must not be empty"));
        }
        if value.event_type.trim().is_empty() {
            return Err(String::from(
                "run event record event_type must not be empty",
            ));
        }
        if value.status.trim().is_empty() {
            return Err(String::from("run event record status must not be empty"));
        }

        Ok(Self {
            contract_version: value.contract_version,
            event_id: value.event_id,
            run_id: value.run_id,
            plan_id: value.plan_id,
            sequence: value.sequence,
            stream: value.stream,
            recorded_at: value.recorded_at,
            step_id: value.step_id,
            task_id: value.task_id,
            event_type: value.event_type,
            status: value.status,
            message: value.message,
            artifact_ids: value.artifact_ids,
        })
    }
}
