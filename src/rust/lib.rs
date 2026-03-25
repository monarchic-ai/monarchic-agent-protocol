pub const PROTOCOL_VERSION: &str = "v1";

pub mod monarchic {
    pub mod agent_protocol {
        pub mod v1 {
            include!(concat!(env!("OUT_DIR"), "/monarchic.agent_protocol.v1.rs"));
        }
    }
}

pub use monarchic::agent_protocol::v1::{
    AcceptanceCriteria, AckCancellationRequest, AckCancellationResponse, AcquireLeaseRequest,
    AcquireLeaseResponse, AgentRole, Artifact, CancellationIntent, DatasetRef, EvalResult,
    Event, ExecutionReceipt, ExperimentSpec, FailureClass, FailureDetail, GateResult,
    HeartbeatRequest, HeartbeatResponse, LeaseAssignment, LeaseRef, LeaseStatus, Plan,
    PlanProvenance, PlanStatus, PlanStep, Provenance, RegisterRunnerRequest,
    RegisterRunnerResponse, RenewLeaseRequest, RenewLeaseResponse, ReportStepOutcomeRequest,
    ReportStepOutcomeResponse, ReportStepProgressRequest, ReportStepProgressResponse,
    ReportStepStartedRequest, ReportStepStartedResponse, RoleProvenance, RunContext,
    RunnerCapabilities, Task,
};
