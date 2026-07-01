# Monarchic Feature Flags

This directory is the repository-local feature flag source of truth.

- `flags.json` follows the OpenFeature flag manifest shape: a top-level `flags` object keyed by flag name.
- Each flag entry must include `description`, `flagType`, and `defaultValue` before code reads it.
- Keep runtime cache, session state, generated SDKs, and evaluation data outside `.monarchic/feature-flags/`.
