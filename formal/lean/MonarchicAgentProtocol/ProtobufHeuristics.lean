import MonarchicAgentProtocol.Protobuf

namespace MonarchicAgentProtocol

theorem execution_receipt_matching_is_plan_id_equality
    {plan : ProtoPlan} {receipt : ProtoExecutionReceipt} :
    executionReceiptMatchesPlan plan receipt ↔ receipt.planId = plan.planId := by
  rfl

theorem verification_proto_passed_has_no_blocked_outcomes
    {receipt : ProtoVerificationReceipt} :
    verificationReceiptProtoConsistent receipt →
    receipt.status = .passed →
    receipt.blockedOutcomes = [] := by
  intro h hPassed
  rcases h with ⟨_, _, _, _, _, hPassedRule, _, _⟩
  exact hPassedRule hPassed

theorem verification_proto_blocked_requires_blocked_outcomes
    {receipt : ProtoVerificationReceipt} :
    verificationReceiptProtoConsistent receipt →
    receipt.status = .blocked →
    receipt.blockedOutcomes ≠ [] := by
  intro h hBlocked
  rcases h with ⟨_, _, _, _, _, _, hBlockedRule, _⟩
  exact hBlockedRule hBlocked

theorem verification_proto_failed_requires_evidence
    {receipt : ProtoVerificationReceipt} :
    verificationReceiptProtoConsistent receipt →
    receipt.status = .failed →
    protoHasFailedOrBlockedCheck receipt.checks ∨ receipt.blockedOutcomes ≠ [] := by
  intro h hFailed
  rcases h with ⟨_, _, _, _, _, _, _, hFailedRule⟩
  exact hFailedRule hFailed

theorem recovery_step_state_requires_step_id
    {kind : ProtoRecoveryEventKind}
    {stepId? : Option String}
    {runState? : Option RunLifecycleState}
    {stepState? : Option StepLifecycleState}
    {reason? : Option ProtoLeaseRejectionReason} :
    recoveryEventStateConsistent kind stepId? runState? stepState? reason? →
    stepState?.isSome →
    stepId?.isSome := by
  intro h hStepState
  rcases h with ⟨_, _, hStepRule, _⟩
  exact hStepRule hStepState

theorem recovery_lease_rejected_requires_reason
    {stepId? : Option String}
    {runState? : Option RunLifecycleState}
    {stepState? : Option StepLifecycleState}
    {reason? : Option ProtoLeaseRejectionReason} :
    recoveryEventStateConsistent .leaseRejected stepId? runState? stepState? reason? →
    reason?.isSome := by
  intro h
  exact h.1 rfl

theorem recovery_run_recovered_requires_run_state
    {stepId? : Option String}
    {runState? : Option RunLifecycleState}
    {stepState? : Option StepLifecycleState}
    {reason? : Option ProtoLeaseRejectionReason} :
    recoveryEventStateConsistent .runRecovered stepId? runState? stepState? reason? →
    runState?.isSome := by
  intro h
  rcases h with ⟨_, _, _, hRunRule⟩
  exact hRunRule rfl

theorem no_proto_run_transition_from_terminal
    {src dst : RunLifecycleState} :
    src.terminal = true →
    ¬ ProtoRunLifecycleTransition src dst := by
  intro hTerminal hTransition
  cases hTransition <;> simp [RunLifecycleState.terminal] at hTerminal

theorem no_proto_step_transition_from_terminal
    {src dst : StepLifecycleState} :
    src.terminal = true →
    ¬ ProtoStepLifecycleTransition src dst := by
  intro hTerminal hTransition
  cases hTransition <;> simp [StepLifecycleState.terminal] at hTerminal

theorem no_proto_lease_transition_from_terminal
    {src dst : ProtoLeaseLifecycleState} :
    src.terminal = true →
    ¬ ProtoLeaseLifecycleTransition src dst := by
  intro hTerminal hTransition
  cases hTransition <;> simp [ProtoLeaseLifecycleState.terminal] at hTerminal

theorem accepted_acquire_response_has_assignment
    {response : ProtoAcquireLeaseResponse} :
    acquireLeaseResponseConsistent response →
    response.accepted = true →
    ∃ lease, response.assignment? = some lease := by
  intro h hAccepted
  rcases h.1 hAccepted with ⟨lease, hSome, _, _⟩
  exact ⟨lease, hSome⟩

