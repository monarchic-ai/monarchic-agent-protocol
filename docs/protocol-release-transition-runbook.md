# Protocol Release Transition Runbook

This runbook defines the operator sequence for moving API and worker from the
temporary `monarchic-agent-protocol` Git pin to a published package/crate
version. It does not publish packages or edit dependent repos by itself.

## Required Decisions

- Replacement protocol version.
- Source commit that should become the release.
- Package publishing operator and registry credentials for npm and crates.io.
- API and worker branch targets for replacing Git pins with published versions.

## Procedure

1. Confirm API and worker are still aligned on the expected protocol source
   revision:

   ```bash
   MONARCHIC_EXPECTED_PROTOCOL_REV=<full-40-character-protocol-sha> \
   scripts/check-protocol-transition-readiness.sh
   ```

   Use `MONARCHIC_PROTOCOL_CHECK_NPM_REGISTRY=true
   MONARCHIC_PROTOCOL_CHECK_CRATES_REGISTRY=true
   scripts/report-protocol-consumer-status.sh` when you need live npm and
   crates.io registry evidence for whether the selected protocol package/crate
   version has actually been published. After publishing, enable registry
   replacement readiness in the composed transition gate so the API/worker
   dependency replacement cannot proceed while either registry is still at the
   current baseline.

2. Choose the replacement protocol version. It must differ from the current
   published protocol version.
3. In the protocol repo, update npm and Cargo versions to the selected
   replacement version.
4. Generate the operator-local transition environment template:

   ```bash
   scripts/print-protocol-transition-inputs-template.sh
   ```

5. Fill the template in an operator-local shell or environment manager. Do not
   commit filled release or publishing values to the repo.
6. Run the local transition input preflight:

   ```bash
   scripts/check-protocol-transition-inputs.sh
   ```

7. Enable release readiness and run the composed transition gate:

   ```bash
   export MONARCHIC_PROTOCOL_RUN_RELEASE_READINESS=true
   scripts/check-protocol-transition-readiness.sh
   ```

8. Publish the protocol package and crate from the approved operator context.
9. Enable registry replacement readiness and run the composed transition gate
   again before changing API or worker dependencies:

   ```bash
   export MONARCHIC_PROTOCOL_RUN_REGISTRY_REPLACEMENT_READINESS=true
   scripts/check-protocol-transition-readiness.sh
   ```

10. In the API and worker repos, replace the Git-pinned protocol dependencies
   with the published package/crate version on the selected branch targets.
11. Run API, worker, and cross-repo compatibility checks for the queue/auth
    context contract and deployed control-plane dispatch path.
12. Remove or disable the temporary Git-pin alignment requirement after both
    consumers are verified on the same published version.

## Failure Handling

- If pin alignment fails, stop and reconcile API and worker protocol source
  revisions before publishing.
- If release readiness fails, fix the protocol repo version or contract surface
  before publishing.
- If publish succeeds but API or worker replacement fails, keep the Git-pin gate
  enabled until both consumers are updated and compatibility checks pass.
