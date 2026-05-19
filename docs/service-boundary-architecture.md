# Monarchic Service Boundary Architecture

`monarchic-agent-protocol` owns versioned wire contracts shared across API,
control-plane queue, worker, hosted clients, and future language bindings.

## Ownership

The protocol repo owns:

- stable schema versions
- JSON fixtures and validation contracts
- generated bindings for supported languages
- client-boundary contracts used by hosted clients
- durable-authority contracts used by lifecycle and lease handling
- service-boundary contracts used across API, queue, and worker dispatch

The protocol repo must not own:

- API route implementation
- worker execution logic
- provider-specific auth integration
- runtime infrastructure configuration

## Service Boundary Contracts

The hosted cloud architecture depends on explicit contracts at the API, queue,
and worker boundary. These include:

- authenticated principal references
- tenant references
- non-secret authorization context
- usage records
- audit export manifests
- control-plane queue jobs
- control-plane dispatch requests

The queue job contract uses the explicit marker
`monarchic.control-plane.queue-job.v1` so API publishers, queues, and workers
can reject unsupported or malformed dispatch payloads before runtime execution.

## Durable Authority Contracts

Lifecycle, lease, and recovery behavior should use durable authority contracts
instead of inferring authority from filesystem artifacts. Hosted mode requires
explicit run/step state, fencing tokens, lease rejection reasons, recovery
events, and manual override records.

## Versioning

Existing v1 contracts must remain compatible. New protocol versions should be
added under a new version path rather than mutating existing v1 schemas in ways
that break downstream API, worker, or client consumers.
