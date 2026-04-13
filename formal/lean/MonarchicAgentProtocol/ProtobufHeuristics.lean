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
