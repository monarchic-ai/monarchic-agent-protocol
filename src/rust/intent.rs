use std::collections::BTreeMap;

use serde::{Deserialize, Serialize};
use serde_json::Value;

#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum IntentClass {
    #[default]
    Unspecified,
    Inspect,
    Validate,
    Execute,
    Verify,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Intent {
    pub intent_id: String,
    pub submitted_at: u64,
    pub submitter: String,
    pub policy_version: String,
    pub target_repo: String,
    pub target_ref: String,
    pub goal: String,
    #[serde(default)]
    pub intent_class: IntentClass,
    pub constraints: BTreeMap<String, Value>,
    pub context_digest: String,
}
