use std::{fs, path::PathBuf};

use monarchic_agent_protocol::durable_authority::{
    FencingToken, Lease, LeaseRejectionReason, ManualOverrideRecord, RecoveryEvent,
    RunLifecycleState, StepLifecycleState,
};
use serde::{de::DeserializeOwned, Serialize};
use serde_json::Value;

fn fixture_path(relative: &str) -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("fixtures")
        .join("durable_authority")
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
fn fencing_token_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<FencingToken>("fencing_token.minimal.json");
}

#[test]
fn lease_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<Lease>("lease.minimal.json");
}

#[test]
fn run_lifecycle_state_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<RunLifecycleState>("run_lifecycle_state.executing.json");
}

#[test]
fn step_lifecycle_state_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<StepLifecycleState>("step_lifecycle_state.leased.json");
}

#[test]
fn lease_rejection_reason_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<LeaseRejectionReason>(
        "lease_rejection_reason.stale_fencing_token.json",
    );
    assert_fixture_round_trip::<LeaseRejectionReason>(
        "lease_rejection_reason.lease_superseded.json",
    );
}

#[test]
fn recovery_event_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<RecoveryEvent>("recovery_event.lease_rejected.json");
    assert_fixture_round_trip::<RecoveryEvent>("recovery_event.cancellation_requested.json");
    assert_fixture_round_trip::<RecoveryEvent>("recovery_event.cancellation_acknowledged.json");
}

#[test]
fn recovery_replay_fixture_round_trips_canonically() {
    let source = read_fixture("recovery_events.restart.jsonl");
    let canonical = source
        .lines()
        .filter(|line| !line.trim().is_empty())
        .map(|line| {
            let parsed: RecoveryEvent = serde_json::from_str(line).expect("deserialize event line");
            serde_json::to_string(&parsed).expect("serialize event line")
        })
        .collect::<Vec<_>>()
        .join("\n")
        + "\n";
    assert_eq!(canonical, source);
}

#[test]
fn manual_override_record_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<ManualOverrideRecord>(
        "manual_override_record.approve_publication.json",
    );
}

#[test]
fn lease_rejects_invalid_status() {
    let mut value = load_fixture_value("lease.minimal.json");
    value["status"] = Value::String(String::from("mystery"));
    assert!(serde_json::from_value::<Lease>(value).is_err());
}

#[test]
fn recovery_event_rejects_invalid_lease_rejection_reason() {
    let mut value = load_fixture_value("recovery_event.lease_rejected.json");
    value["lease_rejection_reason"] = Value::String(String::from("bad_reason"));
    assert!(serde_json::from_value::<RecoveryEvent>(value).is_err());
}

#[test]
fn recovery_event_rejects_missing_contract_version() {
    let mut value = load_fixture_value("recovery_event.lease_rejected.json");
    value
        .as_object_mut()
        .expect("recovery event object")
        .remove("contract_version");
    assert!(serde_json::from_value::<RecoveryEvent>(value).is_err());
}

#[test]
fn manual_override_record_defaults_contract_version_when_missing() {
    let mut value = load_fixture_value("manual_override_record.approve_publication.json");
    value
        .as_object_mut()
        .expect("manual override object")
        .remove("contract_version");
    let parsed: ManualOverrideRecord =
        serde_json::from_value(value).expect("deserialize manual override without version");

    assert_eq!(
        parsed.contract_version,
        monarchic_agent_protocol::durable_authority::DURABLE_AUTHORITY_CONTRACT_VERSION
    );
}

#[test]
fn manual_override_record_rejects_unspecified_action() {
    let mut value = load_fixture_value("manual_override_record.approve_publication.json");
    value["action"] = Value::String(String::from("unspecified"));
    assert!(serde_json::from_value::<ManualOverrideRecord>(value).is_err());
}

#[test]
fn manual_override_record_rejects_non_future_expiration() {
    let mut value = load_fixture_value("manual_override_record.approve_publication.json");
    value["expires_at_ms"] = value["created_at_ms"].clone();
    assert!(serde_json::from_value::<ManualOverrideRecord>(value).is_err());
}