theorem rejected_acquire_response_has_no_assignment
    {response : ProtoAcquireLeaseResponse} :
    acquireLeaseResponseConsistent response →
    response.accepted = false →
    response.assignment?.isNone := by
  intro h hRejected
  exact h.2 hRejected

theorem accepted_renew_response_has_ttl
    {response : ProtoRenewLeaseResponse} :
    renewLeaseResponseConsistent response →
    response.accepted = true →
    response.leaseTtlMs > 0 := by
  intro h hAccepted
  exact (h.1 hAccepted).2

theorem rejected_renew_response_has_reason
    {response : ProtoRenewLeaseResponse} :
    renewLeaseResponseConsistent response →
    response.accepted = false →
    response.failure?.isSome := by
  intro h hRejected
  exact h.2 hRejected

theorem accepted_resume_response_preserves_fencing_token
    {response : ProtoResumeLeaseResponse} :
    resumeLeaseResponseConsistent response →
    response.accepted = true →
    ∃ lease, response.lease? = some lease ∧ response.currentFencingToken = lease.fencingToken.token := by
  intro h hAccepted
  rcases h.1 hAccepted with ⟨lease, hSome, _, hToken, _⟩
  exact ⟨lease, hSome, hToken⟩

theorem outcome_report_requires_active_execution_context :
    outcomeReportAllowed .executing .running .active .complete := by
  simp [outcomeReportAllowed]

theorem fencing_token_advancement_preserves_scope
    {older newer : ProtoFencingToken} :
    older.AdvancesTo newer →
    older.scope = newer.scope := by
  intro h
  exact h.1

theorem fencing_token_cannot_advance_to_itself
    {token : ProtoFencingToken} :
    ¬ token.AdvancesTo token := by
  intro h
  exact Nat.lt_irrefl _ h.2

theorem fencing_token_advancement_is_asymmetric
    {a b : ProtoFencingToken} :
    a.AdvancesTo b →
    ¬ b.AdvancesTo a := by
  intro hab hba
  exact Nat.lt_asymm hab.2 hba.2

theorem accepted_cancellation_ack_yields_cancelled_step
    {response : ProtoAckCancellationResponse} :
    ackCancellationResponseConsistent response →
    response.accepted = true →
    response.resultingStepState? = some .cancelled := by
  intro h hAccepted
  exact h.1 hAccepted

theorem acquire_transition_preserves_consistency
    {before after : ProtoControlPlaneState}
    {lease : ProtoLease} :
    ProtoControlPlaneTransition before (.acquired lease) after →
    controlPlaneStateConsistent after := by
  intro h
  cases h with
  | acquire _ _ hStatus hNone hRun hStep =>
      constructor
      · simp [hStatus]
      · constructor
        · intro hRunning
          simp [hStep] at hRunning
        · intro hCancelled
          simp [hStep] at hCancelled

theorem renew_transition_preserves_authority
    {before after : ProtoControlPlaneState}
    {lease : ProtoLease} :
    ProtoControlPlaneTransition before (.renewed lease) after →
    authorityPreserved before after := by
  intro h
  cases h with
  | renew _ _ _ hSome =>
      simp [authorityPreserved, hSome]

theorem resume_transition_preserves_authority
    {before after : ProtoControlPlaneState}
    {lease : ProtoLease} :
    ProtoControlPlaneTransition before (.resumed lease) after →
    authorityPreserved before after := by
  intro h
  cases h with
  | resume _ _ _ hSome _ hRun hStep hTask =>
      simp [authorityPreserved, hSome, hRun, hStep, hTask]

theorem start_transition_requires_bound_lease
    {before after : ProtoControlPlaneState}
    {request : ProtoReportStepStartedRequest} :
    ProtoControlPlaneTransition before (.started request) after →
    ∃ lease, before.activeLease? = some lease := by
  intro h
  cases h with
  | start _ hSome _ =>
      exact ⟨_, hSome⟩

theorem progress_transition_requires_bound_lease
    {before after : ProtoControlPlaneState}
    {request : ProtoReportStepProgressRequest} :
    ProtoControlPlaneTransition before (.progressed request) after →
    ∃ lease, before.activeLease? = some lease := by
  intro h
  cases h with
  | progress _ hSome _ =>
      exact ⟨_, hSome⟩

theorem outcome_transition_clears_active_lease
    {before after : ProtoControlPlaneState}
    {request : ProtoReportStepOutcomeRequest} :
    ProtoControlPlaneTransition before (.outcomeReported request) after →
    after.activeLease? = none := by
  intro h
  cases h with
  | outcome _ _ _ =>
      rfl

