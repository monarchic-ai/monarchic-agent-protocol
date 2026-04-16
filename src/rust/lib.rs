mod authority;
#[path = "client_boundary/mod.rs"]
mod client_boundary_types;
mod service;
mod version;

/// Shared protocol schema version implemented by this crate.
pub const PROTOCOL_VERSION: &str = "v1";

/// Handwritten ergonomic wrappers for client-facing Rust consumers.
///
/// Use this module when you want validated, serde-friendly Rust types with
/// wrapper-owned defaults and compatibility behavior. Prefer these wrappers for
/// application code unless you specifically need the generated protobuf layout.
pub mod client_boundary {
    pub use crate::client_boundary_types::artifact::{
        ArtifactDescriptor, ArtifactKind, DigestManifest,
    };
    pub use crate::client_boundary_types::blocking::{BlockedOutcome, BlockedOutcomeScope};
    pub use crate::client_boundary_types::bootstrap::{
        BootstrapFilesystemPolicy, BootstrapIntent, BootstrapPlan, BootstrapPlanTask,
        BootstrapPlanningContext, BootstrapPlanningMode, BootstrapSkillBinding,
        BootstrapTemplateConnectionContext, BootstrapTemplateContext, BootstrapTemplateLaneContext,
        BootstrapTemplateSlotContext,
    };
    pub use crate::client_boundary_types::campaign::{
        CampaignPipelineConnection, CampaignPipelineConnectionKind, CampaignPipelineGate,
        CampaignPipelineGatePolicy, CampaignPipelineSpec, CampaignPipelineTaskRef,
        CampaignTaskSkillBinding,
    };
    pub use crate::client_boundary_types::event::{RunEventRecord, RunEventStream};
    pub use crate::client_boundary_types::intent::{Intent, IntentClass};
    pub use crate::client_boundary_types::message::{TaskMessage, TaskMessageKind};
    pub use crate::client_boundary_types::plan::{
        Plan, PlanStep, PlanStepKind, ReplanPolicy, ReplanStrategy, StepOutputExpectation,
    };
    pub use crate::client_boundary_types::publication::{
        PublicationAction, PublicationActionKind, PublicationActionStatus,
        PublicationPullRequestRef, PublicationTargetRef,
    };
    pub use crate::client_boundary_types::receipt::{
        ExecutionReceipt, ExecutionStatus, VerificationCheck, VerificationCheckStatus,
        VerificationReceipt, VerificationStatus,
    };
    pub use crate::client_boundary_types::review::{
        PrLifecycleState, RerunExecutionResult, RerunExecutionStatus, RerunScope,
        RerunSelectionStrategy, RerunTrigger, ReviewDecision, ReviewDecisionScope,
        ReviewDisposition,
    };
    pub use crate::client_boundary_types::task::{Task, TaskMcpBinding, TaskRunContext};
    pub use crate::version::CLIENT_BOUNDARY_CONTRACT_VERSION;
}

/// Handwritten durable-authority wrappers layered above the generated schema.
pub mod durable_authority {
    pub use crate::authority::{
        FencingToken, Lease, LeaseLifecycleState, LeaseRejectionReason, RecoveryEvent,
        RecoveryEventKind, RunLifecycleState, StepLifecycleState,
    };
    pub use crate::version::DURABLE_AUTHORITY_CONTRACT_VERSION;
}

/// Handwritten service-boundary wrappers layered above the generated schema.
pub mod service_boundary {
    pub use crate::service::{
        AuditExportManifest, AuthContext, AuthMechanism, PrincipalRef, TenantRef, UsageCategory,
        UsageRecord, UsageUnit,
    };
    pub use crate::version::SERVICE_BOUNDARY_CONTRACT_VERSION;
}

