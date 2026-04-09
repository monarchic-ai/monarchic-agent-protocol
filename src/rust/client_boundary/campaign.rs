use std::collections::BTreeMap;

use serde::{Deserialize, Serialize};
use serde_json::Value;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum CampaignPipelineConnectionKind {
    #[default]
    DependsOn,
    Handoff,
    Review,
    MessageRoute,
    ArtifactFlow,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CampaignTaskSkillBinding {
    pub id: String,
    #[serde(default)]
    pub required: bool,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub purpose: Option<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CampaignPipelineTaskRef {
    pub task_id: String,
    pub task_artifact: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub role_id: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub task_milestone: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub task_format: Option<String>,
    #[serde(default)]
    pub depends_on: Vec<String>,
    #[serde(default)]
    pub runner_args: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub interaction_mode: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub network_mode: Option<String>,
    #[serde(default)]
    pub requires_human_review: bool,
    #[serde(default)]
    pub filesystem_policy: BTreeMap<String, Value>,
    #[serde(default)]
    pub required_skills: Vec<CampaignTaskSkillBinding>,
    #[serde(default)]
    pub required_mcp_ids: Vec<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CampaignPipelineConnection {
    pub from_task_id: String,
    pub to_task_id: String,
    #[serde(default)]
    pub kind: CampaignPipelineConnectionKind,
    #[serde(default)]
    pub required: bool,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub description: Option<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CampaignPipelineGate {
    pub name: String,
    #[serde(default)]
    pub command: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub workdir: Option<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CampaignPipelineGatePolicy {
    #[serde(default)]
    pub require_standard: bool,
    #[serde(default)]
    pub required_gates: Vec<CampaignPipelineGate>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(try_from = "CampaignPipelineSpecUnchecked", deny_unknown_fields)]
pub struct CampaignPipelineSpec {
    pub pipeline_id: String,
    pub version: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub objective: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub project_key: Option<String>,
    #[serde(default)]
    pub continue_on_error: bool,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub gate_policy: Option<CampaignPipelineGatePolicy>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub metadata: Option<Value>,
    #[serde(default)]
    pub connections: Vec<CampaignPipelineConnection>,
    pub tasks: Vec<CampaignPipelineTaskRef>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct CampaignPipelineSpecUnchecked {
    pipeline_id: String,
    version: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    objective: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    project_key: Option<String>,
    #[serde(default)]
    continue_on_error: bool,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    gate_policy: Option<CampaignPipelineGatePolicy>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    metadata: Option<Value>,
    #[serde(default)]
    connections: Vec<CampaignPipelineConnection>,
    #[serde(default)]
    tasks: Vec<CampaignPipelineTaskRef>,
}

impl TryFrom<CampaignPipelineSpecUnchecked> for CampaignPipelineSpec {
    type Error = String;

    fn try_from(value: CampaignPipelineSpecUnchecked) -> Result<Self, Self::Error> {
        if value.pipeline_id.trim().is_empty() {
            return Err(String::from(
                "campaign_pipeline_spec pipeline_id must not be empty",
            ));
        }
        if value.version.trim().is_empty() {
            return Err(String::from(
                "campaign_pipeline_spec version must not be empty",
            ));
        }
        if value.tasks.is_empty() {
            return Err(String::from(
                "campaign_pipeline_spec must include at least one task",
            ));
        }
        for task in &value.tasks {
            if task.task_id.trim().is_empty() {
                return Err(String::from(
                    "campaign_pipeline_spec task_id must not be empty",
                ));
            }
            if task.task_artifact.trim().is_empty() {
                return Err(String::from(
                    "campaign_pipeline_spec task_artifact must not be empty",
                ));
            }
        }
        if let Some(gate_policy) = &value.gate_policy {
            for gate in &gate_policy.required_gates {
                if gate.name.trim().is_empty() {
                    return Err(String::from(
                        "campaign_pipeline_spec gate name must not be empty",
                    ));
                }
            }
        }

        Ok(Self {
            pipeline_id: value.pipeline_id,
            version: value.version,
            objective: value.objective,
            project_key: value.project_key,
            continue_on_error: value.continue_on_error,
            gate_policy: value.gate_policy,
            metadata: value.metadata,
            connections: value.connections,
            tasks: value.tasks,
        })
    }
}