theorem cancellation_ack_transition_clears_active_lease
    {before after : ProtoControlPlaneState}
    {request : ProtoAckCancellationRequest} :
    ProtoControlPlaneTransition before (.cancellationAcknowledged request) after →
    after.activeLease? = none := by
  intro h
  cases h with
  | cancelAck _ _ _ =>
      rfl

theorem control_plane_transition_preserves_consistency
    {before after : ProtoControlPlaneState}
    {event : ProtoControlPlaneEvent} :
    ProtoControlPlaneTransition before event after →
    controlPlaneStateConsistent before →
    controlPlaneStateConsistent after := by
  intro hTransition hBefore
  cases hTransition with
  | acquire hState _ hLeaseActive _ _ hStep =>
      constructor
      · exact hLeaseActive
      · constructor
        · intro hRunning
          simp [hStep] at hRunning
        · intro hCancelled
          simp [hStep] at hCancelled
  | renew =>
      simpa using hBefore
  | resume hState _ hLeaseActive _ _ _ _ _ =>
      constructor
      · exact hLeaseActive
      · constructor
        · intro hRunning
          refine ⟨_, rfl, hLeaseActive⟩
        · intro hCancelled
          exact hBefore.2.2 hCancelled
  | start hState hSome hAllowed =>
      constructor
      · rcases hAllowed with ⟨_, _, hLeaseActive, _⟩
        simpa [hSome] using hLeaseActive
      · constructor
        · intro _
          rcases hAllowed with ⟨_, _, hLeaseActive, _⟩
          refine ⟨_, by simp [hSome], hLeaseActive⟩
        · intro hCancelled
          simp at hCancelled
  | progress =>
      simpa using hBefore
  | outcome hState hSome hAllowed =>
      rcases hAllowed with ⟨_, hOutcomeAllowed, hRequest⟩
      rcases hRequest with ⟨_, hStatusConsistent⟩
      constructor
      · simp
      · constructor
        · intro hRunning
          rcases hStatusConsistent with hComplete | hFailed | hCancelled
          · simp [hComplete] at hRunning
          · simp [hFailed] at hRunning
          · simp [hCancelled] at hRunning
        · intro hCancelledState
          rcases hStatusConsistent with hComplete | hFailed | hCancelled
          · simp [hComplete] at hCancelledState
          · simp [hFailed] at hCancelledState
          · exact Or.inr (by simp [hCancelled])
  | cancelAck hState hSome hAllowed =>
      rcases hAllowed with ⟨hRun, _, _, _⟩
      constructor
      · simp
      · constructor
        · intro hRunning
          simp at hRunning
        · intro hCancelled
          exact Or.inl hRun

theorem control_plane_trace_preserves_consistency
    {start finish : ProtoControlPlaneState}
    {events : List ProtoControlPlaneEvent} :
    controlPlaneStateConsistent start →
    ProtoControlPlaneTrace start events finish →
    controlPlaneStateConsistent finish := by
  intro hStart hTrace
  induction hTrace with
  | nil =>
      exact hStart
  | @cons before middle after event rest hStep hRest ih =>
      exact ih (control_plane_transition_preserves_consistency hStep hStart)

theorem control_plane_transition_preserves_authority_when_active
    {before after : ProtoControlPlaneState}
    {event : ProtoControlPlaneEvent} :
    ProtoControlPlaneTransition before event after →
    before.activeLease?.isSome →
    after.activeLease?.isSome →
    authorityPreserved before after := by
  intro hTransition hBeforeActive hAfterActive
  cases hTransition with
  | acquire _ _ _ hNone _ _ =>
      simp [hNone] at hBeforeActive
  | renew hState _ _ hSome =>
      simp [authorityPreserved, hSome]
  | resume hState _ _ hSome _ hRun hStep hTask =>
      simp [authorityPreserved, hSome, hRun, hStep, hTask]
  | start hState hSome _ =>
      simp [authorityPreserved, hSome]
  | progress hState hSome _ =>
      simp [authorityPreserved, hSome]
  | outcome =>
      simp at hAfterActive
  | cancelAck =>
      simp at hAfterActive

theorem authority_preserved_refl (state : ProtoControlPlaneState) :
    authorityPreserved state state := by
  cases hState : state.activeLease? <;> simp [authorityPreserved, hState]

