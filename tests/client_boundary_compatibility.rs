use std::{collections::BTreeMap, fs, path::PathBuf};

use monarchic_agent_protocol::client_boundary::{
    ArtifactDescriptor, ArtifactKind, ExecutionReceipt, ExecutionStatus, Plan, PlanStep,
    PlanStepKind, ReplanPolicy, ReplanStrategy,
};
use serde::Deserialize;
use serde_json::Value;

fn compatibility_fixture_path(relative: &str) -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("fixtures")
        .join("client_boundary")
        .join("v0")
        .join(relative)
}

fn read_fixture(relative: &str) -> String {
    fs::read_to_string(compatibility_fixture_path(relative)).expect("read compatibility fixture")
}

#[derive(Debug, Deserialize)]
struct LegacyRoleProvenance {
    role_name: String,
    template_hash: String,
    render_hash: String,
}

#[derive(Debug, Deserialize)]
struct LegacyPlanProvenance {
    generated_by: String,
    policy_profile: Option<String>,
    generated_at_ms: u64,
    role: Option<LegacyRoleProvenance>,
}

#[derive(Debug, Deserialize)]
struct LegacyPlanStep {
    step_id: String,
    description: String,
    depends_on: Vec<String>,
    task_template: Value,
}

#[derive(Debug, Deserialize)]
struct LegacyPlan {
    contract_version: String,
    plan_id: String,
    run_id: Option<String>,
    objective: String,
    status: String,
    created_at_ms: u64,
    updated_at_ms: u64,
    provenance: LegacyPlanProvenance,
    steps: Vec<LegacyPlanStep>,
}

#[derive(Debug, Deserialize)]
struct LegacyExecutionReceipt {
    contract_version: String,
    run_id: String,
    plan_id: String,
    plan_hash: String,
    task_hashes: Vec<String>,
    artifact_hashes: Vec<String>,
    outcome_hash: String,
    status: String,
    generated_at_ms: u64,
}

fn value_to_btree_map(value: Value) -> BTreeMap<String, Value> {
    match value {
        Value::Object(map) => map.into_iter().collect(),
        _ => BTreeMap::new(),
    }
}

fn upgrade_legacy_plan(legacy: LegacyPlan) -> Plan {
    let _ = (
        &legacy.contract_version,
        &legacy.objective,
        &legacy.status,
        legacy.updated_at_ms,
        &legacy.provenance.policy_profile,
        legacy.provenance.generated_at_ms,
    );
    if let Some(role) = &legacy.provenance.role {
        let _ = (&role.role_name, &role.template_hash, &role.render_hash);
    }
    Plan {
        plan_id: legacy.plan_id.clone(),
        intent_id: legacy
            .run_id
            .clone()
            .unwrap_or_else(|| format!("legacy-intent-{}", legacy.plan_id)),
        plan_version: String::from("v1"),
        planner_version: legacy.provenance.generated_by,
        created_at: legacy.created_at_ms,
        steps: legacy
            .steps
            .into_iter()
            .map(|step| PlanStep {
                step_id: step.step_id.clone(),
                task_id: step.step_id,
                kind: PlanStepKind::Custom,
                description: step.description,
                dependencies: step.depends_on,
                inputs: value_to_btree_map(step.task_template),
                expected_outputs: Vec::new(),
                policy_tags: vec![String::from("legacy-compat")],
            })
            .collect(),
        replan_policy: ReplanPolicy {
            strategy: ReplanStrategy::Repair,
            max_attempts: 1,
        },
        input_digest: format!("legacy-plan:{}", legacy.plan_id),
    }
}

fn map_legacy_execution_status(status: &str) -> ExecutionStatus {
    match status {
        "complete" => ExecutionStatus::Completed,
        "failed" => ExecutionStatus::Failed,
        "cancelled" => ExecutionStatus::Cancelled,
        "blocked" => ExecutionStatus::Blocked,
        "running" => ExecutionStatus::Running,
        _ => ExecutionStatus::Pending,
    }
}

fn upgrade_legacy_execution_receipt(legacy: LegacyExecutionReceipt) -> ExecutionReceipt {
    let _ = &legacy.contract_version;
    let primary_task = legacy
        .task_hashes
        .first()
        .cloned()
        .unwrap_or_else(|| String::from("legacy-task"));
    ExecutionReceipt {
        receipt_id: format!("legacy-receipt:{}:{}", legacy.plan_id, legacy.run_id),
        plan_id: legacy.plan_id.clone(),
        step_id: String::from("legacy-step"),
        task_id: primary_task,
        runner_id: String::from("legacy-runner"),
        contract_version: String::from("v1"),
        status: map_legacy_execution_status(&legacy.status),
        started_at: legacy.generated_at_ms,
        finished_at: legacy.generated_at_ms,
        artifact_descriptors: legacy
            .artifact_hashes
            .into_iter()
            .enumerate()
            .map(|(index, digest)| ArtifactDescriptor {
                artifact_id: format!("legacy-artifact-{index}"),
                kind: ArtifactKind::Custom,
                digest,
                media_type: String::from("application/octet-stream"),
                logical_name: format!("legacy-artifact-{index}"),
                producer: String::from("legacy-runtime"),
                contract_version: String::from("v1"),
            })
            .collect(),
        event_digest: legacy.plan_hash,
        output_digest: legacy.outcome_hash,
    }
}

#[test]
fn upgrades_legacy_runtime_plan_fixture() {
    let legacy: LegacyPlan =
        serde_json::from_str(&read_fixture("legacy_plan.runtime.json")).expect("legacy plan");
    let upgraded = upgrade_legacy_plan(legacy);

    assert_eq!(upgraded.plan_id, "legacy-plan-123");
    assert_eq!(upgraded.intent_id, "legacy-run-123");
    assert_eq!(upgraded.plan_version, "v1");
    assert_eq!(upgraded.planner_version, "legacy-planner");
    assert_eq!(upgraded.steps.len(), 1);
    assert_eq!(upgraded.steps[0].policy_tags, vec![String::from("legacy-compat")]);
}

#[test]
fn upgrades_legacy_runtime_execution_receipt_fixture() {
    let legacy: LegacyExecutionReceipt =
        serde_json::from_str(&read_fixture("legacy_execution_receipt.runtime.json"))
            .expect("legacy receipt");
    let upgraded = upgrade_legacy_execution_receipt(legacy);

    assert_eq!(upgraded.plan_id, "legacy-plan-123");
    assert_eq!(upgraded.contract_version, "v1");
    assert_eq!(upgraded.status, ExecutionStatus::Completed);
    assert_eq!(upgraded.artifact_descriptors.len(), 1);
    assert_eq!(upgraded.event_digest, "sha256:legacy-plan");
    assert_eq!(upgraded.output_digest, "sha256:legacy-output");
}
