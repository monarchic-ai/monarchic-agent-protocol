mod authority;
mod artifact;
mod blocking;
mod intent;
mod plan;
mod receipt;
mod review;
mod version;

pub const PROTOCOL_VERSION: &str = "v1";

pub mod client_boundary {
    pub use crate::artifact::{ArtifactDescriptor, ArtifactKind};
    pub use crate::blocking::{BlockedOutcome, BlockedOutcomeScope};
    pub use crate::intent::Intent;
    pub use crate::plan::{
        Plan, PlanStep, PlanStepKind, ReplanPolicy, ReplanStrategy, StepOutputExpectation,
    };
    pub use crate::receipt::{
        ExecutionReceipt, ExecutionStatus, VerificationCheck, VerificationCheckStatus,
        VerificationReceipt, VerificationStatus,
    };
    pub use crate::review::{ReviewDecision, ReviewDecisionScope, ReviewDisposition};
    pub use crate::version::CLIENT_BOUNDARY_CONTRACT_VERSION;
}

pub mod durable_authority {
    pub use crate::authority::{
        FencingToken, Lease, LeaseLifecycleState, LeaseRejectionReason, RecoveryEvent,
        RecoveryEventKind, RunLifecycleState, StepLifecycleState,
    };
    pub use crate::version::DURABLE_AUTHORITY_CONTRACT_VERSION;
}

pub mod monarchic {
    pub mod agent_protocol {
        pub mod v1 {
            include!(concat!(env!("OUT_DIR"), "/monarchic.agent_protocol.v1.rs"));
        }
    }
}

pub use monarchic::agent_protocol::v1::{
    AcceptanceCriteria, AckCancellationRequest, AckCancellationResponse, AcquireLeaseRequest,
    AcquireLeaseResponse, AgentRole, Artifact, ArtifactKind, CancellationIntent, DatasetRef,
    EvalResult, Event, ExecutionReceipt, ExperimentSpec, FailureClass, FailureDetail,
    FencingToken, GateResult, HeartbeatRequest, HeartbeatResponse, Intent, Lease,
    LeaseAssignment, LeaseLifecycleState, LeaseRef, LeaseRejectionReason, LeaseStatus, Plan,
    PlanProvenance, PlanStatus, PlanStep, PlanStepKind, Provenance, RecoveryEvent,
    RecoveryEventKind, RegisterRunnerRequest, RegisterRunnerResponse, RenewLeaseRequest,
    RenewLeaseResponse, ReportStepOutcomeRequest, ReportStepOutcomeResponse,
    ReportStepProgressRequest, ReportStepProgressResponse, ReportStepStartedRequest,
    ReportStepStartedResponse, ReplanPolicy, ReplanStrategy, ResumeLeaseRequest,
    ResumeLeaseResponse, RoleProvenance, RunContext, RunLifecycleState, RunnerCapabilities,
    StepLifecycleState, StepOutputExpectation, Task,
};
