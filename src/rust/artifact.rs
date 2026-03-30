use serde::{Deserialize, Serialize};

use crate::version::CLIENT_BOUNDARY_CONTRACT_VERSION;

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

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "DigestManifestUnchecked", deny_unknown_fields)]
pub struct DigestManifest {
    pub contract_version: String,
    pub manifest_id: String,
    pub run_id: String,
    pub plan_id: String,
    pub created_at: u64,
    pub combined_digest: String,
    pub event_digest: String,
    pub artifact_descriptors: Vec<ArtifactDescriptor>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct DigestManifestUnchecked {
    #[serde(default = "default_contract_version")]
    contract_version: String,
    manifest_id: String,
    run_id: String,
    plan_id: String,
    created_at: u64,
    combined_digest: String,
    event_digest: String,
    artifact_descriptors: Vec<ArtifactDescriptor>,
}

fn default_contract_version() -> String {
    CLIENT_BOUNDARY_CONTRACT_VERSION.to_string()
}

impl TryFrom<DigestManifestUnchecked> for DigestManifest {
    type Error = String;

    fn try_from(value: DigestManifestUnchecked) -> Result<Self, Self::Error> {
        if value.contract_version.trim().is_empty() {
            return Err(String::from(
                "digest manifest contract_version must not be empty",
            ));
        }
        if value.manifest_id.trim().is_empty() {
            return Err(String::from(
                "digest manifest manifest_id must not be empty",
            ));
        }
        if value.run_id.trim().is_empty() {
            return Err(String::from("digest manifest run_id must not be empty"));
        }
        if value.plan_id.trim().is_empty() {
            return Err(String::from("digest manifest plan_id must not be empty"));
        }
        if value.combined_digest.trim().is_empty() {
            return Err(String::from(
                "digest manifest combined_digest must not be empty",
            ));
        }
        if value.event_digest.trim().is_empty() {
            return Err(String::from(
                "digest manifest event_digest must not be empty",
            ));
        }
        if value.artifact_descriptors.is_empty() {
            return Err(String::from(
                "digest manifest must include at least one artifact_descriptor",
            ));
        }

        Ok(Self {
            contract_version: value.contract_version,
            manifest_id: value.manifest_id,
            run_id: value.run_id,
            plan_id: value.plan_id,
            created_at: value.created_at,
            combined_digest: value.combined_digest,
            event_digest: value.event_digest,
            artifact_descriptors: value.artifact_descriptors,
        })
    }
}
