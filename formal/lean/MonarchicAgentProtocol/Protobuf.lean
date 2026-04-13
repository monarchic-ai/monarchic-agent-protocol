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

def ProtoFencingToken.AdvancesTo (older newer : ProtoFencingToken) : Prop :=
  older.scope = newer.scope ∧ older.issuedAtMs < newer.issuedAtMs

inductive ProtoLeaseLifecycleState
  | unspecified
  | issued
  | active
  | released
  | expired
  | cancelled
  | rejected
deriving DecidableEq, Repr

def ProtoLeaseLifecycleState.terminal : ProtoLeaseLifecycleState → Bool
  | .released => true
  | .expired => true
  | .cancelled => true
  | .rejected => true
  | _ => false

inductive ProtoRunLifecycleTransition : RunLifecycleState → RunLifecycleState → Prop
  | pendingExecuting : ProtoRunLifecycleTransition .pending .executing
  | executingPaused : ProtoRunLifecycleTransition .executing .paused
  | executingCancelling : ProtoRunLifecycleTransition .executing .cancelling
  | executingFailed : ProtoRunLifecycleTransition .executing .failed
  | executingComplete : ProtoRunLifecycleTransition .executing .complete
  | executingBlocked : ProtoRunLifecycleTransition .executing .blocked
  | pausedExecuting : ProtoRunLifecycleTransition .paused .executing
  | pausedCancelling : ProtoRunLifecycleTransition .paused .cancelling
  | cancellingCancelled : ProtoRunLifecycleTransition .cancelling .cancelled

inductive ProtoStepLifecycleTransition : StepLifecycleState → StepLifecycleState → Prop
  | pendingReady : ProtoStepLifecycleTransition .pending .ready
  | readyLeased : ProtoStepLifecycleTransition .ready .leased
  | leasedRunning : ProtoStepLifecycleTransition .leased .running
  | leasedCancelled : ProtoStepLifecycleTransition .leased .cancelled
  | leasedBlocked : ProtoStepLifecycleTransition .leased .blocked
  | runningComplete : ProtoStepLifecycleTransition .running .complete
  | runningFailed : ProtoStepLifecycleTransition .running .failed
  | runningCancelled : ProtoStepLifecycleTransition .running .cancelled
  | runningBlocked : ProtoStepLifecycleTransition .running .blocked

inductive ProtoLeaseLifecycleTransition : ProtoLeaseLifecycleState → ProtoLeaseLifecycleState → Prop
  | issuedActive : ProtoLeaseLifecycleTransition .issued .active
  | issuedCancelled : ProtoLeaseLifecycleTransition .issued .cancelled
  | issuedRejected : ProtoLeaseLifecycleTransition .issued .rejected
  | issuedExpired : ProtoLeaseLifecycleTransition .issued .expired
  | activeReleased : ProtoLeaseLifecycleTransition .active .released
  | activeCancelled : ProtoLeaseLifecycleTransition .active .cancelled
  | activeRejected : ProtoLeaseLifecycleTransition .active .rejected
  | activeExpired : ProtoLeaseLifecycleTransition .active .expired

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

structure ProtoLeaseRef where
  leaseId : String
  fencingToken : String
  runId : String
  planId : String
  stepId : String
  taskId : String
deriving DecidableEq, Repr

def leaseRefWellFormed (leaseRef : ProtoLeaseRef) : Prop :=
  SafeClientBoundaryId leaseRef.leaseId ∧
  NonEmptyString leaseRef.fencingToken ∧
  SafeClientBoundaryId leaseRef.runId ∧
  SafeClientBoundaryId leaseRef.planId ∧
  SafeClientBoundaryId leaseRef.stepId ∧
  SafeClientBoundaryId leaseRef.taskId

def leaseRefMatchesLease (leaseRef : ProtoLeaseRef) (lease : ProtoLease) : Prop :=
  leaseRef.leaseId = lease.leaseId ∧
  leaseRef.fencingToken = lease.fencingToken.token ∧
  leaseRef.runId = lease.runId ∧
  leaseRef.planId = lease.planId ∧
  leaseRef.stepId = lease.stepId ∧
  leaseRef.taskId = lease.taskId

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

def activeLeaseFor (lease : ProtoLease) : String × String :=
  (lease.runId, lease.stepId)

def atMostOneActiveLeaseOwner (leases : List ProtoLease) : Prop :=
  ((leases.filter fun lease => lease.status = .active).map activeLeaseFor).Nodup

structure ProtoAcquireLeaseRequest where
  runnerId : String
  sessionId : String
  availableSlots : Nat
  activeLeaseIds : List String
deriving DecidableEq, Repr

structure ProtoAcquireLeaseResponse where
  accepted : Bool
  assignment? : Option ProtoLease
  retryAfterMs : Nat
deriving DecidableEq, Repr

def acquireLeaseResponseConsistent (response : ProtoAcquireLeaseResponse) : Prop :=
  (response.accepted = true →
    ∃ lease, response.assignment? = some lease ∧ leaseWellFormed lease ∧
      (lease.status = .issued ∨ lease.status = .active)) ∧
  (response.accepted = false → response.assignment?.isNone)

