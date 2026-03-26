use std::collections::BTreeMap;

use serde::{Deserialize, Serialize};
use serde_json::Value;

use crate::artifact::ArtifactDescriptor;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum BlockedOutcomeScope {
    Intent,
    Plan,
    Step,
    Run,
    Verification,
    Merge,
    Release,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct BlockedOutcome {
    pub code: String,
    pub scope: BlockedOutcomeScope,
    pub message: String,
    pub details: BTreeMap<String, Value>,
    pub blocking_artifacts: Vec<ArtifactDescriptor>,
}
