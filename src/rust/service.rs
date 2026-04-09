use serde::{Deserialize, Serialize};

use crate::{
    client_boundary_types::artifact::ArtifactDescriptor, version::SERVICE_BOUNDARY_CONTRACT_VERSION,
};

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "PrincipalRefUnchecked", deny_unknown_fields)]
pub struct PrincipalRef {
    pub principal_id: String,
    pub provider: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub display_name: Option<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct PrincipalRefUnchecked {
    principal_id: String,
    provider: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    display_name: Option<String>,
}

impl TryFrom<PrincipalRefUnchecked> for PrincipalRef {
    type Error = String;

    fn try_from(value: PrincipalRefUnchecked) -> Result<Self, Self::Error> {
        if value.principal_id.trim().is_empty() {
            return Err(String::from("principal_ref principal_id must not be empty"));
        }
        if value.provider.trim().is_empty() {
            return Err(String::from("principal_ref provider must not be empty"));
        }

        Ok(Self {
            principal_id: value.principal_id,
            provider: value.provider,
            display_name: value.display_name,
        })
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "TenantRefUnchecked", deny_unknown_fields)]
pub struct TenantRef {
    pub tenant_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub display_name: Option<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct TenantRefUnchecked {
    tenant_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    display_name: Option<String>,
}

impl TryFrom<TenantRefUnchecked> for TenantRef {
    type Error = String;

    fn try_from(value: TenantRefUnchecked) -> Result<Self, Self::Error> {
        if value.tenant_id.trim().is_empty() {
            return Err(String::from("tenant_ref tenant_id must not be empty"));
        }

        Ok(Self {
            tenant_id: value.tenant_id,
            display_name: value.display_name,
        })
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum AuthMechanism {
    #[default]
    Unspecified,
    SharedSecret,
    BearerToken,
    SignedToken,
    MutualTls,
    Custom,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "AuthContextUnchecked", deny_unknown_fields)]
pub struct AuthContext {
    pub contract_version: String,
    pub auth_context_id: String,
    pub principal: PrincipalRef,
    pub tenant: TenantRef,
    pub mechanism: AuthMechanism,
    pub credential_id: String,
    #[serde(default)]
    pub scopes: Vec<String>,
    pub issued_at: u64,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub expires_at: Option<u64>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct AuthContextUnchecked {
    #[serde(default = "default_contract_version")]
    contract_version: String,
    auth_context_id: String,
    principal: PrincipalRef,
    tenant: TenantRef,
    #[serde(default)]
    mechanism: AuthMechanism,
    credential_id: String,
    #[serde(default)]
    scopes: Vec<String>,
    issued_at: u64,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    expires_at: Option<u64>,
}

impl TryFrom<AuthContextUnchecked> for AuthContext {
    type Error = String;