structure ProtoRenewLeaseRequest where
  runnerId : String
  sessionId : String
  leaseRef : ProtoLeaseRef
deriving DecidableEq, Repr

structure ProtoRenewLeaseResponse where
  accepted : Bool
  leaseTtlMs : Nat
  failure? : Option ProtoLeaseRejectionReason
deriving DecidableEq, Repr

def renewLeaseResponseConsistent (response : ProtoRenewLeaseResponse) : Prop :=
  (response.accepted = true → response.failure?.isNone ∧ response.leaseTtlMs > 0) ∧
  (response.accepted = false → response.failure?.isSome)

structure ProtoResumeLeaseRequest where
  runnerId : String
  sessionId : String
  leaseRef : ProtoLeaseRef
deriving DecidableEq, Repr

structure ProtoResumeLeaseResponse where
  accepted : Bool
  lease? : Option ProtoLease
  expiresAtMs : Nat
  currentFencingToken : String
  reason : ProtoLeaseRejectionReason
deriving DecidableEq, Repr

def resumeLeaseResponseConsistent (response : ProtoResumeLeaseResponse) : Prop :=
  (response.accepted = true →
    ∃ lease, response.lease? = some lease ∧ leaseWellFormed lease ∧
      response.currentFencingToken = lease.fencingToken.token ∧
      response.expiresAtMs = lease.expiresAtMs) ∧
  (response.accepted = false → response.reason ≠ .unspecified)

def outcomeReportAllowed
    (runState : RunLifecycleState)
    (stepState : StepLifecycleState)
    (leaseStatus : ProtoLeaseLifecycleState)
    (outcomeStatus : ProtoPlanStatus) : Prop :=
  runState = .executing ∧
  stepState = .running ∧
  leaseStatus = .active ∧
  (outcomeStatus = .complete ∨ outcomeStatus = .failed ∨ outcomeStatus = .cancelled)

structure ProtoReportStepStartedRequest where
  leaseRef : ProtoLeaseRef
  startedAtMs : Nat
deriving DecidableEq, Repr

def startedReportAllowed
    (runState : RunLifecycleState)
    (stepState : StepLifecycleState)
    (lease : ProtoLease)
    (request : ProtoReportStepStartedRequest) : Prop :=
  runState = .executing ∧
  stepState = .leased ∧
  lease.status = .active ∧
  leaseRefMatchesLease request.leaseRef lease

structure ProtoReportStepProgressRequest where
  leaseRef : ProtoLeaseRef
  progressMessage : String
  completedUnits : Nat
  totalUnits : Nat
deriving DecidableEq, Repr

def progressReportAllowed
    (runState : RunLifecycleState)
    (stepState : StepLifecycleState)
    (lease : ProtoLease)
    (request : ProtoReportStepProgressRequest) : Prop :=
  runState = .executing ∧
  stepState = .running ∧
  lease.status = .active ∧
  leaseRefMatchesLease request.leaseRef lease ∧
  NonEmptyString request.progressMessage ∧
  request.completedUnits ≤ request.totalUnits

structure ProtoReportStepOutcomeRequest where
  leaseRef : ProtoLeaseRef
  outcomeStatus : ProtoPlanStatus
  finishedAtMs : Nat
deriving DecidableEq, Repr

def reportStepOutcomeConsistent (request : ProtoReportStepOutcomeRequest) : Prop :=
  leaseRefWellFormed request.leaseRef ∧
  (request.outcomeStatus = .complete ∨
    request.outcomeStatus = .failed ∨
    request.outcomeStatus = .cancelled)

def outcomeReportRequestAllowed
    (runState : RunLifecycleState)
    (stepState : StepLifecycleState)
    (lease : ProtoLease)
    (request : ProtoReportStepOutcomeRequest) : Prop :=
  leaseRefMatchesLease request.leaseRef lease ∧
  outcomeReportAllowed runState stepState lease.status request.outcomeStatus ∧
  reportStepOutcomeConsistent request

structure ProtoAckCancellationRequest where
  leaseRef : ProtoLeaseRef
  acknowledgedAtMs : Nat
deriving DecidableEq, Repr

def cancellationAckAllowed
    (runState : RunLifecycleState)
    (stepState : StepLifecycleState)
    (lease : ProtoLease)
    (request : ProtoAckCancellationRequest) : Prop :=
  runState = .cancelling ∧
  (stepState = .leased ∨ stepState = .running) ∧
  lease.status = .active ∧
  leaseRefMatchesLease request.leaseRef lease

structure ProtoAckCancellationResponse where
  accepted : Bool
  resultingStepState? : Option StepLifecycleState
deriving DecidableEq, Repr

def ackCancellationResponseConsistent (response : ProtoAckCancellationResponse) : Prop :=
  (response.accepted = true → response.resultingStepState? = some .cancelled) ∧
  (response.accepted = false → response.resultingStepState?.isNone)

structure ProtoControlPlaneState where
  runState : RunLifecycleState
  stepState : StepLifecycleState
  activeLease? : Option ProtoLease
deriving DecidableEq, Repr

