use std::collections::BTreeMap;

use serde::{Deserialize, Serialize};
use serde_json::Value;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum BootstrapPlanningMode {
    #[default]
    Unspecified,
    DirectTemplateFill,
    BoundedResearchReplan,
}

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize, Default)]
#[serde(deny_unknown_fields)]
pub struct AgentRunnerPreference {
    pub runner_id: String,
    #[serde(default)]
    pub model: Option<String>,
    #[serde(default)]
    pub provider: Option<String>,
    #[serde(default)]
    pub reasoning_effort: Option<String>,
    #[serde(default)]
    pub required_capabilities: Vec<String>,
    #[serde(default)]
    pub labels: Vec<String>,
    #[serde(default)]
    pub extensions: BTreeMap<String, Value>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize, Default)]
#[serde(deny_unknown_fields)]
pub struct AgentProfile {
    pub agent_id: String,
    pub role_id: String,
    pub display_name: String,
    #[serde(default)]
    pub description: Option<String>,
    #[serde(default)]
    pub runner_preferences: Vec<AgentRunnerPreference>,
    #[serde(default)]
    pub allowed_network_modes: Vec<String>,
    #[serde(default)]
    pub requires_human_review: bool,
    #[serde(default)]
    pub required_skill_ids: Vec<String>,
    #[serde(default)]
    pub required_mcp_ids: Vec<String>,
    #[serde(default)]
    pub extensions: BTreeMap<String, Value>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(deny_unknown_fields)]
