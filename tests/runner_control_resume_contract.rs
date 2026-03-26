use monarchic_agent_protocol::{
    FencingToken, Lease, LeaseLifecycleState, LeaseRef, LeaseRejectionReason, ResumeLeaseRequest,
    ResumeLeaseResponse, PROTOCOL_VERSION,
};
use prost::Message;

fn sample_lease_ref() -> LeaseRef {
    LeaseRef {
        lease_id: String::from("lease-123"),
        fencing_token: String::from("fencing-1"),
        run_id: String::from("run-123"),
        plan_id: String::from("plan-123"),
        step_id: String::from("step-123"),
        task_id: String::from("task-123"),
    }
}

fn sample_lease() -> Lease {
    Lease {
        lease_id: String::from("lease-123"),
        run_id: String::from("run-123"),
        plan_id: String::from("plan-123"),
        step_id: String::from("step-123"),
        task_id: String::from("task-123"),
        runner_id: String::from("runner-a"),
        session_id: String::from("session-a"),
        fencing_token: Some(FencingToken {
            token: String::from("fencing-2"),
            issued_at_ms: 101,
            issuer: String::from("orchestrator-a"),
            scope: String::from("lease/lease-123"),
            extensions: None,
        }),
        issued_at_ms: 101,
        expires_at_ms: 202,
        status: LeaseLifecycleState::LeaseActive as i32,
        extensions: None,
    }
}

#[test]
fn resume_lease_request_round_trips_over_protobuf_wire() {
    let request = ResumeLeaseRequest {
        contract_version: String::from(PROTOCOL_VERSION),
        runner_id: String::from("runner-a"),
        session_id: String::from("session-a"),
        lease: Some(sample_lease_ref()),
        extensions: None,
    };

    let encoded = request.encode_to_vec();
    let decoded = ResumeLeaseRequest::decode(encoded.as_slice()).expect("decode resume request");

    assert_eq!(decoded.contract_version, PROTOCOL_VERSION);
    assert_eq!(decoded.runner_id, "runner-a");
    assert_eq!(decoded.session_id, "session-a");
    assert_eq!(decoded.lease.expect("lease ref").step_id, "step-123");
}

#[test]
fn resume_lease_response_round_trips_superseded_rejection() {
    let response = ResumeLeaseResponse {
        contract_version: String::from(PROTOCOL_VERSION),
        orchestrator_id: String::from("orchestrator-a"),
        accepted: false,
        lease: Some(sample_lease()),
        expires_at_ms: 202,
        current_fencing_token: String::from("fencing-2"),
        reason: LeaseRejectionReason::LeaseRejectionLeaseSuperseded as i32,
        message: String::from("lease ownership moved to a newer fencing token"),
        extensions: None,
    };

    let encoded = response.encode_to_vec();
    let decoded =
        ResumeLeaseResponse::decode(encoded.as_slice()).expect("decode resume response");

    assert!(!decoded.accepted);
    assert_eq!(decoded.current_fencing_token, "fencing-2");
    assert_eq!(
        LeaseRejectionReason::try_from(decoded.reason).expect("reason enum"),
        LeaseRejectionReason::LeaseRejectionLeaseSuperseded
    );
    assert_eq!(decoded.lease.expect("lease").session_id, "session-a");
}
