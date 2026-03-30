use monarchic_agent_protocol::{
    ApplyControlPlaneRunActionRequest, ApplyControlPlaneRunActionResponse, ControlPlaneRunAction,
    ControlPlaneRunActivityCursor, ControlPlaneRunSummary, ControlPlaneScope,
    GetControlPlaneRunActivityPageResponse, ListControlPlaneRunsRequest,
    ListControlPlaneRunsResponse, RunEventRecord, RunEventStream, RunLifecycleState,
    RunOperatorSignals, PROTOCOL_VERSION,
};
use prost::Message;

fn sample_scope() -> ControlPlaneScope {
    ControlPlaneScope {
        organization: Some(String::from("monarchic-ai")),
        user: Some(String::from("operator")),
        default_project: Some(String::from("project-a")),
    }
}

fn sample_run_summary() -> ControlPlaneRunSummary {
    ControlPlaneRunSummary {
        project_key: String::from("project-a"),
        run_id: String::from("run-123"),
        run_dir: Some(String::from("/srv/runs/run-123")),
        lifecycle_state: Some(RunLifecycleState::RunExecuting as i32),
        status: String::from("running"),
        updated_label: Some(String::from("2026-03-28 12:00:00 UTC")),
        updated_epoch: Some(1_774_762_400),
        meaningful_status: Some(String::from("progressing")),
        meaningful_score: Some(0.94),
        meaningful_reasons: vec![String::from("fresh activity")],
        total_runs: Some(4),
        total_success: Some(3),
        total_failed: Some(1),
        message_count: Some(2),
        unresolved_required_ack_count: Some(1),
        alert_stale: false,
        alert_low_score: false,
        operator_signals: Some(RunOperatorSignals {
            prompt_needed: true,
            prompt_summary: Some(String::from("awaiting operator confirmation")),
            pause_requested: false,
            interrupt_requested: false,
            cancel_requested: false,
        }),
    }
}

fn sample_run_event_record(sequence: u64) -> RunEventRecord {
    RunEventRecord {
        contract_version: String::from(PROTOCOL_VERSION),
        event_id: format!("evt-{sequence}"),
        run_id: String::from("run-123"),
        plan_id: String::from("plan-123"),
        sequence,
        stream: RunEventStream::Execution as i32,
        recorded_at: 1_774_762_400,
        step_id: Some(String::from("step-1")),
        task_id: Some(String::from("task-1")),
        event_type: String::from("task.progress"),
        status: String::from("running"),
        message: Some(String::from("still running")),
        artifact_ids: vec![String::from("artifact-1")],
    }
}

#[test]
fn list_control_plane_runs_request_round_trips_over_protobuf_wire() {
    let request = ListControlPlaneRunsRequest {
        contract_version: String::from(PROTOCOL_VERSION),
        scope: Some(sample_scope()),
        project_key: Some(String::from("project-a")),
        limit: Some(25),
        extensions: None,
        auth_context: None,
    };

    let encoded = request.encode_to_vec();
    let decoded =
        ListControlPlaneRunsRequest::decode(encoded.as_slice()).expect("decode list runs request");

    assert_eq!(decoded.contract_version, PROTOCOL_VERSION);
    assert_eq!(decoded.project_key.as_deref(), Some("project-a"));
    assert_eq!(decoded.limit, Some(25));
    assert_eq!(
        decoded.scope.expect("scope").default_project.as_deref(),
        Some("project-a")
    );
}

#[test]
fn get_control_plane_run_activity_page_response_round_trips_with_cursor() {
    let response = GetControlPlaneRunActivityPageResponse {
        contract_version: String::from(PROTOCOL_VERSION),
        records: vec![sample_run_event_record(40), sample_run_event_record(41)],
        next_cursor: Some(ControlPlaneRunActivityCursor {
            after_sequence: Some(41),
            resume_token: Some(String::from("cursor-41")),
        }),
        extensions: None,
    };

    let encoded = response.encode_to_vec();
    let decoded = GetControlPlaneRunActivityPageResponse::decode(encoded.as_slice())
        .expect("decode activity page response");

    assert_eq!(decoded.contract_version, PROTOCOL_VERSION);
    assert_eq!(decoded.records.len(), 2);
    assert_eq!(
        decoded.next_cursor.expect("cursor").resume_token.as_deref(),
        Some("cursor-41")
    );
}

#[test]
fn apply_control_plane_run_action_messages_round_trip_over_protobuf_wire() {
    let request = ApplyControlPlaneRunActionRequest {
        contract_version: String::from(PROTOCOL_VERSION),
        scope: Some(sample_scope()),
        run_id: String::from("run-123"),
        action: ControlPlaneRunAction::Interrupt as i32,
        reason: Some(String::from("operator requested stop")),
        extensions: None,
        auth_context: None,
    };
    let response = ApplyControlPlaneRunActionResponse {
        contract_version: String::from(PROTOCOL_VERSION),
        run_id: String::from("run-123"),
        action: ControlPlaneRunAction::Interrupt as i32,
        accepted: true,
        lifecycle_state: Some(RunLifecycleState::RunCancelling as i32),
        message: Some(String::from("interrupt accepted")),
        extensions: None,
    };
    let list_response = ListControlPlaneRunsResponse {
        contract_version: String::from(PROTOCOL_VERSION),
        runs: vec![sample_run_summary()],
        extensions: None,
    };

    let decoded_request =
        ApplyControlPlaneRunActionRequest::decode(request.encode_to_vec().as_slice())
            .expect("decode run action request");
    let decoded_response =
        ApplyControlPlaneRunActionResponse::decode(response.encode_to_vec().as_slice())
            .expect("decode run action response");
    let decoded_list =
        ListControlPlaneRunsResponse::decode(list_response.encode_to_vec().as_slice())
            .expect("decode list runs response");

    assert_eq!(decoded_request.run_id, "run-123");
    assert_eq!(
        ControlPlaneRunAction::try_from(decoded_request.action).expect("request action enum"),
        ControlPlaneRunAction::Interrupt
    );
    assert!(decoded_response.accepted);
    assert_eq!(
        decoded_response.lifecycle_state,
        Some(RunLifecycleState::RunCancelling as i32)
    );
    assert_eq!(decoded_list.runs.len(), 1);
    assert_eq!(decoded_list.runs[0].run_id, "run-123");
}
