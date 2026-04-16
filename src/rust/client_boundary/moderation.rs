use serde::{Deserialize, Serialize};

use super::blocking::BlockedOutcome;
use crate::version::CLIENT_BOUNDARY_CONTRACT_VERSION;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum ModerationDecisionScope {
    #[default]
    Unspecified,
    Intent,
    Plan,
    Step,
    Task,
    Artifact,
    Publication,
    Run,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum ModerationDisposition {
    #[default]
    Unspecified,
    Allow,
    Block,
    Escalate,
    RequestChanges,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(try_from = "ModerationDecisionUnchecked", deny_unknown_fields)]
pub struct ModerationDecision {
    pub contract_version: String,
    pub decision_id: String,
    pub run_id: String,
    pub plan_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub task_id: Option<String>,
    #[serde(default)]
    pub scope: ModerationDecisionScope,
    #[serde(default)]
    pub disposition: ModerationDisposition,
    pub actor: String,
    pub reason: String,
    #[serde(default)]
    pub policy_tags: Vec<String>,
    #[serde(default)]
    pub artifact_ids: Vec<String>,
    #[serde(default)]
    pub blocked_outcomes: Vec<BlockedOutcome>,
    pub created_at: u64,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct ModerationDecisionUnchecked {
    #[serde(default = "default_contract_version")]
    contract_version: String,
    decision_id: String,
    run_id: String,
    plan_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    task_id: Option<String>,
    #[serde(default)]
    scope: ModerationDecisionScope,
    #[serde(default)]
    disposition: ModerationDisposition,
    actor: String,
    reason: String,
    #[serde(default)]
    policy_tags: Vec<String>,
    #[serde(default)]
    artifact_ids: Vec<String>,
    #[serde(default)]
    blocked_outcomes: Vec<BlockedOutcome>,
    created_at: u64,
}

fn default_contract_version() -> String {
    CLIENT_BOUNDARY_CONTRACT_VERSION.to_string()
}

impl TryFrom<ModerationDecisionUnchecked> for ModerationDecision {
    type Error = String;

    fn try_from(value: ModerationDecisionUnchecked) -> Result<Self, Self::Error> {
        require_non_empty(
            "moderation decision contract_version",
            &value.contract_version,
        )?;
        require_non_empty("moderation decision decision_id", &value.decision_id)?;
        require_non_empty("moderation decision run_id", &value.run_id)?;
        require_non_empty("moderation decision plan_id", &value.plan_id)?;
        require_optional_non_empty("moderation decision task_id", value.task_id.as_deref())?;
        require_non_empty("moderation decision actor", &value.actor)?;
        require_non_empty("moderation decision reason", &value.reason)?;
        require_non_empty_items("moderation decision policy_tag", &value.policy_tags)?;
        require_non_empty_items("moderation decision artifact_id", &value.artifact_ids)?;

        if matches!(value.scope, ModerationDecisionScope::Unspecified) {
            return Err(String::from(
                "moderation decision scope must not be unspecified",
            ));
        }
        if matches!(value.disposition, ModerationDisposition::Unspecified) {
            return Err(String::from(
                "moderation decision disposition must not be unspecified",
            ));
        }
        if matches!(value.disposition, ModerationDisposition::Block)
            && value.blocked_outcomes.is_empty()
        {
            return Err(String::from(
                "blocked moderation decisions must include at least one blocked_outcome",
            ));
        }
        if matches!(value.disposition, ModerationDisposition::Allow)
            && !value.blocked_outcomes.is_empty()
        {
            return Err(String::from(
                "allow moderation decisions must not include blocked_outcomes",
            ));
        }

        Ok(Self {
            contract_version: value.contract_version,
            decision_id: value.decision_id,
            run_id: value.run_id,
            plan_id: value.plan_id,
            task_id: value.task_id,
            scope: value.scope,
            disposition: value.disposition,
            actor: value.actor,
            reason: value.reason,
            policy_tags: value.policy_tags,
            artifact_ids: value.artifact_ids,
            blocked_outcomes: value.blocked_outcomes,
            created_at: value.created_at,
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

fn require_non_empty_items(label: &str, values: &[String]) -> Result<(), String> {
    for value in values {
        require_non_empty(label, value)?;
    }
    Ok(())
}
