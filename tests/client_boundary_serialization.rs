use std::{fs, path::PathBuf};

use monarchic_agent_protocol::client_boundary::{
    ArtifactDescriptor, BlockedOutcome, BootstrapIntent, BootstrapPlan, CampaignPipelineSpec,
    DigestManifest, ExecutionReceipt, Intent, IntentClass, Plan, PlanStep, PrLifecycleState,
    RerunExecutionResult, RerunScope, ReviewDecision, RunEventRecord, Task, VerificationReceipt,
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
fn bootstrap_intent_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<BootstrapIntent>("bootstrap_intent.minimal.json");
}

#[test]
fn bootstrap_plan_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<BootstrapPlan>("bootstrap_plan.minimal.json");
}

#[test]
fn campaign_pipeline_spec_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<CampaignPipelineSpec>("campaign_pipeline_spec.minimal.json");
}

#[test]
fn task_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<Task>("task.minimal.json");
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
fn bootstrap_plan_rejects_missing_task_milestone() {
    let mut value = load_fixture_value("bootstrap_plan.minimal.json");
    value["tasks"][0]
        .as_object_mut()
        .expect("bootstrap plan task object")
        .remove("task_milestone");
    assert!(serde_json::from_value::<BootstrapPlan>(value).is_err());
}

#[test]
fn campaign_pipeline_spec_rejects_missing_task_artifact() {
    let mut value = load_fixture_value("campaign_pipeline_spec.minimal.json");
    value["tasks"][0]
        .as_object_mut()
        .expect("campaign pipeline task object")
        .remove("task_artifact");
    assert!(serde_json::from_value::<CampaignPipelineSpec>(value).is_err());
}

#[test]
fn task_rejects_missing_task_id() {
    let mut value = load_fixture_value("task.minimal.json");
    value
        .as_object_mut()
        .expect("task object")
        .remove("task_id");
    assert!(serde_json::from_value::<Task>(value).is_err());
}

#[test]
fn task_rejects_mismatched_required_mcps_between_top_level_and_extensions() {
    let mut value = load_fixture_value("task.minimal.json");
    value["required_mcps"][0]["id"] = Value::String(String::from("repo-graph"));
    assert!(serde_json::from_value::<Task>(value).is_err());
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
fn digest_manifest_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<DigestManifest>("digest_manifest.minimal.json");
}

#[test]
fn run_event_record_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<RunEventRecord>("run_event_record.minimal.json");
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
fn verification_receipt_defaults_contract_version_when_missing() {
    let mut value = load_fixture_value("verification_receipt.minimal.json");
    value
        .as_object_mut()
        .expect("verification receipt object")
        .remove("contract_version");
    let parsed: VerificationReceipt =
        serde_json::from_value(value).expect("deserialize verification receipt without version");

    assert_eq!(
        parsed.contract_version,
        monarchic_agent_protocol::PROTOCOL_VERSION
    );
}

#[test]
fn verification_receipt_defaults_execution_receipt_ids_when_missing() {
    let mut value = load_fixture_value("verification_receipt.minimal.json");
    value
        .as_object_mut()
        .expect("verification receipt object")
        .remove("execution_receipt_ids");
    let parsed: VerificationReceipt = serde_json::from_value(value)
        .expect("deserialize verification receipt without execution ids");

    assert!(parsed.execution_receipt_ids.is_empty());
}

#[test]
fn passed_verification_receipt_rejects_blocked_outcomes() {
    let mut value = load_fixture_value("verification_receipt.minimal.json");
    value["blocked_outcomes"] = serde_json::to_value(vec![serde_json::from_str::<Value>(
        &read_fixture("blocked_outcome.minimal.json"),
    )
    .expect("blocked fixture")])
    .expect("serialize blocked outcomes");
    assert!(serde_json::from_value::<VerificationReceipt>(value).is_err());
}

#[test]
fn blocked_verification_receipt_requires_blocked_outcomes() {
    let mut value = load_fixture_value("verification_receipt.minimal.json");
    value["status"] = Value::String(String::from("blocked"));
    value["blocked_outcomes"] = Value::Array(Vec::new());
    assert!(serde_json::from_value::<VerificationReceipt>(value).is_err());
}

#[test]
fn failed_verification_receipt_requires_failure_signal() {
    let mut value = load_fixture_value("verification_receipt.minimal.json");
    value["status"] = Value::String(String::from("failed"));
    value["checks"][0]["status"] = Value::String(String::from("passed"));
    value["blocked_outcomes"] = Value::Array(Vec::new());
    assert!(serde_json::from_value::<VerificationReceipt>(value).is_err());
}

#[test]
fn review_decision_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<ReviewDecision>("review_decision.minimal.json");
}

#[test]
fn rerun_scope_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<RerunScope>("rerun_scope.minimal.json");
}

#[test]
fn rerun_execution_result_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<RerunExecutionResult>("rerun_execution_result.minimal.json");
}

#[test]
fn pr_lifecycle_state_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<PrLifecycleState>("pr_lifecycle_state.minimal.json");
}

#[test]
fn rerun_scope_rejects_invalid_trigger() {
    let mut value = load_fixture_value("rerun_scope.minimal.json");
    value["trigger"] = Value::String(String::from("nonsense"));
    assert!(serde_json::from_value::<RerunScope>(value).is_err());
}

#[test]
fn rerun_execution_result_rejects_invalid_status() {
    let mut value = load_fixture_value("rerun_execution_result.minimal.json");
    value["status"] = Value::String(String::from("nonsense"));
    assert!(serde_json::from_value::<RerunExecutionResult>(value).is_err());
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
fn digest_manifest_rejects_missing_artifacts() {
    let mut value = load_fixture_value("digest_manifest.minimal.json");
    value["artifact_descriptors"] = Value::Array(Vec::new());
    assert!(serde_json::from_value::<DigestManifest>(value).is_err());
}

#[test]
fn run_event_record_rejects_invalid_stream() {
    let mut value = load_fixture_value("run_event_record.minimal.json");
    value["stream"] = Value::String(String::from("nonsense"));
    assert!(serde_json::from_value::<RunEventRecord>(value).is_err());
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