theorem active_authority_trace_finish_active
    {start finish : ProtoControlPlaneState}
    {events : List ProtoControlPlaneEvent} :
    ProtoActiveAuthorityTrace start events finish →
    finish.activeLease?.isSome := by
  intro hTrace
  induction hTrace with
  | nil hActive =>
      exact hActive
  | cons _ _ hMiddleActive hRest ih =>
      exact ih

theorem active_authority_trace_preserves_authority
    {start finish : ProtoControlPlaneState}
    {events : List ProtoControlPlaneEvent} :
    ProtoActiveAuthorityTrace start events finish →
    authorityPreserved start finish := by
  intro hTrace
  induction hTrace with
  | nil hActive =>
      exact authority_preserved_refl _
  | @cons before middle after event rest hStep hBeforeActive hMiddleActive hRest ih =>
      have hStepPreserved :
          authorityPreserved before middle :=
        control_plane_transition_preserves_authority_when_active hStep hBeforeActive hMiddleActive
      have hAfterActive : after.activeLease?.isSome :=
        active_authority_trace_finish_active hRest
      cases hBefore : before.activeLease? with
      | none =>
          simp [Option.isSome, hBefore] at hBeforeActive
      | some beforeLease =>
          cases hMiddle : middle.activeLease? with
          | none =>
              simp [Option.isSome, hMiddle] at hMiddleActive
          | some middleLease =>
              cases hAfter : after.activeLease? with
              | none =>
                  simp [Option.isSome, hAfter] at hAfterActive
              | some afterLease =>
                  rcases (by simpa [authorityPreserved, hBefore, hMiddle] using hStepPreserved) with
                    ⟨hRun1, hStep1, hTask1⟩
                  rcases (by simpa [authorityPreserved, hMiddle, hAfter] using ih) with
                    ⟨hRun2, hStep2, hTask2⟩
                  exact by
                    simp [authorityPreserved, hBefore, hAfter]
                    exact ⟨hRun1.trans hRun2, hStep1.trans hStep2, hTask1.trans hTask2⟩

theorem authority_preserved_excludes_competing_authority
    {before after : ProtoControlPlaneState} :
    authorityPreserved before after →
    ¬ competingAuthority before after := by
  intro hPreserved hCompeting
  cases hBefore : before.activeLease? <;> cases hAfter : after.activeLease?
  · simp [competingAuthority, hBefore, hAfter] at hCompeting
  · simp [competingAuthority, hBefore, hAfter] at hCompeting
  · simp [competingAuthority, hBefore, hAfter] at hCompeting
  · rcases (by simpa [authorityPreserved, hBefore, hAfter] using hPreserved) with
      ⟨hRun, hStep, hTask⟩
    rcases (by simpa [competingAuthority, hBefore, hAfter] using hCompeting) with
      ⟨hRun', hStep', hTaskNe⟩
    exact hTaskNe hTask

theorem active_authority_trace_excludes_competing_authority
    {start finish : ProtoControlPlaneState}
    {events : List ProtoControlPlaneEvent} :
    ProtoActiveAuthorityTrace start events finish →
    ¬ competingAuthority start finish := by
  intro hTrace
  exact authority_preserved_excludes_competing_authority
    (active_authority_trace_preserves_authority hTrace)

def sampleProtoTask : ProtoTask :=
  { version := "v1"
    taskId := "task-001"
    role := .dev
    goal := "Implement a bounded change."
    gatesRequired := ["qa", "review"]
    runContext :=
      { version := "v1"
        repo := "/workspace/monarchic-tui"
        worktree := "/workspace/monarchic-tui"
        image := "nix"
        runner := "codex"
        labels := ["local"] }
    roleId := "dev" }

def sampleProtoPlan : ProtoPlan :=
  { contractVersion := "v1"
    planId := "plan-001"
    runId? := some "run-001"
    objective := "Ship a bounded fix."
    status := .executing
    steps :=
      [ { stepId := "step-001"
          description := "Implement"
          dependsOn := []
          taskId? := some "task-001"
          kind := .execution
          policyTags := [] }
      , { stepId := "step-002"
          description := "Verify"
          dependsOn := ["step-001"]
          taskId? := some "task-002"
          kind := .verification
          policyTags := [] } ]
    intentId? := some "intent-001" }

def sampleProtoExecutionReceipt : ProtoExecutionReceipt :=
  { contractVersion := "v1"
    runId := "run-001"
    planId := "plan-001"
    status := .complete
    generatedAtMs := 10 }

