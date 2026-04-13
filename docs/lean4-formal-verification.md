# Lean4 Formal Verification

This repository now includes a Lean4 proof model under `formal/lean/`.

Scope:

- formalize proof-relevant protocol invariants that are already enforced or assumed by downstream code
- ground those invariants in current Monarchic usage rather than attempting a full proof of every generated schema artifact at once
- provide a place to grow toward stronger proofs over time

Current proof targets:

- client-boundary id safety heuristics:
  `libmonarchic/src/facade/client_boundary_store.rs` only accepts a single normal path component, and tests reject values such as `"../escape"` and `"/tmp/escape"`
- role normalization heuristics:
  `libmonarchic/src/protocol.rs` normalizes lowercase role tokens and currently aliases `"scribe"` to `publisher`
- verification receipt consistency:
  `src/rust/client_boundary/receipt.rs` enforces that passed receipts have no blocked outcomes, blocked receipts have at least one blocked outcome, and failed receipts carry either a failed/blocked check or a blocked outcome
- lifecycle terminality:
  downstream control logic treats terminal run and step states as sinks
- plan dependency grounding:
  downstream bootstrap and execution flows rely on dependency references resolving to declared steps/tasks
- protobuf message well-formedness:
  Lean now models `Task`, `Plan`, `PlanStep`, `ExecutionReceipt`, `VerificationReceipt`, `Lease`, and `RecoveryEvent` directly from the protobuf boundary
- protobuf cross-message integrity:
  Lean now proves plan/receipt matching, verification receipt linkage over execution receipts, lease-to-plan matching, and recovery-event state admissibility
- protobuf lifecycle safety:
  Lean now models allowed run, step, and lease lifecycle transitions and proves there are no transitions out of terminal states
- protobuf control-plane safety:
  Lean now models bounded consistency predicates for acquire/renew/resume lease responses and basic outcome-report admissibility
- protobuf request/report admissibility:
  Lean now models step-started, step-progress, step-outcome, and cancellation-ack request boundaries
- fencing-token monotonicity:
  Lean now proves basic token advancement properties such as same-scope progression, irreflexivity, and asymmetry
- protobuf control-plane trace safety:
  Lean now models bounded control-plane states and transitions and proves authority/lease preservation across acquire, renew, resume, outcome, and cancellation traces
- inductive trace consistency:
  Lean now lifts one-step control-plane transition lemmas to arbitrary event lists and proves well-formed control-plane traces preserve consistency end-to-end
- active-authority trace preservation:
  Lean now models traces that keep a lease continuously bound and proves the authority key cannot drift across renew/resume/progress spans
- protobuf coverage manifest:
  Lean now records the currently covered protobuf messages and enums, together with checked counts against the present `.proto` surface so partial coverage is explicit

Files:

- `formal/lean/MonarchicAgentProtocol/Basic.lean`: reduced protocol model and predicates
- `formal/lean/MonarchicAgentProtocol/Heuristics.lean`: theorems tied to project heuristics and downstream assumptions
- `formal/lean/MonarchicAgentProtocol/Protobuf.lean`: protobuf-oriented message models and well-formedness predicates
- `formal/lean/MonarchicAgentProtocol/ProtobufCoverage.lean`: checked coverage manifest for the protobuf messages and enums currently represented in Lean
- `formal/lean/MonarchicAgentProtocol/ProtobufHeuristics.lean`: protobuf-specific referential-integrity and state-consistency lemmas
- `formal/lean/Main.lean`: trivial executable entrypoint

What this is not yet:

- a proof that the protobuf, JSON Schema, Rust, TypeScript, Python, Ruby, Go, Java, PHP, and .NET surfaces are all extensionally identical
- a mechanized parser for the generated protocol artifacts
- a complete model of every MAP type

Running locally once Lean is available:

```bash
cd formal/lean
lake build
lake env lean MonarchicAgentProtocol/Heuristics.lean
```

Notes:

- the Lean model intentionally uses already-normalized role tokens rather than reproducing all Rust string canonicalization details
- the client-boundary id predicate is a conservative heuristic model of the Rust path validation rule
- this proof package is designed to evolve alongside the protocol as stronger invariants become explicit
