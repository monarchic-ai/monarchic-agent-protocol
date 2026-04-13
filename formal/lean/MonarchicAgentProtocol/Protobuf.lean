import MonarchicAgentProtocol.Basic

namespace MonarchicAgentProtocol

structure ProtoRunContext where
  version : String
  repo : String
  worktree : String
  image : String
  runner : String
  labels : List String
deriving DecidableEq, Repr

structure ProtoTask where
  version : String
  taskId : String
  role : CanonicalRole
  goal : String
  gatesRequired : List String
  runContext : ProtoRunContext
  roleId : String
deriving DecidableEq, Repr

def taskWellFormed (task : ProtoTask) : Prop :=
  NonEmptyString task.version ∧
  SafeClientBoundaryId task.taskId ∧
  (task.role ≠ .unspecified ∨ NonEmptyString task.roleId) ∧
  NonEmptyString task.goal ∧
  NonEmptyString task.runContext.repo

inductive ProtoPlanStatus
  | unspecified
  | draft
  | planned
  | executing
  | complete
  | bounded
  | failed
  | cancelled
  | unknown
deriving DecidableEq, Repr

inductive ProtoPlanStepKind
  | unspecified
  | analysis
  | execution
  | verification
  | review
  | merge
  | release
  | custom
deriving DecidableEq, Repr

structure ProtoPlanStep where
  stepId : String
  description : String
  dependsOn : List String
  taskId? : Option String
  kind : ProtoPlanStepKind
  policyTags : List String
deriving DecidableEq, Repr

structure ProtoPlan where
  contractVersion : String
  planId : String
  runId? : Option String
  objective : String
  status : ProtoPlanStatus
  steps : List ProtoPlanStep
  intentId? : Option String
deriving DecidableEq, Repr

def ProtoPlan.stepIds (plan : ProtoPlan) : List String :=
  plan.steps.map ProtoPlanStep.stepId

def ProtoPlan.stepTaskIds (plan : ProtoPlan) : List String :=
  plan.steps.filterMap ProtoPlanStep.taskId?

def planStepWellFormed (step : ProtoPlanStep) : Prop :=
  SafeClientBoundaryId step.stepId ∧
  NonEmptyString step.description ∧
  step.dependsOn.Nodup ∧
  (match step.taskId? with
   | none => True
   | some taskId => SafeClientBoundaryId taskId)

def protoPlanWellFormed (plan : ProtoPlan) : Prop :=
  NonEmptyString plan.contractVersion ∧
  SafeClientBoundaryId plan.planId ∧
  NonEmptyString plan.objective ∧
  plan.stepIds.Nodup ∧
  (∀ step, step ∈ plan.steps → planStepWellFormed step) ∧
  (∀ step, step ∈ plan.steps → ∀ dep, dep ∈ step.dependsOn → dep ∈ plan.stepIds)

structure ProtoExecutionReceipt where
  contractVersion : String
  runId : String
  planId : String
  status : ProtoPlanStatus
  generatedAtMs : Nat
deriving DecidableEq, Repr

def executionReceiptWellFormed (receipt : ProtoExecutionReceipt) : Prop :=
  NonEmptyString receipt.contractVersion ∧
  SafeClientBoundaryId receipt.runId ∧
  SafeClientBoundaryId receipt.planId

inductive BlockedOutcomeScope
  | unspecified
  | intent
  | plan
  | step
  | run
  | verification
  | merge
  | release
deriving DecidableEq, Repr

structure ProtoVerificationCheck where
  checkId : String
  status : VerificationCheckStatus
deriving DecidableEq, Repr

structure ProtoBlockedOutcome where
  code : String
  scope : BlockedOutcomeScope
deriving DecidableEq, Repr

structure ProtoVerificationReceipt where
  contractVersion : String
  verificationId : String
  planId : String
  executionReceiptIds : List String
  status : VerificationStatus
  checks : List ProtoVerificationCheck
  blockedOutcomes : List ProtoBlockedOutcome
deriving DecidableEq, Repr

def protoHasFailedOrBlockedCheck : List ProtoVerificationCheck → Prop
  | [] => False
  | check :: rest =>
      check.status = .failed ∨ check.status = .blocked ∨ protoHasFailedOrBlockedCheck rest

def verificationReceiptProtoConsistent (receipt : ProtoVerificationReceipt) : Prop :=
  NonEmptyString receipt.contractVersion ∧
  SafeClientBoundaryId receipt.verificationId ∧
  SafeClientBoundaryId receipt.planId ∧
  receipt.executionReceiptIds.Nodup ∧
  (∀ receiptId, receiptId ∈ receipt.executionReceiptIds → SafeClientBoundaryId receiptId) ∧
  (receipt.status = .passed → receipt.blockedOutcomes = ([] : List ProtoBlockedOutcome)) ∧
  (receipt.status = .blocked → receipt.blockedOutcomes ≠ ([] : List ProtoBlockedOutcome)) ∧
  (receipt.status = .failed →
    protoHasFailedOrBlockedCheck receipt.checks ∨
      receipt.blockedOutcomes ≠ ([] : List ProtoBlockedOutcome))