def sampleProtoVerificationReceipt : ProtoVerificationReceipt :=
  { contractVersion := "v1"
    verificationId := "verification-001"
    planId := "plan-001"
    executionReceiptIds := ["receipt-001"]
    status := .passed
    checks := [{ checkId := "check-001", status := .passed }]
    blockedOutcomes := [] }

def sampleProtoLease : ProtoLease :=
  { leaseId := "lease-001"
    runId := "run-001"
    planId := "plan-001"
    stepId := "step-001"
    taskId := "task-001"
    runnerId := "runner-001"
    sessionId := "session-001"
    fencingToken :=
      { token := "token-001"
        issuedAtMs := 1
        issuer := "orchestrator"
        scope := "run:run-001" }
    issuedAtMs := 1
    expiresAtMs := 2
    status := .active }

def sampleProtoRecoveryEvent : ProtoRecoveryEvent :=
  { eventId := "recovery-001"
    runId := "run-001"
    planId := "plan-001"
    stepId? := some "step-001"
    kind := .stepBlocked
    occurredAtMs := 3
    actor := "orchestrator"
    contractVersion := "v1"
    runState? := some .blocked
    stepState? := some .blocked
    leaseRejectionReason? := none }

def sampleAcquireResponse : ProtoAcquireLeaseResponse :=
  { accepted := true
    assignment? := some { sampleProtoLease with status := .issued }
    retryAfterMs := 0 }

def sampleRenewResponse : ProtoRenewLeaseResponse :=
  { accepted := true
    leaseTtlMs := 10
    failure? := none }

def sampleResumeResponse : ProtoResumeLeaseResponse :=
  { accepted := true
    lease? := some sampleProtoLease
    expiresAtMs := sampleProtoLease.expiresAtMs
    currentFencingToken := sampleProtoLease.fencingToken.token
    reason := .unspecified }

def sampleNextProtoFencingToken : ProtoFencingToken :=
  { token := "token-002"
    issuedAtMs := 2
    issuer := "orchestrator"
    scope := "run:run-001" }

def sampleProtoLeaseRef : ProtoLeaseRef :=
  { leaseId := sampleProtoLease.leaseId
    fencingToken := sampleProtoLease.fencingToken.token
    runId := sampleProtoLease.runId
    planId := sampleProtoLease.planId
    stepId := sampleProtoLease.stepId
    taskId := sampleProtoLease.taskId }

def sampleStartedRequest : ProtoReportStepStartedRequest :=
  { leaseRef := sampleProtoLeaseRef
    startedAtMs := 5 }

def sampleProgressRequest : ProtoReportStepProgressRequest :=
  { leaseRef := sampleProtoLeaseRef
    progressMessage := "compiled module"
    completedUnits := 3
    totalUnits := 5 }

def sampleOutcomeRequest : ProtoReportStepOutcomeRequest :=
  { leaseRef := sampleProtoLeaseRef
    outcomeStatus := .complete
    finishedAtMs := 8 }

def sampleAckCancellationRequest : ProtoAckCancellationRequest :=
  { leaseRef := sampleProtoLeaseRef
    acknowledgedAtMs := 9 }

def sampleAckCancellationResponse : ProtoAckCancellationResponse :=
  { accepted := true
    resultingStepState? := some .cancelled }

def sampleLeasedControlPlaneState : ProtoControlPlaneState :=
  { runState := .executing
    stepState := .leased
    activeLease? := some sampleProtoLease }

def sampleRunningControlPlaneState : ProtoControlPlaneState :=
  { runState := .executing
    stepState := .running
    activeLease? := some sampleProtoLease }

def sampleCancellingControlPlaneState : ProtoControlPlaneState :=
  { runState := .cancelling
    stepState := .running
    activeLease? := some sampleProtoLease }

def sampleSupersedingLease : ProtoLease :=
  { sampleProtoLease with
      leaseId := "lease-002"
      fencingToken := sampleNextProtoFencingToken
      issuedAtMs := 2
      expiresAtMs := 4 }

def sampleSupersedingLeaseRef : ProtoLeaseRef :=
  { leaseId := sampleSupersedingLease.leaseId
    fencingToken := sampleSupersedingLease.fencingToken.token
    runId := sampleSupersedingLease.runId
    planId := sampleSupersedingLease.planId
    stepId := sampleSupersedingLease.stepId
    taskId := sampleSupersedingLease.taskId }

def sampleSupersedingProgressRequest : ProtoReportStepProgressRequest :=
  { leaseRef := sampleSupersedingLeaseRef
    progressMessage := "resumed module"
    completedUnits := 4
    totalUnits := 5 }