    fn try_from(value: AuthContextUnchecked) -> Result<Self, Self::Error> {
        if value.contract_version.trim().is_empty() {
            return Err(String::from(
                "auth_context contract_version must not be empty",
            ));
        }
        if value.auth_context_id.trim().is_empty() {
            return Err(String::from(
                "auth_context auth_context_id must not be empty",
            ));
        }
        if value.mechanism == AuthMechanism::Unspecified {
            return Err(String::from(
                "auth_context mechanism must not be unspecified",
            ));
        }
        if value.credential_id.trim().is_empty() {
            return Err(String::from("auth_context credential_id must not be empty"));
        }
        if let Some(expires_at) = value.expires_at {
            if expires_at < value.issued_at {
                return Err(String::from(
                    "auth_context expires_at must not be earlier than issued_at",
                ));
            }
        }

        Ok(Self {
            contract_version: value.contract_version,
            auth_context_id: value.auth_context_id,
            principal: value.principal,
            tenant: value.tenant,
            mechanism: value.mechanism,
            credential_id: value.credential_id,
            scopes: value.scopes,
            issued_at: value.issued_at,
            expires_at: value.expires_at,
        })
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum UsageCategory {
    #[default]
    Unspecified,
    ControlPlane,
    Execution,
    Verification,
    AuditExport,
    Custom,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum UsageUnit {
    #[default]
    Unspecified,
    Requests,
    Milliseconds,
    Bytes,
    Tokens,
    Runs,
    Custom,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "UsageRecordUnchecked", deny_unknown_fields)]
pub struct UsageRecord {
    pub contract_version: String,
    pub usage_id: String,
    pub principal: PrincipalRef,
    pub tenant: TenantRef,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub run_id: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub plan_id: Option<String>,
    pub category: UsageCategory,
    pub metric_name: String,
    pub quantity: u64,
    pub unit: UsageUnit,
    pub recorded_at: u64,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct UsageRecordUnchecked {
    #[serde(default = "default_contract_version")]
    contract_version: String,
    usage_id: String,
    principal: PrincipalRef,
    tenant: TenantRef,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    run_id: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    plan_id: Option<String>,
    #[serde(default)]
    category: UsageCategory,
    metric_name: String,
    quantity: u64,
    #[serde(default)]
    unit: UsageUnit,
    recorded_at: u64,
}

impl TryFrom<UsageRecordUnchecked> for UsageRecord {
    type Error = String;

    fn try_from(value: UsageRecordUnchecked) -> Result<Self, Self::Error> {
        if value.contract_version.trim().is_empty() {
            return Err(String::from(
                "usage_record contract_version must not be empty",
            ));
        }
        if value.usage_id.trim().is_empty() {
            return Err(String::from("usage_record usage_id must not be empty"));
        }
        if value.category == UsageCategory::Unspecified {
            return Err(String::from(
                "usage_record category must not be unspecified",
            ));
        }
        if value.metric_name.trim().is_empty() {
            return Err(String::from("usage_record metric_name must not be empty"));
        }
        if value.quantity == 0 {
            return Err(String::from(
                "usage_record quantity must be greater than zero",
            ));
        }
        if value.unit == UsageUnit::Unspecified {
            return Err(String::from("usage_record unit must not be unspecified"));
        }

        Ok(Self {
            contract_version: value.contract_version,
            usage_id: value.usage_id,
            principal: value.principal,
            tenant: value.tenant,
            run_id: value.run_id,
            plan_id: value.plan_id,
            category: value.category,
            metric_name: value.metric_name,
            quantity: value.quantity,
            unit: value.unit,
            recorded_at: value.recorded_at,
        })
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "AuditExportManifestUnchecked", deny_unknown_fields)]
pub struct AuditExportManifest {
    pub contract_version: String,
    pub export_id: String,
    pub principal: PrincipalRef,
    pub tenant: TenantRef,
    pub run_id: String,
    pub plan_id: String,
    pub exported_at: u64,
    pub combined_digest: String,
    pub artifact_descriptors: Vec<ArtifactDescriptor>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct AuditExportManifestUnchecked {
    #[serde(default = "default_contract_version")]
    contract_version: String,
    export_id: String,
    principal: PrincipalRef,
    tenant: TenantRef,
    run_id: String,
    plan_id: String,
    exported_at: u64,
    combined_digest: String,
    artifact_descriptors: Vec<ArtifactDescriptor>,
}

impl TryFrom<AuditExportManifestUnchecked> for AuditExportManifest {
    type Error = String;

    fn try_from(value: AuditExportManifestUnchecked) -> Result<Self, Self::Error> {
        if value.contract_version.trim().is_empty() {
            return Err(String::from(
                "audit_export_manifest contract_version must not be empty",
            ));
        }
        if value.export_id.trim().is_empty() {
            return Err(String::from(
                "audit_export_manifest export_id must not be empty",
            ));
        }
        if value.run_id.trim().is_empty() {
            return Err(String::from(
                "audit_export_manifest run_id must not be empty",
            ));
        }
        if value.plan_id.trim().is_empty() {
            return Err(String::from(
                "audit_export_manifest plan_id must not be empty",
            ));
        }
        if value.combined_digest.trim().is_empty() {
            return Err(String::from(
                "audit_export_manifest combined_digest must not be empty",
            ));
        }
        if value.artifact_descriptors.is_empty() {
            return Err(String::from(
                "audit_export_manifest must include at least one artifact_descriptor",
            ));
        }

        Ok(Self {
            contract_version: value.contract_version,
            export_id: value.export_id,
            principal: value.principal,
            tenant: value.tenant,
            run_id: value.run_id,
            plan_id: value.plan_id,
            exported_at: value.exported_at,
            combined_digest: value.combined_digest,
            artifact_descriptors: value.artifact_descriptors,
        })
    }
}

fn default_contract_version() -> String {
    SERVICE_BOUNDARY_CONTRACT_VERSION.to_string()
}
