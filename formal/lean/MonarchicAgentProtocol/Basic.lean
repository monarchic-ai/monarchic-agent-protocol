namespace MonarchicAgentProtocol

def NonEmptyString (s : String) : Prop :=
  s ≠ ""

def SafeClientBoundaryId (s : String) : Prop :=
  NonEmptyString s ∧
  '/' ∉ s.toList ∧
  '\\' ∉ s.toList ∧
  s ≠ "." ∧
  s ≠ ".."

inductive CanonicalRole
  | unspecified
  | productOwner
  | projectManager
  | dev
  | qa
  | reviewer
  | security
  | ops
  | publisher
  | researcher
  | verification
deriving DecidableEq, Repr

def normalizeRoleToken : String → CanonicalRole
  | "product_owner" => .productOwner
  | "project_manager" => .projectManager
  | "dev" => .dev
  | "qa" => .qa
  | "reviewer" => .reviewer
  | "security" => .security
  | "ops" => .ops
  | "publisher" => .publisher
  | "scribe" => .publisher
  | "researcher" => .researcher
  | "verification" => .verification
  | _ => .unspecified

inductive VerificationStatus
  | pending
  | passed
  | failed
  | blocked
deriving DecidableEq, Repr

inductive VerificationCheckStatus
  | passed
  | failed
  | blocked
  | skipped
deriving DecidableEq, Repr

structure VerificationCheck where
  checkId : String
  status : VerificationCheckStatus
deriving DecidableEq, Repr

structure BlockedOutcome where
  code : String
deriving DecidableEq, Repr

structure VerificationReceipt where
  status : VerificationStatus
  checks : List VerificationCheck
  blockedOutcomes : List BlockedOutcome
deriving DecidableEq, Repr

def hasFailedOrBlockedCheck : List VerificationCheck → Prop
  | [] => False
  | check :: rest =>
      check.status = .failed ∨ check.status = .blocked ∨ hasFailedOrBlockedCheck rest

def verificationReceiptConsistent (receipt : VerificationReceipt) : Prop :=
  (receipt.status = .passed → receipt.blockedOutcomes = []) ∧
  (receipt.status = .blocked → receipt.blockedOutcomes ≠ []) ∧
  (receipt.status = .failed →
    hasFailedOrBlockedCheck receipt.checks ∨ receipt.blockedOutcomes ≠ [])

inductive RunLifecycleState
  | pending
  | executing
  | paused
  | cancelling
  | cancelled
  | failed
  | complete
  | blocked
deriving DecidableEq, Repr

def RunLifecycleState.terminal : RunLifecycleState → Bool
  | .cancelled => true
  | .failed => true
  | .complete => true
  | .blocked => true
  | _ => false

inductive RunTransition : RunLifecycleState → RunLifecycleState → Prop
  | pendingExecuting : RunTransition .pending .executing
  | executingPaused : RunTransition .executing .paused
  | executingCancelling : RunTransition .executing .cancelling
  | executingFailed : RunTransition .executing .failed
  | executingComplete : RunTransition .executing .complete
  | executingBlocked : RunTransition .executing .blocked
  | pausedExecuting : RunTransition .paused .executing
  | pausedCancelling : RunTransition .paused .cancelling
  | cancellingCancelled : RunTransition .cancelling .cancelled

inductive StepLifecycleState
  | pending
  | ready
  | leased
  | running
  | complete
  | failed
  | cancelled
  | blocked
deriving DecidableEq, Repr

def StepLifecycleState.terminal : StepLifecycleState → Bool
  | .complete => true
  | .failed => true
  | .cancelled => true
  | .blocked => true
  | _ => false

inductive StepTransition : StepLifecycleState → StepLifecycleState → Prop
  | pendingReady : StepTransition .pending .ready
  | readyLeased : StepTransition .ready .leased
  | leasedRunning : StepTransition .leased .running
  | runningComplete : StepTransition .running .complete
  | runningFailed : StepTransition .running .failed
  | runningCancelled : StepTransition .running .cancelled
  | runningBlocked : StepTransition .running .blocked
  | leasedCancelled : StepTransition .leased .cancelled
  | leasedBlocked : StepTransition .leased .blocked

structure PlanStep where
  stepId : String
  dependencies : List String
deriving DecidableEq, Repr

structure Plan where
  steps : List PlanStep
deriving DecidableEq, Repr

def Plan.stepIds (plan : Plan) : List String :=
  plan.steps.map PlanStep.stepId

def dependenciesDeclared (plan : Plan) : Prop :=
  ∀ step, step ∈ plan.steps → ∀ dep, dep ∈ step.dependencies → dep ∈ plan.stepIds

def planWellFormed (plan : Plan) : Prop :=
  plan.stepIds.Nodup ∧ dependenciesDeclared plan

end MonarchicAgentProtocol