def samplePreAcquireControlPlaneState : ProtoControlPlaneState :=
  { runState := .executing
    stepState := .leased
    activeLease? := none }

def sampleCompletedControlPlaneState : ProtoControlPlaneState :=
  { runState := .complete
    stepState := .complete
    activeLease? := none }

def sampleResumedControlPlaneState : ProtoControlPlaneState :=
  { runState := .executing
    stepState := .running
    activeLease? := some sampleSupersedingLease }

theorem sample_resumed_state_consistent :
    controlPlaneStateConsistent sampleResumedControlPlaneState := by
  constructor
  · simp [sampleResumedControlPlaneState, sampleSupersedingLease, sampleProtoLease]
  · constructor
    · intro hRunning
      refine ⟨sampleSupersedingLease, ?_, rfl⟩
      simp [sampleResumedControlPlaneState] at hRunning
      simp [sampleResumedControlPlaneState]
    · intro hCancelled
      simp [sampleResumedControlPlaneState] at hCancelled

theorem started_report_requires_active_lease_binding :
    startedReportAllowed .executing .leased sampleProtoLease sampleStartedRequest := by
  simp [startedReportAllowed, sampleStartedRequest, sampleProtoLeaseRef, leaseRefMatchesLease, sampleProtoLease]

theorem progress_report_requires_bounded_progress :
    progressReportAllowed .executing .running sampleProtoLease sampleProgressRequest := by
  simp [progressReportAllowed, sampleProgressRequest, sampleProtoLeaseRef, leaseRefMatchesLease,
    sampleProtoLease, NonEmptyString]

theorem outcome_report_request_requires_consistent_outcome :
    outcomeReportRequestAllowed .executing .running sampleProtoLease sampleOutcomeRequest := by
  simp [outcomeReportRequestAllowed, outcomeReportAllowed, reportStepOutcomeConsistent,
    sampleOutcomeRequest, sampleProtoLeaseRef, leaseRefMatchesLease, leaseRefWellFormed,
    sampleProtoLease, SafeClientBoundaryId, NonEmptyString]

theorem cancellation_ack_requires_cancelling_run :
    cancellationAckAllowed .cancelling .running sampleProtoLease sampleAckCancellationRequest := by
  simp [cancellationAckAllowed, sampleAckCancellationRequest, sampleProtoLeaseRef,
    leaseRefMatchesLease, sampleProtoLease]

example : controlPlaneStateConsistent sampleLeasedControlPlaneState := by
  simp [controlPlaneStateConsistent, sampleLeasedControlPlaneState, sampleProtoLease]

example : controlPlaneStateConsistent sampleRunningControlPlaneState := by
  constructor
  · simp [sampleRunningControlPlaneState, sampleProtoLease]
  · constructor
    · intro hRunning
      refine ⟨sampleProtoLease, ?_, rfl⟩
      simp [sampleRunningControlPlaneState] at hRunning
      simp [sampleRunningControlPlaneState]
    · intro hCancelled
      simp [sampleRunningControlPlaneState] at hCancelled

theorem sample_acquire_transition :
    ProtoControlPlaneTransition
      samplePreAcquireControlPlaneState
      (.acquired sampleProtoLease)
      sampleLeasedControlPlaneState := by
  apply ProtoControlPlaneTransition.acquire
  · constructor
    · simp [samplePreAcquireControlPlaneState]
    · constructor
      · intro hRunning
        simp [samplePreAcquireControlPlaneState] at hRunning
      · intro hCancelled
        simp [samplePreAcquireControlPlaneState] at hCancelled
  · simp [leaseWellFormed, sampleProtoLease, SafeClientBoundaryId, NonEmptyString]
  · rfl
  · rfl
  · rfl
  · rfl

theorem sample_start_transition :
    ProtoControlPlaneTransition
      sampleLeasedControlPlaneState
      (.started sampleStartedRequest)
      sampleRunningControlPlaneState := by
  apply ProtoControlPlaneTransition.start
  · exact by simp [controlPlaneStateConsistent, sampleLeasedControlPlaneState, sampleProtoLease]
  · rfl
  · exact started_report_requires_active_lease_binding

