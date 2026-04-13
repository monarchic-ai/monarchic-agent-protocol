import MonarchicAgentProtocol.Basic

namespace MonarchicAgentProtocol

theorem normalize_scribe_alias :
    normalizeRoleToken "scribe" = CanonicalRole.publisher := rfl

theorem normalize_unknown_role_falls_back :
    normalizeRoleToken "design" = CanonicalRole.unspecified := rfl

theorem safe_id_accepts_simple_slug :
    SafeClientBoundaryId "decision-1" := by
  simp [SafeClientBoundaryId, NonEmptyString]

theorem safe_id_rejects_parent_escape :
    ¬ SafeClientBoundaryId "../escape" := by
  simp [SafeClientBoundaryId, NonEmptyString]

theorem safe_id_rejects_absolute_path_like_value :
    ¬ SafeClientBoundaryId "/tmp/escape" := by
  simp [SafeClientBoundaryId, NonEmptyString]

theorem passed_receipt_has_no_blocked_outcomes
    {receipt : VerificationReceipt} :
    verificationReceiptConsistent receipt →
    receipt.status = .passed →
    receipt.blockedOutcomes = [] := by
  intro hConsistent hStatus
  exact hConsistent.1 hStatus

theorem blocked_receipt_requires_blocked_outcomes
    {receipt : VerificationReceipt} :
    verificationReceiptConsistent receipt →
    receipt.status = .blocked →
    receipt.blockedOutcomes ≠ [] := by
  intro hConsistent hStatus
  exact hConsistent.2.1 hStatus

theorem failed_receipt_requires_failure_signal
    {receipt : VerificationReceipt} :
    verificationReceiptConsistent receipt →
    receipt.status = .failed →
    hasFailedOrBlockedCheck receipt.checks ∨ receipt.blockedOutcomes ≠ [] := by
  intro hConsistent hStatus
  exact hConsistent.2.2 hStatus

theorem no_run_transition_from_terminal
    {src dst : RunLifecycleState} :
    src.terminal = true →
    ¬ RunTransition src dst := by
  intro hTerminal hTransition
  cases hTransition <;> simp [RunLifecycleState.terminal] at hTerminal

theorem no_step_transition_from_terminal
    {src dst : StepLifecycleState} :
    src.terminal = true →
    ¬ StepTransition src dst := by
  intro hTerminal hTransition
  cases hTransition <;> simp [StepLifecycleState.terminal] at hTerminal

theorem well_formed_plan_resolves_dependencies
    {plan : Plan} {step : PlanStep} {dep : String} :
    planWellFormed plan →
    step ∈ plan.steps →
    dep ∈ step.dependencies →
    dep ∈ plan.stepIds := by
  intro hWellFormed hStep hDep
  exact hWellFormed.2 step hStep dep hDep

def samplePassedReceipt : VerificationReceipt :=
  { status := .passed
    checks := [{ checkId := "cargo-test", status := .passed }]
    blockedOutcomes := [] }

def sampleBlockedReceipt : VerificationReceipt :=
  { status := .blocked
    checks := []
    blockedOutcomes := [{ code := "verification-missing" }] }

def sampleDependencyPlan : Plan :=
  { steps :=
      [ { stepId := "plan", dependencies := [] }
      , { stepId := "verify", dependencies := ["plan"] } ] }

example : verificationReceiptConsistent samplePassedReceipt := by
  simp [samplePassedReceipt, verificationReceiptConsistent, hasFailedOrBlockedCheck]

example : verificationReceiptConsistent sampleBlockedReceipt := by
  simp [sampleBlockedReceipt, verificationReceiptConsistent, hasFailedOrBlockedCheck]

example : planWellFormed sampleDependencyPlan := by
  refine And.intro ?_ ?_
  · decide
  · intro step hStep dep hDep
    simp [sampleDependencyPlan] at hStep
    rcases hStep with rfl | rfl
    · simp at hDep
    · simp [Plan.stepIds, sampleDependencyPlan] at hDep ⊢
      exact Or.inl hDep

end MonarchicAgentProtocol