structure ProtoFencingToken where
  token : String
  issuedAtMs : Nat
  issuer : String
  scope : String
deriving DecidableEq, Repr

inductive ProtoLeaseLifecycleState
  | unspecified
  | issued
  | active
  | released
  | expired
  | cancelled
  | rejected
deriving DecidableEq, Repr

inductive ProtoLeaseRejectionReason
  | unspecified
  | staleFencingToken
  | expired
  | sessionMismatch
  | unknownLease
  | stepAlreadyTerminal
  | runNotExecutable
  | dependencyBlocked
  | leaseSuperseded
deriving DecidableEq, Repr

inductive ProtoRecoveryEventKind
  | unspecified
  | orchestratorStarted
  | stateReloaded
  | leaseRestored
  | leaseRejected
  | stepRequeued
  | stepBlocked
  | runRecovered
  | cancellationRequested
  | cancellationAcknowledged
deriving DecidableEq, Repr

structure ProtoLease where
  leaseId : String
  runId : String
  planId : String
  stepId : String
  taskId : String
  runnerId : String
  sessionId : String
  fencingToken : ProtoFencingToken
  issuedAtMs : Nat
  expiresAtMs : Nat
  status : ProtoLeaseLifecycleState
deriving DecidableEq, Repr

def leaseWellFormed (lease : ProtoLease) : Prop :=
  SafeClientBoundaryId lease.leaseId ∧
  SafeClientBoundaryId lease.runId ∧
  SafeClientBoundaryId lease.planId ∧
  SafeClientBoundaryId lease.stepId ∧
  SafeClientBoundaryId lease.taskId ∧
  NonEmptyString lease.runnerId ∧
  NonEmptyString lease.sessionId ∧
  NonEmptyString lease.fencingToken.token ∧
  lease.issuedAtMs ≤ lease.expiresAtMs

def recoveryEventStateConsistent
    (kind : ProtoRecoveryEventKind)
    (stepId? : Option String)
    (runState? : Option RunLifecycleState)
    (stepState? : Option StepLifecycleState)
    (reason? : Option ProtoLeaseRejectionReason) : Prop :=
  (kind = .leaseRejected → reason?.isSome) ∧
  ((kind = .stepRequeued ∨ kind = .stepBlocked ∨ kind = .leaseRestored) → stepId?.isSome) ∧
  (stepState?.isSome → stepId?.isSome) ∧
  (kind = .runRecovered → runState?.isSome)

structure ProtoRecoveryEvent where
  eventId : String
  runId : String
  planId : String
  stepId? : Option String
  kind : ProtoRecoveryEventKind
  occurredAtMs : Nat
  actor : String
  contractVersion : String
  runState? : Option RunLifecycleState
  stepState? : Option StepLifecycleState
  leaseRejectionReason? : Option ProtoLeaseRejectionReason
deriving DecidableEq, Repr

def recoveryEventWellFormed (event : ProtoRecoveryEvent) : Prop :=
  SafeClientBoundaryId event.eventId ∧
  SafeClientBoundaryId event.runId ∧
  SafeClientBoundaryId event.planId ∧
  NonEmptyString event.actor ∧
  NonEmptyString event.contractVersion ∧
  (match event.stepId? with
   | none => True
   | some stepId => SafeClientBoundaryId stepId) ∧
  recoveryEventStateConsistent
    event.kind event.stepId? event.runState? event.stepState? event.leaseRejectionReason?

def executionReceiptMatchesPlan (plan : ProtoPlan) (receipt : ProtoExecutionReceipt) : Prop :=
  receipt.planId = plan.planId

def verificationReceiptMatchesExecutionReceipts
    (plan : ProtoPlan)
    (verification : ProtoVerificationReceipt)
    (receipts : List (String × ProtoExecutionReceipt)) : Prop :=
  verification.planId = plan.planId ∧
  ∀ receiptId, receiptId ∈ verification.executionReceiptIds →
    ∃ receipt, (receiptId, receipt) ∈ receipts ∧ receipt.planId = plan.planId

def leaseMatchesPlan (plan : ProtoPlan) (lease : ProtoLease) : Prop :=
  lease.planId = plan.planId ∧
  lease.stepId ∈ plan.stepIds ∧
  lease.taskId ∈ plan.stepTaskIds

end MonarchicAgentProtocol
