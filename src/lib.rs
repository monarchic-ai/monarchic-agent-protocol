use serde::{Deserialize, Serialize};
use std::collections::BTreeMap;

pub const PROTOCOL_VERSION: &str = "v1";

pub type JsonMap = BTreeMap<String, serde_json::Value>;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum AgentRole {
    ProductOwner,
    ProjectManager,
    Dev,
    Qa,
    Reviewer,
    Security,
    Ops,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Task {
    pub version: String,
    pub task_id: String,
    pub role: AgentRole,
    pub goal: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub inputs: Option<JsonMap>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub constraints: Option<JsonMap>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub gates_required: Option<Vec<String>>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub run_context: Option<RunContext>,
    #[serde(default, flatten)]
    pub extensions: JsonMap,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Artifact {
    pub version: String,
    pub artifact_id: String,
    #[serde(rename = "type")]
    pub artifact_type: String,
    pub summary: String,
    pub path: String,
    pub task_id: String,
    #[serde(default, flatten)]
    pub extensions: JsonMap,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Event {
    pub version: String,
    pub event_type: String,
    pub timestamp: String,
    pub task_id: String,
    pub status: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub message: Option<String>,
    #[serde(default, flatten)]
    pub extensions: JsonMap,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct GateResult {
    pub version: String,
    pub gate: String,
    pub status: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub reason: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub evidence: Option<JsonMap>,
    #[serde(default, flatten)]
    pub extensions: JsonMap,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct RunContext {
    pub version: String,
    pub repo: String,
    pub worktree: String,
    pub image: String,
    pub runner: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub labels: Option<Vec<String>>,
    #[serde(default, flatten)]
    pub extensions: JsonMap,
}