pub struct ResolvedAgentRunner {
    pub runner_id: String,
    #[serde(default)]
    pub model: Option<String>,
    #[serde(default)]
    pub provider: Option<String>,
    #[serde(default)]
    pub reasoning_effort: Option<String>,
    #[serde(default)]
    pub preference_index: u32,
    #[serde(default)]
    pub selection_reason: Option<String>,
    #[serde(default)]
    pub extensions: BTreeMap<String, Value>,
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
    #[serde(default)]
    pub agent_id: Option<String>,
    #[serde(default)]
    pub injected_by_role_id: Option<String>,
    #[serde(default, skip_serializing_if = "Vec::is_empty")]
    pub runner_preferences: Vec<AgentRunnerPreference>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub resolved_runner: Option<ResolvedAgentRunner>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct BootstrapPlan {
    pub bootstrap_plan_id: String,
    pub bootstrap_intent_id: String,
    pub project_key: String,
    pub planning_mode: BootstrapPlanningMode,
    #[serde(default)]
    pub pipeline_template_id: Option<String>,
    pub campaign_goal: String,
    pub created_at_ms: u64,
    pub tasks: Vec<BootstrapPlanTask>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(deny_unknown_fields)]
pub struct BootstrapFilesystemPolicy {
    #[serde(default)]
    pub read: Vec<String>,
    #[serde(default)]
    pub write: Vec<String>,
    #[serde(default)]
    pub execute: Vec<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct BootstrapSkillBinding {
    pub id: String,
    #[serde(default)]
    pub required: bool,
    #[serde(default)]
    pub purpose: String,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct BootstrapTemplateSlotContext {
    pub slot_id: String,
    pub display_name: String,
    pub role: String,
    pub interaction_mode: String,
    pub network_mode: String,
    pub requires_human_review: bool,
    pub filesystem_policy: BootstrapFilesystemPolicy,
    #[serde(default)]
    pub required_skills: Vec<BootstrapSkillBinding>,
    #[serde(default)]
    pub required_mcps: Vec<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct BootstrapTemplateConnectionContext {
    pub from_slot_id: String,
    pub to_slot_id: String,
    pub kind: String,
    #[serde(default)]
    pub required: bool,
    #[serde(default)]
    pub description: Option<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct BootstrapTemplateLaneContext {
    pub lane_id: String,
    pub display_name: String,
    pub from_slot_id: String,
    pub to_slot_id: String,
    #[serde(default)]
    pub slot_ids: Vec<String>,
    #[serde(default)]
    pub repeat_per_task_group: bool,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct BootstrapTemplateContext {
    pub template_id: String,
    pub display_name: String,
    #[serde(default)]
    pub slots: Vec<BootstrapTemplateSlotContext>,
    #[serde(default)]
    pub connections: Vec<BootstrapTemplateConnectionContext>,
    #[serde(default)]
    pub lanes: Vec<BootstrapTemplateLaneContext>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(try_from = "BootstrapPlanningContextUnchecked", deny_unknown_fields)]
pub struct BootstrapPlanningContext {
    pub project_key: String,
    pub target_repo: String,
    #[serde(default)]
    pub target_repos: Vec<String>,
    pub campaign_goal: String,
    #[serde(default)]
    pub notes: Option<String>,
    pub priority_profile: String,
    #[serde(default, alias = "codex_cmd")]
    pub default_agent_cmd: Vec<String>,
    #[serde(default)]
    pub agent_cmds: BTreeMap<String, Vec<String>>,
    #[serde(default, skip_serializing_if = "Vec::is_empty")]
    pub agent_profiles: Vec<AgentProfile>,
    #[serde(default)]
    pub available_skill_ids: Vec<String>,
    #[serde(default)]
    pub enabled_role_ids: Vec<String>,
    #[serde(default)]
    pub selected_template: Option<BootstrapTemplateContext>,
    pub planning_mode: BootstrapPlanningMode,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct BootstrapPlanningContextUnchecked {
    pub project_key: String,
    pub target_repo: String,
    #[serde(default)]
    pub target_repos: Vec<String>,
    pub campaign_goal: String,
    #[serde(default)]
    pub notes: Option<String>,
    pub priority_profile: String,
    #[serde(default, alias = "codex_cmd")]
    pub default_agent_cmd: Vec<String>,
    #[serde(default)]
    pub agent_cmds: BTreeMap<String, Vec<String>>,
    #[serde(default, skip_serializing_if = "Vec::is_empty")]
    pub agent_profiles: Vec<AgentProfile>,
    #[serde(default)]
    pub available_skill_ids: Vec<String>,
    #[serde(default)]
    pub enabled_role_ids: Vec<String>,
    #[serde(default)]
    pub selected_template: Option<BootstrapTemplateContext>,
    #[serde(default)]
    pub planning_mode: BootstrapPlanningMode,
}

impl TryFrom<BootstrapPlanningContextUnchecked> for BootstrapPlanningContext {
    type Error = String;

    fn try_from(value: BootstrapPlanningContextUnchecked) -> Result<Self, Self::Error> {
        if value.project_key.trim().is_empty() {
            return Err(String::from(
                "bootstrap_planning_context project_key must not be empty",
            ));
        }
        if value.target_repo.trim().is_empty() {
            return Err(String::from(
                "bootstrap_planning_context target_repo must not be empty",
            ));
        }
        if value.campaign_goal.trim().is_empty() {
            return Err(String::from(
                "bootstrap_planning_context campaign_goal must not be empty",
            ));
        }
        if value.priority_profile.trim().is_empty() {
            return Err(String::from(
                "bootstrap_planning_context priority_profile must not be empty",
            ));
        }
        if value.planning_mode == BootstrapPlanningMode::Unspecified {
            return Err(String::from(
                "bootstrap_planning_context planning_mode must not be unspecified",
            ));
        }

        Ok(Self {
            project_key: value.project_key,
            target_repo: value.target_repo,
            target_repos: value.target_repos,
            campaign_goal: value.campaign_goal,
            notes: value.notes,
            priority_profile: value.priority_profile,
            default_agent_cmd: value.default_agent_cmd,
            agent_cmds: value.agent_cmds,
            agent_profiles: value.agent_profiles,
            available_skill_ids: value.available_skill_ids,
            enabled_role_ids: value.enabled_role_ids,
            selected_template: value.selected_template,
            planning_mode: value.planning_mode,
        })
    }
}
