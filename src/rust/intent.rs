use std::collections::BTreeMap;

use serde::{Deserialize, Serialize};
use serde_json::Value;

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
    pub constraints: BTreeMap<String, Value>,
    pub context_digest: String,
}
