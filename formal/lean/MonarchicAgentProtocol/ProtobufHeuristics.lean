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
