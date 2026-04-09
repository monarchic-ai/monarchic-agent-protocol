mod artifact;
mod authority;
mod blocking;
mod bootstrap;
mod campaign;
mod event;
mod intent;
mod message;
mod plan;
mod receipt;
mod review;
mod service;
mod task;
mod version;

pub const PROTOCOL_VERSION: &str = "v1";

pub mod client_boundary {
    pub use crate::artifact::{ArtifactDescriptor, ArtifactKind, DigestManifest};
    pub use crate::blocking::{BlockedOutcome, BlockedOutcomeScope};
    pub use crate::bootstrap::{
        BootstrapFilesystemPolicy, BootstrapIntent, BootstrapPlan, BootstrapPlanTask,
        BootstrapPlanningContext, BootstrapPlanningMode, BootstrapSkillBinding,
        BootstrapTemplateConnectionContext, BootstrapTemplateContext, BootstrapTemplateLaneContext,
        BootstrapTemplateSlotContext,
    };
    pub use crate::campaign::{
        CampaignPipelineConnection, CampaignPipelineConnectionKind, CampaignPipelineGate,
        CampaignPipelineGatePolicy, CampaignPipelineSpec, CampaignPipelineTaskRef,
        CampaignTaskSkillBinding,
    };
    pub use crate::event::{RunEventRecord, RunEventStream};
    pub use crate::intent::{Intent, IntentClass};
    pub use crate::message::{TaskMessage, TaskMessageKind};
    pub use crate::plan::{
        Plan, PlanStep, PlanStepKind, ReplanPolicy, ReplanStrategy, StepOutputExpectation,
    };
    pub use crate::receipt::{
        ExecutionReceipt, ExecutionStatus, VerificationCheck, VerificationCheckStatus,
        VerificationReceipt, VerificationStatus,
    };
    pub use crate::review::{
        PrLifecycleState, RerunExecutionResult, RerunExecutionStatus, RerunScope,
        RerunSelectionStrategy, RerunTrigger, ReviewDecision, ReviewDecisionScope,
        ReviewDisposition,
    };
    pub use crate::task::{Task, TaskMcpBinding, TaskRunContext};
    pub use crate::version::CLIENT_BOUNDARY_CONTRACT_VERSION;
}

pub mod durable_authority {
    pub use crate::authority::{
        FencingToken, Lease, LeaseLifecycleState, LeaseRejectionReason, RecoveryEvent,
        RecoveryEventKind, RunLifecycleState, StepLifecycleState,
    };
    pub use crate::version::DURABLE_AUTHORITY_CONTRACT_VERSION;
}

pub mod service_boundary {
    pub use crate::service::{
        AuditExportManifest, AuthContext, AuthMechanism, PrincipalRef, TenantRef, UsageCategory,
        UsageRecord, UsageUnit,
    };
    pub use crate::version::SERVICE_BOUNDARY_CONTRACT_VERSION;
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