def controlPlaneStateConsistent (state : ProtoControlPlaneState) : Prop :=
  (match state.activeLease? with
   | none => True
   | some lease => lease.status = .active) ∧
  (state.stepState = .running →
    ∃ lease, state.activeLease? = some lease ∧ lease.status = .active) ∧
  (state.stepState = .cancelled → state.runState = .cancelling ∨ state.runState = .cancelled)

inductive ProtoControlPlaneEvent
  | acquired (lease : ProtoLease)
  | renewed (lease : ProtoLease)
  | resumed (lease : ProtoLease)
  | started (request : ProtoReportStepStartedRequest)
  | progressed (request : ProtoReportStepProgressRequest)
  | outcomeReported (request : ProtoReportStepOutcomeRequest)
  | cancellationAcknowledged (request : ProtoAckCancellationRequest)
deriving DecidableEq, Repr

inductive ProtoControlPlaneTransition :
    ProtoControlPlaneState → ProtoControlPlaneEvent → ProtoControlPlaneState → Prop
  | acquire
      {state : ProtoControlPlaneState}
      {lease : ProtoLease} :
      controlPlaneStateConsistent state →
      leaseWellFormed lease →
      lease.status = .active →
      state.activeLease? = none →
      state.runState = .executing →
      state.stepState = .leased →
      ProtoControlPlaneTransition
        state
        (.acquired lease)
        { state with activeLease? := some lease }
  | renew
      {state : ProtoControlPlaneState}
      {lease : ProtoLease} :
      controlPlaneStateConsistent state →
      leaseWellFormed lease →
      lease.status = .active →
      state.activeLease? = some lease →
      ProtoControlPlaneTransition
        state
        (.renewed lease)
        state
  | resume
      {state : ProtoControlPlaneState}
      {oldLease newLease : ProtoLease} :
      controlPlaneStateConsistent state →
      leaseWellFormed newLease →
      newLease.status = .active →
      state.activeLease? = some oldLease →
      oldLease.fencingToken.AdvancesTo newLease.fencingToken →
      oldLease.runId = newLease.runId →
      oldLease.stepId = newLease.stepId →
      oldLease.taskId = newLease.taskId →
      ProtoControlPlaneTransition
        state
        (.resumed newLease)
        { state with activeLease? := some newLease }
  | start
      {state : ProtoControlPlaneState}
      {lease : ProtoLease}
      {request : ProtoReportStepStartedRequest} :
      controlPlaneStateConsistent state →
      state.activeLease? = some lease →
      startedReportAllowed state.runState state.stepState lease request →
      ProtoControlPlaneTransition
        state
        (.started request)
        { state with stepState := .running }
  | progress
      {state : ProtoControlPlaneState}
      {lease : ProtoLease}
      {request : ProtoReportStepProgressRequest} :
      controlPlaneStateConsistent state →
      state.activeLease? = some lease →
      progressReportAllowed state.runState state.stepState lease request →
      ProtoControlPlaneTransition
        state
        (.progressed request)
        state
  | outcome
      {state : ProtoControlPlaneState}
      {lease : ProtoLease}
      {request : ProtoReportStepOutcomeRequest} :
      controlPlaneStateConsistent state →
      state.activeLease? = some lease →
      outcomeReportRequestAllowed state.runState state.stepState lease request →
      ProtoControlPlaneTransition
        state
        (.outcomeReported request)
        { runState :=
            match request.outcomeStatus with
            | .complete => .complete
            | .failed => .failed
            | .cancelled => .cancelled
            | _ => state.runState
          stepState :=
            match request.outcomeStatus with
            | .complete => .complete
            | .failed => .failed
            | .cancelled => .cancelled
            | _ => state.stepState
          activeLease? := none }
  | cancelAck
      {state : ProtoControlPlaneState}
      {lease : ProtoLease}
      {request : ProtoAckCancellationRequest} :
      controlPlaneStateConsistent state →
      state.activeLease? = some lease →
      cancellationAckAllowed state.runState state.stepState lease request →
      ProtoControlPlaneTransition
        state
        (.cancellationAcknowledged request)
        { state with stepState := .cancelled, activeLease? := none }

def authorityPreserved
    (before after : ProtoControlPlaneState) : Prop :=
  match before.activeLease?, after.activeLease? with
  | some oldLease, some newLease =>
      oldLease.runId = newLease.runId ∧
      oldLease.stepId = newLease.stepId ∧
      oldLease.taskId = newLease.taskId
  | _, _ => True

inductive ProtoControlPlaneTrace :
    ProtoControlPlaneState → List ProtoControlPlaneEvent → ProtoControlPlaneState → Prop
  | nil
      {state : ProtoControlPlaneState} :
      ProtoControlPlaneTrace state [] state
  | cons
      {before middle after : ProtoControlPlaneState}
      {event : ProtoControlPlaneEvent}
      {rest : List ProtoControlPlaneEvent} :
      ProtoControlPlaneTransition before event middle →
      ProtoControlPlaneTrace middle rest after →
      ProtoControlPlaneTrace before (event :: rest) after

end MonarchicAgentProtocol