theorem sample_resume_transition :
    ProtoControlPlaneTransition
      sampleRunningControlPlaneState
      (.resumed sampleSupersedingLease)
      { sampleRunningControlPlaneState with activeLease? := some sampleSupersedingLease } := by
  apply ProtoControlPlaneTransition.resume
  · exact by
      constructor
      · simp [sampleRunningControlPlaneState, sampleProtoLease]
      · constructor
        · intro hRunning
          refine ⟨sampleProtoLease, ?_, rfl⟩
          simp [sampleRunningControlPlaneState] at hRunning
          simp [sampleRunningControlPlaneState]
        · intro hCancelled
          simp [sampleRunningControlPlaneState] at hCancelled
  · simp [leaseWellFormed, sampleSupersedingLease, sampleProtoLease, sampleNextProtoFencingToken,
      SafeClientBoundaryId, NonEmptyString]
  · rfl
  · rfl
  · simp [ProtoFencingToken.AdvancesTo, sampleSupersedingLease,
      sampleProtoLease, sampleNextProtoFencingToken]
  · rfl
  · rfl
  · rfl

theorem sample_outcome_transition :
    ProtoControlPlaneTransition
      sampleRunningControlPlaneState
      (.outcomeReported sampleOutcomeRequest)
      sampleCompletedControlPlaneState := by
  apply ProtoControlPlaneTransition.outcome
  · exact by
      constructor
      · simp [sampleRunningControlPlaneState, sampleProtoLease]
      · constructor
        · intro hRunning
          refine ⟨sampleProtoLease, ?_, rfl⟩
          simp [sampleRunningControlPlaneState] at hRunning
          simp [sampleRunningControlPlaneState]
        · intro hCancelled
          simp [sampleRunningControlPlaneState] at hCancelled
  · rfl
  · exact outcome_report_request_requires_consistent_outcome

theorem sample_cancel_ack_transition :
    ProtoControlPlaneTransition
      sampleCancellingControlPlaneState
      (.cancellationAcknowledged sampleAckCancellationRequest)
      { sampleCancellingControlPlaneState with stepState := .cancelled, activeLease? := none } := by
  apply ProtoControlPlaneTransition.cancelAck
  · constructor
    · simp [sampleCancellingControlPlaneState, sampleProtoLease]
    · constructor
      · intro hRunning
        refine ⟨sampleProtoLease, ?_, rfl⟩
        simp [sampleCancellingControlPlaneState] at hRunning
        simp [sampleCancellingControlPlaneState]
      · intro hCancelled
        simp [sampleCancellingControlPlaneState] at hCancelled
  · rfl
  · exact cancellation_ack_requires_cancelling_run

theorem sample_execution_trace :
    ProtoControlPlaneTrace
      samplePreAcquireControlPlaneState
      [ .acquired sampleProtoLease
      , .started sampleStartedRequest
      , .progressed sampleProgressRequest
      , .outcomeReported sampleOutcomeRequest ]
      sampleCompletedControlPlaneState := by
  apply ProtoControlPlaneTrace.cons
  · exact sample_acquire_transition
  · apply ProtoControlPlaneTrace.cons
    · exact sample_start_transition
    · apply ProtoControlPlaneTrace.cons
      · apply ProtoControlPlaneTransition.progress
        · exact control_plane_transition_preserves_consistency
            sample_start_transition
            (by simp [controlPlaneStateConsistent, sampleLeasedControlPlaneState, sampleProtoLease])
        · rfl
        · exact progress_report_requires_bounded_progress
      · apply ProtoControlPlaneTrace.cons
        · exact sample_outcome_transition
        · apply ProtoControlPlaneTrace.nil

theorem sample_active_authority_trace :
    ProtoActiveAuthorityTrace
      sampleRunningControlPlaneState
      [ .resumed sampleSupersedingLease
      , .progressed sampleSupersedingProgressRequest ]
      sampleResumedControlPlaneState := by
  apply ProtoActiveAuthorityTrace.cons
  · exact sample_resume_transition
  · simp [sampleRunningControlPlaneState]
  · simp
  · apply ProtoActiveAuthorityTrace.cons
    · apply ProtoControlPlaneTransition.progress
      · exact sample_resumed_state_consistent
      · rfl
      · simp [progressReportAllowed, sampleSupersedingProgressRequest, sampleSupersedingLeaseRef,
          leaseRefMatchesLease, sampleSupersedingLease, sampleProtoLease,
          sampleRunningControlPlaneState, NonEmptyString]
    · simp
    · simp
    · apply ProtoActiveAuthorityTrace.nil
      simp

example :
    authorityPreserved sampleRunningControlPlaneState sampleResumedControlPlaneState := by
  exact active_authority_trace_preserves_authority sample_active_authority_trace

