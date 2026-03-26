use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum ArtifactKind {
    Plan,
    ExecutionReceipt,
    VerificationReceipt,
    EventLog,
    DigestManifest,
    ProofManifest,
    Patch,
    TestReport,
    BuildLog,
    Bundle,
    Custom,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ArtifactDescriptor {
    pub artifact_id: String,
    pub kind: ArtifactKind,
    pub digest: String,
    pub media_type: String,
    pub logical_name: String,
    pub producer: String,
    pub contract_version: String,
}