/// Generated protobuf schema modules.
///
/// Consume this surface when you need protobuf-native request/response messages
/// or exact wire-layout compatibility. Handwritten wrapper modules should not
/// depend on generated field layout accidents outside explicit conversion code.
pub mod monarchic {
    pub mod agent_protocol {
        pub mod v1 {
            include!(concat!(env!("OUT_DIR"), "/monarchic.agent_protocol.v1.rs"));
        }
    }
}

/// Flat reexports of generated protobuf types for existing downstream callers.
///
/// New code should prefer [`generated`] for clarity or one of the handwritten
/// wrapper modules above when wire-native protobuf structs are not required.
pub mod generated {
    pub use crate::monarchic::agent_protocol::v1::*;
}

pub use generated::{
    AcceptanceCriteria, AckCancellationRequest, AckCancellationResponse, AcquireLeaseRequest,
    AcquireLeaseResponse, AgentRole, ApplyControlPlaneReviewDispositionRequest,
    ApplyControlPlaneReviewDispositionResponse, ApplyControlPlaneRunActionRequest,
    ApplyControlPlaneRunActionResponse, Artifact, ArtifactDescriptor, ArtifactKind,
    AuditExportManifest, AuthContext, AuthMechanism, BlockedOutcome, BlockedOutcomeScope,
    BootstrapFilesystemPolicy, BootstrapIntent, BootstrapPlan, BootstrapPlanTask,
    BootstrapPlanningContext, BootstrapPlanningMode, BootstrapSkillBinding,
    BootstrapTemplateConnectionContext, BootstrapTemplateContext, BootstrapTemplateLaneContext,
    BootstrapTemplateSlotContext, CampaignPipelineConnection, CampaignPipelineConnectionKind,
    CampaignPipelineGate, CampaignPipelineGatePolicy, CampaignPipelineSpec,
    CampaignPipelineTaskRef, CancellationIntent, ControlPlaneRunAction,
    ControlPlaneRunActivityCursor, ControlPlaneRunSummary, ControlPlaneScope, DatasetRef,
    DigestManifest, EnsureControlPlaneWorkerRequest, EnsureControlPlaneWorkerResponse, EvalResult,
    Event, ExecutionReceipt, ExperimentSpec, FailureClass, FailureDetail, FencingToken, GateResult,
    GetControlPlaneRunActivityPageRequest, GetControlPlaneRunActivityPageResponse,
    GetControlPlaneRunRequest, GetControlPlaneRunResponse, HeartbeatRequest, HeartbeatResponse,
    Intent, IntentClass, Lease, LeaseAssignment, LeaseLifecycleState, LeaseRef,
    LeaseRejectionReason, LeaseStatus, ListControlPlaneRunsRequest, ListControlPlaneRunsResponse,
    Plan, PlanProvenance, PlanStatus, PlanStep, PlanStepKind, PrLifecycleState, PrincipalRef,
    Provenance, RecoveryEvent, RecoveryEventKind, RegisterRunnerRequest, RegisterRunnerResponse,
    RenewLeaseRequest, RenewLeaseResponse, ReplanPolicy, ReplanStrategy, ReportStepOutcomeRequest,
    ReportStepOutcomeResponse, ReportStepProgressRequest, ReportStepProgressResponse,
    ReportStepStartedRequest, ReportStepStartedResponse, RerunExecutionResult,
    RerunExecutionStatus, RerunScope, RerunSelectionStrategy, RerunTrigger, ResumeLeaseRequest,
    ResumeLeaseResponse, ReviewDecision, ReviewDecisionScope, ReviewDisposition, RoleProvenance,
    RunContext, RunEventRecord, RunEventStream, RunLifecycleState, RunOperatorSignals,
    RunnerCapabilities, StepLifecycleState, StepOutputExpectation, Task, TaskMessage,
    TaskMessageAck, TaskMessageKind, TenantRef, UsageCategory, UsageRecord, UsageUnit,
    VerificationCheck, VerificationCheckStatus, VerificationReceipt, VerificationStatus,
};
