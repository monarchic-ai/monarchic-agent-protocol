mod client_boundary_support;

use client_boundary_support::assert_fixture_round_trip;
use monarchic_agent_protocol::client_boundary::{
    ArtifactDescriptor, BlockedOutcome, BootstrapIntent, BootstrapPlan, BootstrapPlanningContext,
    CampaignPipelineSpec, DigestManifest, ExecutionReceipt, Intent, Plan, PlanStep,
    PrLifecycleState, PublicationAction, RerunExecutionResult, RerunScope, ReviewDecision,
    RunEventRecord, Task, TaskMessage, VerificationReceipt,
};

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
fn bootstrap_planning_context_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<BootstrapPlanningContext>(
        "bootstrap_planning_context.minimal.json",
    );
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
fn task_message_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<TaskMessage>("task_message.clarification_request.json");
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
fn publication_action_fixture_round_trips_canonically() {
    assert_fixture_round_trip::<PublicationAction>("publication_action.open_pr.json");
}
