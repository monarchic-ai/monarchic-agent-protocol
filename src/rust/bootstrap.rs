use std::collections::BTreeMap;

use serde::{Deserialize, Serialize};
use serde_json::Value;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct BootstrapIntent {
    pub bootstrap_intent_id: String,
    pub project_key: String,
    pub target_repos: Vec<String>,
    #[serde(default)]
    pub pipeline_template_id: Option<String>,
    pub campaign_goal: String,
    #[serde(default)]
    pub notes: Option<String>,
    pub priority_profile: String,
    pub created_at_ms: u64,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct BootstrapPlanTask {
    pub task_id: String,
    pub display_name: String,
    pub role_id: String,
    pub task_milestone: String,
    #[serde(default)]
    pub depends_on: Vec<String>,
    #[serde(default)]
    pub target_repo: Option<String>,
    #[serde(default)]
    pub required_skill_ids: Vec<String>,
    #[serde(default)]
    pub required_mcp_ids: Vec<String>,
    #[serde(default)]
    pub interaction_mode: Option<String>,
    #[serde(default)]
    pub network_mode: Option<String>,
    #[serde(default)]
    pub requires_human_review: Option<bool>,
    #[serde(default)]
    pub filesystem_policy: BTreeMap<String, Value>,
    #[serde(default)]
    pub template_slot_id: Option<String>,
    #[serde(default)]
    pub notes: Option<String>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct BootstrapPlan {
    pub bootstrap_plan_id: String,
    pub bootstrap_intent_id: String,
    pub project_key: String,
    pub planning_mode: String,
    #[serde(default)]
    pub pipeline_template_id: Option<String>,
    pub campaign_goal: String,
    pub created_at_ms: u64,
    pub tasks: Vec<BootstrapPlanTask>,
}
