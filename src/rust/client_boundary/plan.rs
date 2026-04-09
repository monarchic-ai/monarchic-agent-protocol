use std::collections::BTreeMap;

use serde::{Deserialize, Serialize};
use serde_json::Value;

use super::artifact::ArtifactKind;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum PlanStepKind {
    Analysis,
    Execution,
    Verification,
    Review,
    Merge,
    Release,
    Custom,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum ReplanStrategy {
    Retry,
    Repair,
    Escalate,
    Block,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ReplanPolicy {
    pub strategy: ReplanStrategy,
    pub max_attempts: u32,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct StepOutputExpectation {
    pub kind: ArtifactKind,
    pub logical_name: String,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct PlanStep {
    pub step_id: String,
    pub task_id: String,
    pub kind: PlanStepKind,
    pub description: String,
    pub dependencies: Vec<String>,
    pub inputs: BTreeMap<String, Value>,
    pub expected_outputs: Vec<StepOutputExpectation>,
    pub policy_tags: Vec<String>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Plan {
    pub plan_id: String,
    pub intent_id: String,
    pub plan_version: String,
    pub planner_version: String,
    pub created_at: u64,
    pub steps: Vec<PlanStep>,
    pub replan_policy: ReplanPolicy,
    pub input_digest: String,
}