example :
    ¬ competingAuthority sampleRunningControlPlaneState sampleResumedControlPlaneState := by
  exact active_authority_trace_excludes_competing_authority sample_active_authority_trace

example :
    controlPlaneStateConsistent sampleCompletedControlPlaneState := by
  exact control_plane_trace_preserves_consistency
    (by simp [controlPlaneStateConsistent, samplePreAcquireControlPlaneState])
    sample_execution_trace

theorem active_lease_list_rejects_duplicate_run_step :
    ¬ atMostOneActiveLeaseOwner
      [ sampleProtoLease
      , { sampleProtoLease with runnerId := "runner-002", sessionId := "session-002" } ] := by
  intro h
  simp [atMostOneActiveLeaseOwner, activeLeaseFor, sampleProtoLease] at h

example : taskWellFormed sampleProtoTask := by
  simp [taskWellFormed, sampleProtoTask, SafeClientBoundaryId, NonEmptyString]

example : protoPlanWellFormed sampleProtoPlan := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · simp [sampleProtoPlan, NonEmptyString]
  · simp [sampleProtoPlan, SafeClientBoundaryId, NonEmptyString]
  · simp [sampleProtoPlan, NonEmptyString]
  · decide
  · constructor
    · intro step hStep
      simp [sampleProtoPlan, planStepWellFormed, SafeClientBoundaryId, NonEmptyString] at hStep ⊢
      rcases hStep with rfl | rfl
      · decide
      · decide
    · intro step hStep dep hDep
      simp [sampleProtoPlan] at hStep
      rcases hStep with rfl | rfl
      · simp at hDep
      · simp [sampleProtoPlan, ProtoPlan.stepIds] at hDep ⊢
        exact Or.inl hDep

example : executionReceiptWellFormed sampleProtoExecutionReceipt := by
  simp [executionReceiptWellFormed, sampleProtoExecutionReceipt, SafeClientBoundaryId, NonEmptyString]

example : verificationReceiptProtoConsistent sampleProtoVerificationReceipt := by
  simp [verificationReceiptProtoConsistent, sampleProtoVerificationReceipt, SafeClientBoundaryId,
    NonEmptyString, protoHasFailedOrBlockedCheck]

example : leaseWellFormed sampleProtoLease := by
  simp [leaseWellFormed, sampleProtoLease, SafeClientBoundaryId, NonEmptyString]

example : recoveryEventWellFormed sampleProtoRecoveryEvent := by
  simp [recoveryEventWellFormed, sampleProtoRecoveryEvent, SafeClientBoundaryId, NonEmptyString,
    recoveryEventStateConsistent]

example : acquireLeaseResponseConsistent sampleAcquireResponse := by
  simp [acquireLeaseResponseConsistent, sampleAcquireResponse, sampleProtoLease, leaseWellFormed,
    SafeClientBoundaryId, NonEmptyString]

example : renewLeaseResponseConsistent sampleRenewResponse := by
  simp [renewLeaseResponseConsistent, sampleRenewResponse]

example : resumeLeaseResponseConsistent sampleResumeResponse := by
  simp [resumeLeaseResponseConsistent, sampleResumeResponse, sampleProtoLease, leaseWellFormed,
    SafeClientBoundaryId, NonEmptyString]

example : sampleProtoLease.fencingToken.AdvancesTo sampleNextProtoFencingToken := by
  simp [ProtoFencingToken.AdvancesTo, sampleProtoLease, sampleNextProtoFencingToken]

example : ackCancellationResponseConsistent sampleAckCancellationResponse := by
  simp [ackCancellationResponseConsistent, sampleAckCancellationResponse]

example : executionReceiptMatchesPlan sampleProtoPlan sampleProtoExecutionReceipt := by
  rfl

example : leaseMatchesPlan sampleProtoPlan sampleProtoLease := by
  simp [leaseMatchesPlan, sampleProtoPlan, sampleProtoLease, ProtoPlan.stepIds, ProtoPlan.stepTaskIds]

example :
    verificationReceiptMatchesExecutionReceipts
      sampleProtoPlan
      sampleProtoVerificationReceipt
      [("receipt-001", sampleProtoExecutionReceipt)] := by
  constructor
  · rfl
  · intro receiptId hReceiptId
    simp [sampleProtoVerificationReceipt] at hReceiptId
    subst hReceiptId
    refine ⟨sampleProtoExecutionReceipt, ?_, rfl⟩
    simp

end MonarchicAgentProtocol
