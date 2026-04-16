mod client_boundary_support;

use client_boundary_support::{load_fixture_value, read_fixture};
use monarchic_agent_protocol::client_boundary::{
    BlockedOutcome, BootstrapPlan, BootstrapPlanningContext, BootstrapPlanningMode,
    CampaignPipelineSpec, DigestManifest, ExecutionReceipt, Intent, IntentClass, Plan,
    PublicationAction, RerunExecutionResult, RerunScope, RunEventRecord, Task, TaskMessage,
    TaskMessageKind, VerificationReceipt,
};
use serde_json::Value;

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
fn bootstrap_plan_rejects_invalid_planning_mode() {
    let mut value = load_fixture_value("bootstrap_plan.minimal.json");
    value["planning_mode"] = Value::String(String::from("maybe_later"));
    assert!(serde_json::from_value::<BootstrapPlan>(value).is_err());
}

#[test]
fn bootstrap_plan_uses_typed_planning_mode() {
    let value = load_fixture_value("bootstrap_plan.minimal.json");
    let parsed: BootstrapPlan = serde_json::from_value(value).expect("deserialize bootstrap plan");

    assert_eq!(
        parsed.planning_mode,
        BootstrapPlanningMode::DirectTemplateFill
    );
}

#[test]
fn bootstrap_planning_context_rejects_missing_planning_mode() {
    let mut value = load_fixture_value("bootstrap_planning_context.minimal.json");
    value
        .as_object_mut()
        .expect("bootstrap planning context object")
        .remove("planning_mode");
    assert!(serde_json::from_value::<BootstrapPlanningContext>(value).is_err());
}

#[test]
fn bootstrap_planning_context_uses_typed_planning_mode() {
    let value = load_fixture_value("bootstrap_planning_context.minimal.json");
    let parsed: BootstrapPlanningContext =
        serde_json::from_value(value).expect("deserialize bootstrap planning context");

    assert_eq!(
        parsed.planning_mode,
        BootstrapPlanningMode::DirectTemplateFill
    );
}

#[test]
fn task_message_rejects_invalid_kind() {
    let mut value = load_fixture_value("task_message.clarification_request.json");
    value["kind"] = Value::String(String::from("clarification_reply"));
    assert!(serde_json::from_value::<TaskMessage>(value).is_err());
}

#[test]
fn task_message_reply_to_requires_clarification_response_kind() {
    let mut value = load_fixture_value("task_message.clarification_request.json");
    value["reply_to"] = Value::String(String::from("msg-1"));
    assert!(serde_json::from_value::<TaskMessage>(value).is_err());
}

#[test]
fn task_message_uses_typed_kind() {
    let value = load_fixture_value("task_message.clarification_request.json");
    let parsed: TaskMessage = serde_json::from_value(value).expect("deserialize task message");

    assert_eq!(parsed.kind, TaskMessageKind::ClarificationRequest);
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

#[test]
fn publication_action_defaults_contract_version_when_missing() {
    let mut value = load_fixture_value("publication_action.open_pr.json");
    value
        .as_object_mut()
        .expect("publication action object")
        .remove("contract_version");
    let parsed: PublicationAction =
        serde_json::from_value(value).expect("deserialize publication action without version");

    assert_eq!(
        parsed.contract_version,
        monarchic_agent_protocol::PROTOCOL_VERSION
    );
}

#[test]
fn publication_action_rejects_unspecified_kind() {
    let mut value = load_fixture_value("publication_action.open_pr.json");
    value["kind"] = Value::String(String::from("unspecified"));
    assert!(serde_json::from_value::<PublicationAction>(value).is_err());
}

#[test]
fn publication_action_rejects_blocked_without_reason() {
    let mut value = load_fixture_value("publication_action.open_pr.json");
    value["status"] = Value::String(String::from("blocked"));
    value
        .as_object_mut()
        .expect("publication action object")
        .remove("failure_reason");
    assert!(serde_json::from_value::<PublicationAction>(value).is_err());
}

#[test]
fn publication_action_requires_pr_ref_for_applied_pr_action() {
    let mut value = load_fixture_value("publication_action.open_pr.json");
    value["status"] = Value::String(String::from("applied"));
    value
        .as_object_mut()
        .expect("publication action object")
        .remove("pull_request");
    assert!(serde_json::from_value::<PublicationAction>(value).is_err());
}
