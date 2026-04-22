use serde::{Deserialize, Serialize};
use serde_json::Value;

use crate::{
    client_boundary_types::artifact::ArtifactDescriptor, version::SERVICE_BOUNDARY_CONTRACT_VERSION,
};

pub const CONTROL_PLANE_QUEUE_JOB_CONTRACT_VERSION: &str = "monarchic.control-plane.queue-job.v1";

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
        validate_compact_field("principal_ref principal_id", &value.principal_id)?;
        validate_compact_field("principal_ref provider", &value.provider)?;

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
        validate_compact_field("tenant_ref tenant_id", &value.tenant_id)?;

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
        validate_compact_field("auth_context contract_version", &value.contract_version)?;
        validate_compact_field("auth_context auth_context_id", &value.auth_context_id)?;
        if value.mechanism == AuthMechanism::Unspecified {
            return Err(String::from(
                "auth_context mechanism must not be unspecified",
            ));
        }
        validate_compact_field("auth_context credential_id", &value.credential_id)?;
        for scope in &value.scopes {
            validate_compact_field("auth_context scope", scope)?;
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

fn validate_compact_field(label: &str, value: &str) -> Result<(), String> {
    if value.trim().is_empty() {
        return Err(format!("{label} must not be empty"));
    }
    if value.chars().any(char::is_whitespace) {
        return Err(format!("{label} must not contain whitespace"));
    }
    Ok(())
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

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum ControlPlaneWorkflowKind {
    Bootstrap,
    CampaignDraft,
    CampaignExecution,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum ControlPlaneRunStatus {
    Requested,
    Validated,
    Queued,
    Assigned,
    Running,
    Blocked,
    ReviewRequired,
    Completed,
    Failed,
    Cancelled,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum ControlPlaneDispatchSource {
    Api,
    ControlPlane,
    Recovery,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "ControlPlaneDispatchRequestUnchecked", deny_unknown_fields)]
pub struct ControlPlaneDispatchRequest {
    pub tenant_id: String,
    pub project_key: String,
    pub run_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub task_id: Option<String>,
    pub workflow: ControlPlaneWorkflowKind,
    pub queue: String,
    pub run_status: ControlPlaneRunStatus,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub task_status: Option<ControlPlaneRunStatus>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct ControlPlaneDispatchRequestUnchecked {
    tenant_id: String,
    project_key: String,
    run_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    task_id: Option<String>,
    workflow: ControlPlaneWorkflowKind,
    queue: String,
    run_status: ControlPlaneRunStatus,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    task_status: Option<ControlPlaneRunStatus>,
}

impl TryFrom<ControlPlaneDispatchRequestUnchecked> for ControlPlaneDispatchRequest {
    type Error = String;

    fn try_from(value: ControlPlaneDispatchRequestUnchecked) -> Result<Self, Self::Error> {
        if value.tenant_id.trim().is_empty() {
            return Err(String::from(
                "control_plane_dispatch_request tenant_id must not be empty",
            ));
        }
        if value.tenant_id.chars().any(char::is_whitespace) {
            return Err(String::from(
                "control_plane_dispatch_request tenant_id must not contain whitespace",
            ));
        }
        if value.project_key.trim().is_empty() {
            return Err(String::from(
                "control_plane_dispatch_request project_key must not be empty",
            ));
        }
        if value.project_key.chars().any(char::is_whitespace) {
            return Err(String::from(
                "control_plane_dispatch_request project_key must not contain whitespace",
            ));
        }
        if value.run_id.trim().is_empty() {
            return Err(String::from(
                "control_plane_dispatch_request run_id must not be empty",
            ));
        }
        if value.run_id.chars().any(char::is_whitespace) {
            return Err(String::from(
                "control_plane_dispatch_request run_id must not contain whitespace",
            ));
        }
        if value
            .task_id
            .as_deref()
            .is_some_and(|task_id| task_id.trim().is_empty())
        {
            return Err(String::from(
                "control_plane_dispatch_request task_id must not be empty when provided",
            ));
        }
        if value
            .task_id
            .as_deref()
            .is_some_and(|task_id| task_id.chars().any(char::is_whitespace))
        {
            return Err(String::from(
                "control_plane_dispatch_request task_id must not contain whitespace when provided",
            ));
        }
        if value.queue.trim().is_empty() {
            return Err(String::from(
                "control_plane_dispatch_request queue must not be empty",
            ));
        }
        if value.queue.chars().any(char::is_whitespace) {
            return Err(String::from(
                "control_plane_dispatch_request queue must not contain whitespace",
            ));
        }

        Ok(Self {
            tenant_id: value.tenant_id,
            project_key: value.project_key,
            run_id: value.run_id,
            task_id: value.task_id,
            workflow: value.workflow,
            queue: value.queue,
            run_status: value.run_status,
            task_status: value.task_status,
        })
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(try_from = "ControlPlaneQueueJobUnchecked", deny_unknown_fields)]
pub struct ControlPlaneQueueJob {
    pub contract_version: String,
    pub queue: String,
    pub source: ControlPlaneDispatchSource,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub submitted_at_ms: Option<u64>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub auth_context: Option<AuthContext>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub run_record_path: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub run_snapshot: Option<Value>,
    pub dispatch: ControlPlaneDispatchRequest,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct ControlPlaneQueueJobUnchecked {
    #[serde(default = "default_control_plane_queue_job_contract_version")]
    contract_version: String,
    queue: String,
    source: ControlPlaneDispatchSource,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    submitted_at_ms: Option<u64>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    auth_context: Option<AuthContext>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    run_record_path: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    run_snapshot: Option<Value>,
    dispatch: ControlPlaneDispatchRequest,
}

impl TryFrom<ControlPlaneQueueJobUnchecked> for ControlPlaneQueueJob {
    type Error = String;

    fn try_from(value: ControlPlaneQueueJobUnchecked) -> Result<Self, Self::Error> {
        if value.contract_version.trim().is_empty() {
            return Err(String::from(
                "control_plane_queue_job contract_version must not be empty",
            ));
        }
        if value.contract_version.chars().any(char::is_whitespace) {
            return Err(format!(
                "unsupported control_plane_queue_job contract_version {}; expected {} without whitespace",
                value.contract_version, CONTROL_PLANE_QUEUE_JOB_CONTRACT_VERSION
            ));
        }
        if value.contract_version != CONTROL_PLANE_QUEUE_JOB_CONTRACT_VERSION {
            return Err(format!(
                "unsupported control_plane_queue_job contract_version {}; expected {}",
                value.contract_version, CONTROL_PLANE_QUEUE_JOB_CONTRACT_VERSION
            ));
        }
        if value.queue.trim().is_empty() {
            return Err(String::from(
                "control_plane_queue_job queue must not be empty",
            ));
        }
        if value.queue.chars().any(char::is_whitespace) {
            return Err(String::from(
                "control_plane_queue_job queue must not contain whitespace",
            ));
        }
        if value.queue != value.dispatch.queue {
            return Err(String::from(
                "control_plane_queue_job queue must match dispatch.queue",
            ));
        }
        if value
            .run_record_path
            .as_deref()
            .is_some_and(|path| path.trim().is_empty())
        {
            return Err(String::from(
                "control_plane_queue_job run_record_path must not be empty when provided",
            ));
        }
        if let Some(snapshot) = value.run_snapshot.as_ref() {
            validate_run_snapshot_scope(&value.dispatch, snapshot)?;
        }
        if let Some(auth_context) = value.auth_context.as_ref() {
            validate_queue_job_auth_context_scope(&value.dispatch, auth_context)?;
        }

        Ok(Self {
            contract_version: value.contract_version,
            queue: value.queue,
            source: value.source,
            submitted_at_ms: value.submitted_at_ms,
            auth_context: value.auth_context,
            run_record_path: value.run_record_path,
            run_snapshot: value.run_snapshot,
            dispatch: value.dispatch,
        })
    }
}

fn validate_queue_job_auth_context_scope(
    dispatch: &ControlPlaneDispatchRequest,
    auth_context: &AuthContext,
) -> Result<(), String> {
    if auth_context.tenant.tenant_id.trim().is_empty() {
        return Err(String::from(
            "control_plane_queue_job auth_context tenant_id must not be empty",
        ));
    }
    if auth_context
        .tenant
        .tenant_id
        .chars()
        .any(char::is_whitespace)
    {
        return Err(String::from(
            "control_plane_queue_job auth_context tenant_id must not contain whitespace",
        ));
    }
    if auth_context.tenant.tenant_id != dispatch.tenant_id {
        return Err(String::from(
            "control_plane_queue_job auth_context tenant_id must match dispatch.tenant_id",
        ));
    }
    Ok(())
}

fn validate_run_snapshot_scope(
    dispatch: &ControlPlaneDispatchRequest,
    snapshot: &Value,
) -> Result<(), String> {
    let Some(object) = snapshot.as_object() else {
        return Err(String::from(
            "control_plane_queue_job run_snapshot must be an object when provided",
        ));
    };
    validate_optional_snapshot_scope_field(object, "tenantId", "tenant_id", &dispatch.tenant_id)?;
    validate_optional_snapshot_scope_field(
        object,
        "projectKey",
        "project_key",
        &dispatch.project_key,
    )?;
    validate_optional_snapshot_scope_field(object, "runId", "run_id", &dispatch.run_id)?;
    Ok(())
}

fn validate_optional_snapshot_scope_field(
    object: &serde_json::Map<String, Value>,
    camel_key: &str,
    snake_key: &str,
    expected: &str,
) -> Result<(), String> {
    for key in [camel_key, snake_key] {
        if let Some(value) = object.get(key) {
            let Some(actual) = value.as_str() else {
                return Err(format!(
                    "control_plane_queue_job run_snapshot {key} must be a string when provided"
                ));
            };
            if actual != expected {
                return Err(format!(
                    "control_plane_queue_job run_snapshot {key} must match dispatch scope"
                ));
            }
        }
    }
    Ok(())
}

fn default_contract_version() -> String {
    SERVICE_BOUNDARY_CONTRACT_VERSION.to_string()
}

fn default_control_plane_queue_job_contract_version() -> String {
    CONTROL_PLANE_QUEUE_JOB_CONTRACT_VERSION.to_string()
}
