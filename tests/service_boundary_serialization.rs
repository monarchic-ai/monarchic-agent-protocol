use std::{fs, path::PathBuf};

use monarchic_agent_protocol::service_boundary::{
    AuditExportManifest, AuthContext, ControlPlaneQueueJob, PrincipalRef, TenantRef, UsageRecord,
};
use serde::{de::DeserializeOwned, Serialize};
use serde_json::Value;

fn fixture_path(relative: &str) -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("fixtures")
        .join("service_boundary")
        .join("v1")
        .join(relative)
}

fn read_fixture(relative: &str) -> String {
    fs::read_to_string(fixture_path(relative)).expect("read fixture")
}

fn canonical_json<T>(value: &T) -> String
where
    T: Serialize,
{
    let mut json = serde_json::to_string_pretty(value).expect("serialize fixture");
    json.push('\n');
    json
}

fn assert_fixture_round_trip<T>(relative: &str)
where
    T: DeserializeOwned + Serialize,
{
    let source = read_fixture(relative);
    let parsed: T = serde_json::from_str(&source).expect("deserialize fixture");
    assert_eq!(canonical_json(&parsed), source);
}

fn load_fixture_value(relative: &str) -> Value {
    serde_json::from_str(&read_fixture(relative)).expect("deserialize fixture value")
}

#[test]
fn principal_ref_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<PrincipalRef>("principal_ref.minimal.json");
}

#[test]
fn tenant_ref_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<TenantRef>("tenant_ref.minimal.json");
}

#[test]
fn auth_context_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<AuthContext>("auth_context.minimal.json");
}

#[test]
fn auth_context_defaults_contract_version_when_missing() {
    let mut value = load_fixture_value("auth_context.minimal.json");
    value
        .as_object_mut()
        .expect("auth_context object")
        .remove("contract_version");
    let parsed: AuthContext =
        serde_json::from_value(value).expect("deserialize auth context without version");

    assert_eq!(
        parsed.contract_version,
        monarchic_agent_protocol::service_boundary::SERVICE_BOUNDARY_CONTRACT_VERSION
    );
}

#[test]
fn auth_context_rejects_unspecified_mechanism() {
    let mut value = load_fixture_value("auth_context.minimal.json");
    value["mechanism"] = Value::String(String::from("unspecified"));
    assert!(serde_json::from_value::<AuthContext>(value).is_err());
}

#[test]
fn usage_record_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<UsageRecord>("usage_record.minimal.json");
}

#[test]
fn usage_record_rejects_unspecified_unit() {
    let mut value = load_fixture_value("usage_record.minimal.json");
    value["unit"] = Value::String(String::from("unspecified"));
    assert!(serde_json::from_value::<UsageRecord>(value).is_err());
}

#[test]
fn audit_export_manifest_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<AuditExportManifest>("audit_export_manifest.minimal.json");
}

#[test]
fn audit_export_manifest_rejects_missing_artifacts() {
    let mut value = load_fixture_value("audit_export_manifest.minimal.json");
    value["artifact_descriptors"] = Value::Array(Vec::new());
    assert!(serde_json::from_value::<AuditExportManifest>(value).is_err());
}

#[test]
fn control_plane_queue_job_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<ControlPlaneQueueJob>("control_plane_queue_job.launch.json");
}

#[test]
fn control_plane_queue_job_defaults_contract_version_when_missing() {
    let mut value = load_fixture_value("control_plane_queue_job.launch.json");
    value
        .as_object_mut()
        .expect("queue job object")
        .remove("contract_version");
    let parsed: ControlPlaneQueueJob =
        serde_json::from_value(value).expect("deserialize queue job without version");

    assert_eq!(
        parsed.contract_version,
        monarchic_agent_protocol::service_boundary::CONTROL_PLANE_QUEUE_JOB_CONTRACT_VERSION
    );
}

#[test]
fn control_plane_queue_job_rejects_mismatched_queue_names() {
    let mut value = load_fixture_value("control_plane_queue_job.launch.json");
    value["dispatch"]["queue"] = Value::String(String::from("other.queue"));
    assert!(serde_json::from_value::<ControlPlaneQueueJob>(value).is_err());
}

#[test]
fn control_plane_queue_job_rejects_mismatched_snapshot_scope() {
    let mut value = load_fixture_value("control_plane_queue_job.launch.json");
    value["run_snapshot"]["tenantId"] = Value::String(String::from("other-tenant"));
    assert!(serde_json::from_value::<ControlPlaneQueueJob>(value).is_err());
}

#[test]
fn control_plane_queue_job_rejects_mismatched_auth_context_tenant() {
    let mut value = load_fixture_value("control_plane_queue_job.launch.json");
    value["auth_context"]["tenant"]["tenant_id"] = Value::String(String::from("other-tenant"));
    assert!(serde_json::from_value::<ControlPlaneQueueJob>(value).is_err());
}
