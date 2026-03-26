use std::{fs, path::PathBuf};

use monarchic_agent_protocol::client_boundary::{
    ArtifactDescriptor, BlockedOutcome, ExecutionReceipt, Intent, IntentClass, Plan, PlanStep,
    ReviewDecision, VerificationReceipt,
};
use serde::{de::DeserializeOwned, Serialize};
use serde_json::Value;

fn fixture_path(relative: &str) -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("fixtures")
        .join("client_boundary")
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
fn intent_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<Intent>("intent.minimal.json");
}

#[test]
fn intent_defaults_to_unspecified_class_when_missing() {
    let mut value = load_fixture_value("intent.minimal.json");
    value
        .as_object_mut()
        .expect("intent object")
        .remove("intent_class");
    let parsed: Intent = serde_json::from_value(value).expect("deserialize intent without class");

    assert_eq!(parsed.intent_class, IntentClass::Unspecified);
}

#[test]
fn intent_rejects_invalid_intent_class() {
    let mut value = load_fixture_value("intent.minimal.json");
    value["intent_class"] = Value::String(String::from("nonsense"));
    assert!(serde_json::from_value::<Intent>(value).is_err());
}

#[test]
fn artifact_descriptor_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<ArtifactDescriptor>("artifact_descriptor.minimal.json");
}

#[test]
fn blocked_outcome_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<BlockedOutcome>("blocked_outcome.minimal.json");
}

#[test]
fn plan_step_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<PlanStep>("plan_step.minimal.json");
}

#[test]
fn plan_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<Plan>("plan.minimal.json");
}

#[test]
fn execution_receipt_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<ExecutionReceipt>("execution_receipt.minimal.json");
}

#[test]
fn verification_receipt_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<VerificationReceipt>("verification_receipt.minimal.json");
}

#[test]
fn review_decision_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<ReviewDecision>("review_decision.minimal.json");
}

#[test]
fn execution_receipt_rejects_missing_required_field() {
    let mut value = load_fixture_value("execution_receipt.minimal.json");
    value
        .as_object_mut()
        .expect("receipt object")
        .remove("receipt_id");
    assert!(serde_json::from_value::<ExecutionReceipt>(value).is_err());
}

#[test]
fn blocked_outcome_rejects_invalid_scope() {
    let mut value = load_fixture_value("blocked_outcome.minimal.json");
    value["scope"] = Value::String(String::from("nonsense"));
    assert!(serde_json::from_value::<BlockedOutcome>(value).is_err());
}

#[test]
fn plan_rejects_missing_intent_id() {
    let mut value = load_fixture_value("plan.minimal.json");
    value
        .as_object_mut()
        .expect("plan object")
        .remove("intent_id");
    assert!(serde_json::from_value::<Plan>(value).is_err());
}
