import MonarchicAgentProtocol.Protobuf

namespace MonarchicAgentProtocol

abbrev ProtoSymbolName := String

/-
The totals below are derived from `schemas/v1/monarchic_agent_protocol.proto`.
They make the current proof boundary explicit inside Lean, even though the
formal model still intentionally covers only a focused subset of the schema.
-/
def protoMessageCountFromSchema : Nat := 96

def protoEnumCountFromSchema : Nat := 28

def formallyCoveredProtoMessages : List ProtoSymbolName :=
  [ "Task"
  , "Plan"
  , "PlanStep"
  , "ExecutionReceipt"
  , "VerificationCheck"
  , "BlockedOutcome"
  , "VerificationReceipt"
  , "FencingToken"
  , "LeaseRef"
  , "Lease"
  , "RecoveryEvent"
  , "AcquireLeaseRequest"
  , "AcquireLeaseResponse"
  , "RenewLeaseRequest"
  , "RenewLeaseResponse"
  , "ResumeLeaseRequest"
  , "ResumeLeaseResponse"
  , "ReportStepStartedRequest"
  , "ReportStepProgressRequest"
  , "ReportStepOutcomeRequest"
  , "AckCancellationRequest"
  , "AckCancellationResponse" ]

def formallyCoveredProtoEnums : List ProtoSymbolName :=
  [ "PlanStatus"
  , "PlanStepKind"
  , "VerificationStatus"
  , "VerificationCheckStatus"
  , "BlockedOutcomeScope"
  , "LeaseLifecycleState"
  , "RunLifecycleState"
  , "StepLifecycleState"
  , "LeaseRejectionReason"
  , "RecoveryEventKind" ]

def schemaCoverageSummary : Prop :=
  formallyCoveredProtoMessages.Nodup ∧
  formallyCoveredProtoEnums.Nodup ∧
  formallyCoveredProtoMessages.length ≤ protoMessageCountFromSchema ∧
  formallyCoveredProtoEnums.length ≤ protoEnumCountFromSchema

theorem schema_coverage_summary_holds : schemaCoverageSummary := by
  unfold schemaCoverageSummary
  native_decide

theorem covered_proto_messages_are_unique :
    formallyCoveredProtoMessages.Nodup := by
  exact schema_coverage_summary_holds.1

theorem covered_proto_enums_are_unique :
    formallyCoveredProtoEnums.Nodup := by
  exact schema_coverage_summary_holds.2.1

theorem formalization_is_partial_wrt_current_proto_surface :
    formallyCoveredProtoMessages.length < protoMessageCountFromSchema := by
  native_decide

theorem enum_formalization_is_partial_wrt_current_proto_surface :
    formallyCoveredProtoEnums.length < protoEnumCountFromSchema := by
  native_decide

example : "Lease" ∈ formallyCoveredProtoMessages := by native_decide

example : "RecoveryEvent" ∈ formallyCoveredProtoMessages := by native_decide

example : "ReportStepOutcomeRequest" ∈ formallyCoveredProtoMessages := by native_decide

example : "LeaseLifecycleState" ∈ formallyCoveredProtoEnums := by native_decide

example : "RunLifecycleState" ∈ formallyCoveredProtoEnums := by native_decide

example : "RecoveryEventKind" ∈ formallyCoveredProtoEnums := by native_decide

end MonarchicAgentProtocol
