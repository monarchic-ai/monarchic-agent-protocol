// This is a generated file - do not edit.
//
// Generated from monarchic_agent_protocol.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'package:protobuf/well_known_types/google/protobuf/struct.pbjson.dart'
    as $0;

@$core.Deprecated('Use agentRoleDescriptor instead')
const AgentRole$json = {
  '1': 'AgentRole',
  '2': [
    {'1': 'AGENT_ROLE_UNSPECIFIED', '2': 0},
    {'1': 'PRODUCT_OWNER', '2': 1},
    {'1': 'PROJECT_MANAGER', '2': 2},
    {'1': 'DEV', '2': 3},
    {'1': 'QA', '2': 4},
    {'1': 'REVIEWER', '2': 5},
    {'1': 'SECURITY', '2': 6},
    {'1': 'OPS', '2': 7},
    {'1': 'PUBLISHER', '2': 8},
    {'1': 'RESEARCHER', '2': 9},
    {'1': 'VERIFICATION', '2': 10},
  ],
};

/// Descriptor for `AgentRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List agentRoleDescriptor = $convert.base64Decode(
    'CglBZ2VudFJvbGUSGgoWQUdFTlRfUk9MRV9VTlNQRUNJRklFRBAAEhEKDVBST0RVQ1RfT1dORV'
    'IQARITCg9QUk9KRUNUX01BTkFHRVIQAhIHCgNERVYQAxIGCgJRQRAEEgwKCFJFVklFV0VSEAUS'
    'DAoIU0VDVVJJVFkQBhIHCgNPUFMQBxINCglQVUJMSVNIRVIQCBIOCgpSRVNFQVJDSEVSEAkSEA'
    'oMVkVSSUZJQ0FUSU9OEAo=');

@$core.Deprecated('Use outcomeDecisionDescriptor instead')
const OutcomeDecision$json = {
  '1': 'OutcomeDecision',
  '2': [
    {'1': 'OUTCOME_DECISION_UNSPECIFIED', '2': 0},
    {'1': 'ACCEPT', '2': 1},
    {'1': 'ITERATE', '2': 2},
    {'1': 'REJECT', '2': 3},
    {'1': 'ESCALATE', '2': 4},
  ],
};

/// Descriptor for `OutcomeDecision`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List outcomeDecisionDescriptor = $convert.base64Decode(
    'Cg9PdXRjb21lRGVjaXNpb24SIAocT1VUQ09NRV9ERUNJU0lPTl9VTlNQRUNJRklFRBAAEgoKBk'
    'FDQ0VQVBABEgsKB0lURVJBVEUQAhIKCgZSRUpFQ1QQAxIMCghFU0NBTEFURRAE');

@$core.Deprecated('Use intentClassDescriptor instead')
const IntentClass$json = {
  '1': 'IntentClass',
  '2': [
    {'1': 'INTENT_CLASS_UNSPECIFIED', '2': 0},
    {'1': 'INTENT_CLASS_INSPECT', '2': 1},
    {'1': 'INTENT_CLASS_VALIDATE', '2': 2},
    {'1': 'INTENT_CLASS_EXECUTE', '2': 3},
    {'1': 'INTENT_CLASS_VERIFY', '2': 4},
  ],
};

/// Descriptor for `IntentClass`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List intentClassDescriptor = $convert.base64Decode(
    'CgtJbnRlbnRDbGFzcxIcChhJTlRFTlRfQ0xBU1NfVU5TUEVDSUZJRUQQABIYChRJTlRFTlRfQ0'
    'xBU1NfSU5TUEVDVBABEhkKFUlOVEVOVF9DTEFTU19WQUxJREFURRACEhgKFElOVEVOVF9DTEFT'
    'U19FWEVDVVRFEAMSFwoTSU5URU5UX0NMQVNTX1ZFUklGWRAE');

@$core.Deprecated('Use bootstrapPlanningModeDescriptor instead')
const BootstrapPlanningMode$json = {
  '1': 'BootstrapPlanningMode',
  '2': [
    {'1': 'BOOTSTRAP_PLANNING_MODE_UNSPECIFIED', '2': 0},
    {'1': 'BOOTSTRAP_PLANNING_MODE_DIRECT_TEMPLATE_FILL', '2': 1},
    {'1': 'BOOTSTRAP_PLANNING_MODE_BOUNDED_RESEARCH_REPLAN', '2': 2},
  ],
};

/// Descriptor for `BootstrapPlanningMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bootstrapPlanningModeDescriptor = $convert.base64Decode(
    'ChVCb290c3RyYXBQbGFubmluZ01vZGUSJwojQk9PVFNUUkFQX1BMQU5OSU5HX01PREVfVU5TUE'
    'VDSUZJRUQQABIwCixCT09UU1RSQVBfUExBTk5JTkdfTU9ERV9ESVJFQ1RfVEVNUExBVEVfRklM'
    'TBABEjMKL0JPT1RTVFJBUF9QTEFOTklOR19NT0RFX0JPVU5ERURfUkVTRUFSQ0hfUkVQTEFOEA'
    'I=');

@$core.Deprecated('Use campaignPipelineConnectionKindDescriptor instead')
const CampaignPipelineConnectionKind$json = {
  '1': 'CampaignPipelineConnectionKind',
  '2': [
    {'1': 'CAMPAIGN_PIPELINE_CONNECTION_KIND_UNSPECIFIED', '2': 0},
    {'1': 'CAMPAIGN_PIPELINE_CONNECTION_KIND_DEPENDS_ON', '2': 1},
    {'1': 'CAMPAIGN_PIPELINE_CONNECTION_KIND_HANDOFF', '2': 2},
    {'1': 'CAMPAIGN_PIPELINE_CONNECTION_KIND_REVIEW', '2': 3},
    {'1': 'CAMPAIGN_PIPELINE_CONNECTION_KIND_MESSAGE_ROUTE', '2': 4},
    {'1': 'CAMPAIGN_PIPELINE_CONNECTION_KIND_ARTIFACT_FLOW', '2': 5},
  ],
};

/// Descriptor for `CampaignPipelineConnectionKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List campaignPipelineConnectionKindDescriptor = $convert.base64Decode(
    'Ch5DYW1wYWlnblBpcGVsaW5lQ29ubmVjdGlvbktpbmQSMQotQ0FNUEFJR05fUElQRUxJTkVfQ0'
    '9OTkVDVElPTl9LSU5EX1VOU1BFQ0lGSUVEEAASMAosQ0FNUEFJR05fUElQRUxJTkVfQ09OTkVD'
    'VElPTl9LSU5EX0RFUEVORFNfT04QARItCilDQU1QQUlHTl9QSVBFTElORV9DT05ORUNUSU9OX0'
    'tJTkRfSEFORE9GRhACEiwKKENBTVBBSUdOX1BJUEVMSU5FX0NPTk5FQ1RJT05fS0lORF9SRVZJ'
    'RVcQAxIzCi9DQU1QQUlHTl9QSVBFTElORV9DT05ORUNUSU9OX0tJTkRfTUVTU0FHRV9ST1VURR'
    'AEEjMKL0NBTVBBSUdOX1BJUEVMSU5FX0NPTk5FQ1RJT05fS0lORF9BUlRJRkFDVF9GTE9XEAU=');

@$core.Deprecated('Use planStatusDescriptor instead')
const PlanStatus$json = {
  '1': 'PlanStatus',
  '2': [
    {'1': 'PLAN_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'DRAFT', '2': 1},
    {'1': 'PLANNED', '2': 2},
    {'1': 'EXECUTING', '2': 3},
    {'1': 'COMPLETE', '2': 4},
    {'1': 'BOUNDED', '2': 5},
    {'1': 'FAILED', '2': 6},
    {'1': 'CANCELLED', '2': 7},
    {'1': 'UNKNOWN', '2': 8},
  ],
};

/// Descriptor for `PlanStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List planStatusDescriptor = $convert.base64Decode(
    'CgpQbGFuU3RhdHVzEhsKF1BMQU5fU1RBVFVTX1VOU1BFQ0lGSUVEEAASCQoFRFJBRlQQARILCg'
    'dQTEFOTkVEEAISDQoJRVhFQ1VUSU5HEAMSDAoIQ09NUExFVEUQBBILCgdCT1VOREVEEAUSCgoG'
    'RkFJTEVEEAYSDQoJQ0FOQ0VMTEVEEAcSCwoHVU5LTk9XThAI');

@$core.Deprecated('Use artifactKindDescriptor instead')
const ArtifactKind$json = {
  '1': 'ArtifactKind',
  '2': [
    {'1': 'ARTIFACT_KIND_UNSPECIFIED', '2': 0},
    {'1': 'ARTIFACT_KIND_PLAN', '2': 1},
    {'1': 'ARTIFACT_KIND_EXECUTION_RECEIPT', '2': 2},
    {'1': 'ARTIFACT_KIND_VERIFICATION_RECEIPT', '2': 3},
    {'1': 'ARTIFACT_KIND_EVENT_LOG', '2': 4},
    {'1': 'ARTIFACT_KIND_DIGEST_MANIFEST', '2': 5},
    {'1': 'ARTIFACT_KIND_PROOF_MANIFEST', '2': 6},
    {'1': 'ARTIFACT_KIND_PATCH', '2': 7},
    {'1': 'ARTIFACT_KIND_TEST_REPORT', '2': 8},
    {'1': 'ARTIFACT_KIND_BUILD_LOG', '2': 9},
    {'1': 'ARTIFACT_KIND_BUNDLE', '2': 10},
    {'1': 'ARTIFACT_KIND_CUSTOM', '2': 11},
  ],
};

/// Descriptor for `ArtifactKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List artifactKindDescriptor = $convert.base64Decode(
    'CgxBcnRpZmFjdEtpbmQSHQoZQVJUSUZBQ1RfS0lORF9VTlNQRUNJRklFRBAAEhYKEkFSVElGQU'
    'NUX0tJTkRfUExBThABEiMKH0FSVElGQUNUX0tJTkRfRVhFQ1VUSU9OX1JFQ0VJUFQQAhImCiJB'
    'UlRJRkFDVF9LSU5EX1ZFUklGSUNBVElPTl9SRUNFSVBUEAMSGwoXQVJUSUZBQ1RfS0lORF9FVk'
    'VOVF9MT0cQBBIhCh1BUlRJRkFDVF9LSU5EX0RJR0VTVF9NQU5JRkVTVBAFEiAKHEFSVElGQUNU'
    'X0tJTkRfUFJPT0ZfTUFOSUZFU1QQBhIXChNBUlRJRkFDVF9LSU5EX1BBVENIEAcSHQoZQVJUSU'
    'ZBQ1RfS0lORF9URVNUX1JFUE9SVBAIEhsKF0FSVElGQUNUX0tJTkRfQlVJTERfTE9HEAkSGAoU'
    'QVJUSUZBQ1RfS0lORF9CVU5ETEUQChIYChRBUlRJRkFDVF9LSU5EX0NVU1RPTRAL');

@$core.Deprecated('Use authMechanismDescriptor instead')
const AuthMechanism$json = {
  '1': 'AuthMechanism',
  '2': [
    {'1': 'AUTH_MECHANISM_UNSPECIFIED', '2': 0},
    {'1': 'AUTH_MECHANISM_SHARED_SECRET', '2': 1},
    {'1': 'AUTH_MECHANISM_BEARER_TOKEN', '2': 2},
    {'1': 'AUTH_MECHANISM_SIGNED_TOKEN', '2': 3},
    {'1': 'AUTH_MECHANISM_MUTUAL_TLS', '2': 4},
    {'1': 'AUTH_MECHANISM_CUSTOM', '2': 5},
  ],
};

/// Descriptor for `AuthMechanism`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List authMechanismDescriptor = $convert.base64Decode(
    'Cg1BdXRoTWVjaGFuaXNtEh4KGkFVVEhfTUVDSEFOSVNNX1VOU1BFQ0lGSUVEEAASIAocQVVUSF'
    '9NRUNIQU5JU01fU0hBUkVEX1NFQ1JFVBABEh8KG0FVVEhfTUVDSEFOSVNNX0JFQVJFUl9UT0tF'
    'ThACEh8KG0FVVEhfTUVDSEFOSVNNX1NJR05FRF9UT0tFThADEh0KGUFVVEhfTUVDSEFOSVNNX0'
    '1VVFVBTF9UTFMQBBIZChVBVVRIX01FQ0hBTklTTV9DVVNUT00QBQ==');

@$core.Deprecated('Use usageCategoryDescriptor instead')
const UsageCategory$json = {
  '1': 'UsageCategory',
  '2': [
    {'1': 'USAGE_CATEGORY_UNSPECIFIED', '2': 0},
    {'1': 'USAGE_CATEGORY_CONTROL_PLANE', '2': 1},
    {'1': 'USAGE_CATEGORY_EXECUTION', '2': 2},
    {'1': 'USAGE_CATEGORY_VERIFICATION', '2': 3},
    {'1': 'USAGE_CATEGORY_AUDIT_EXPORT', '2': 4},
    {'1': 'USAGE_CATEGORY_CUSTOM', '2': 5},
  ],
};

/// Descriptor for `UsageCategory`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List usageCategoryDescriptor = $convert.base64Decode(
    'Cg1Vc2FnZUNhdGVnb3J5Eh4KGlVTQUdFX0NBVEVHT1JZX1VOU1BFQ0lGSUVEEAASIAocVVNBR0'
    'VfQ0FURUdPUllfQ09OVFJPTF9QTEFORRABEhwKGFVTQUdFX0NBVEVHT1JZX0VYRUNVVElPThAC'
    'Eh8KG1VTQUdFX0NBVEVHT1JZX1ZFUklGSUNBVElPThADEh8KG1VTQUdFX0NBVEVHT1JZX0FVRE'
    'lUX0VYUE9SVBAEEhkKFVVTQUdFX0NBVEVHT1JZX0NVU1RPTRAF');

@$core.Deprecated('Use usageUnitDescriptor instead')
const UsageUnit$json = {
  '1': 'UsageUnit',
  '2': [
    {'1': 'USAGE_UNIT_UNSPECIFIED', '2': 0},
    {'1': 'USAGE_UNIT_REQUESTS', '2': 1},
    {'1': 'USAGE_UNIT_MILLISECONDS', '2': 2},
    {'1': 'USAGE_UNIT_BYTES', '2': 3},
    {'1': 'USAGE_UNIT_TOKENS', '2': 4},
    {'1': 'USAGE_UNIT_RUNS', '2': 5},
    {'1': 'USAGE_UNIT_CUSTOM', '2': 6},
  ],
};

/// Descriptor for `UsageUnit`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List usageUnitDescriptor = $convert.base64Decode(
    'CglVc2FnZVVuaXQSGgoWVVNBR0VfVU5JVF9VTlNQRUNJRklFRBAAEhcKE1VTQUdFX1VOSVRfUk'
    'VRVUVTVFMQARIbChdVU0FHRV9VTklUX01JTExJU0VDT05EUxACEhQKEFVTQUdFX1VOSVRfQllU'
    'RVMQAxIVChFVU0FHRV9VTklUX1RPS0VOUxAEEhMKD1VTQUdFX1VOSVRfUlVOUxAFEhUKEVVTQU'
    'dFX1VOSVRfQ1VTVE9NEAY=');

@$core.Deprecated('Use planStepKindDescriptor instead')
const PlanStepKind$json = {
  '1': 'PlanStepKind',
  '2': [
    {'1': 'PLAN_STEP_KIND_UNSPECIFIED', '2': 0},
    {'1': 'PLAN_STEP_KIND_ANALYSIS', '2': 1},
    {'1': 'PLAN_STEP_KIND_EXECUTION', '2': 2},
    {'1': 'PLAN_STEP_KIND_VERIFICATION', '2': 3},
    {'1': 'PLAN_STEP_KIND_REVIEW', '2': 4},
    {'1': 'PLAN_STEP_KIND_MERGE', '2': 5},
    {'1': 'PLAN_STEP_KIND_RELEASE', '2': 6},
    {'1': 'PLAN_STEP_KIND_CUSTOM', '2': 7},
  ],
};

/// Descriptor for `PlanStepKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List planStepKindDescriptor = $convert.base64Decode(
    'CgxQbGFuU3RlcEtpbmQSHgoaUExBTl9TVEVQX0tJTkRfVU5TUEVDSUZJRUQQABIbChdQTEFOX1'
    'NURVBfS0lORF9BTkFMWVNJUxABEhwKGFBMQU5fU1RFUF9LSU5EX0VYRUNVVElPThACEh8KG1BM'
    'QU5fU1RFUF9LSU5EX1ZFUklGSUNBVElPThADEhkKFVBMQU5fU1RFUF9LSU5EX1JFVklFVxAEEh'
    'gKFFBMQU5fU1RFUF9LSU5EX01FUkdFEAUSGgoWUExBTl9TVEVQX0tJTkRfUkVMRUFTRRAGEhkK'
    'FVBMQU5fU1RFUF9LSU5EX0NVU1RPTRAH');

@$core.Deprecated('Use replanStrategyDescriptor instead')
const ReplanStrategy$json = {
  '1': 'ReplanStrategy',
  '2': [
    {'1': 'REPLAN_STRATEGY_UNSPECIFIED', '2': 0},
    {'1': 'REPLAN_STRATEGY_RETRY', '2': 1},
    {'1': 'REPLAN_STRATEGY_REPAIR', '2': 2},
    {'1': 'REPLAN_STRATEGY_ESCALATE', '2': 3},
    {'1': 'REPLAN_STRATEGY_BLOCK', '2': 4},
  ],
};

/// Descriptor for `ReplanStrategy`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List replanStrategyDescriptor = $convert.base64Decode(
    'Cg5SZXBsYW5TdHJhdGVneRIfChtSRVBMQU5fU1RSQVRFR1lfVU5TUEVDSUZJRUQQABIZChVSRV'
    'BMQU5fU1RSQVRFR1lfUkVUUlkQARIaChZSRVBMQU5fU1RSQVRFR1lfUkVQQUlSEAISHAoYUkVQ'
    'TEFOX1NUUkFURUdZX0VTQ0FMQVRFEAMSGQoVUkVQTEFOX1NUUkFURUdZX0JMT0NLEAQ=');

@$core.Deprecated('Use verificationStatusDescriptor instead')
const VerificationStatus$json = {
  '1': 'VerificationStatus',
  '2': [
    {'1': 'VERIFICATION_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'VERIFICATION_STATUS_PENDING', '2': 1},
    {'1': 'VERIFICATION_STATUS_PASSED', '2': 2},
    {'1': 'VERIFICATION_STATUS_FAILED', '2': 3},
    {'1': 'VERIFICATION_STATUS_BLOCKED', '2': 4},
  ],
};

/// Descriptor for `VerificationStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List verificationStatusDescriptor = $convert.base64Decode(
    'ChJWZXJpZmljYXRpb25TdGF0dXMSIwofVkVSSUZJQ0FUSU9OX1NUQVRVU19VTlNQRUNJRklFRB'
    'AAEh8KG1ZFUklGSUNBVElPTl9TVEFUVVNfUEVORElORxABEh4KGlZFUklGSUNBVElPTl9TVEFU'
    'VVNfUEFTU0VEEAISHgoaVkVSSUZJQ0FUSU9OX1NUQVRVU19GQUlMRUQQAxIfChtWRVJJRklDQV'
    'RJT05fU1RBVFVTX0JMT0NLRUQQBA==');

@$core.Deprecated('Use verificationCheckStatusDescriptor instead')
const VerificationCheckStatus$json = {
  '1': 'VerificationCheckStatus',
  '2': [
    {'1': 'VERIFICATION_CHECK_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'VERIFICATION_CHECK_STATUS_PASSED', '2': 1},
    {'1': 'VERIFICATION_CHECK_STATUS_FAILED', '2': 2},
    {'1': 'VERIFICATION_CHECK_STATUS_BLOCKED', '2': 3},
    {'1': 'VERIFICATION_CHECK_STATUS_SKIPPED', '2': 4},
  ],
};

/// Descriptor for `VerificationCheckStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List verificationCheckStatusDescriptor = $convert.base64Decode(
    'ChdWZXJpZmljYXRpb25DaGVja1N0YXR1cxIpCiVWRVJJRklDQVRJT05fQ0hFQ0tfU1RBVFVTX1'
    'VOU1BFQ0lGSUVEEAASJAogVkVSSUZJQ0FUSU9OX0NIRUNLX1NUQVRVU19QQVNTRUQQARIkCiBW'
    'RVJJRklDQVRJT05fQ0hFQ0tfU1RBVFVTX0ZBSUxFRBACEiUKIVZFUklGSUNBVElPTl9DSEVDS1'
    '9TVEFUVVNfQkxPQ0tFRBADEiUKIVZFUklGSUNBVElPTl9DSEVDS19TVEFUVVNfU0tJUFBFRBAE');

@$core.Deprecated('Use blockedOutcomeScopeDescriptor instead')
const BlockedOutcomeScope$json = {
  '1': 'BlockedOutcomeScope',
  '2': [
    {'1': 'BLOCKED_OUTCOME_SCOPE_UNSPECIFIED', '2': 0},
    {'1': 'BLOCKED_OUTCOME_SCOPE_INTENT', '2': 1},
    {'1': 'BLOCKED_OUTCOME_SCOPE_PLAN', '2': 2},
    {'1': 'BLOCKED_OUTCOME_SCOPE_STEP', '2': 3},
    {'1': 'BLOCKED_OUTCOME_SCOPE_RUN', '2': 4},
    {'1': 'BLOCKED_OUTCOME_SCOPE_VERIFICATION', '2': 5},
    {'1': 'BLOCKED_OUTCOME_SCOPE_MERGE', '2': 6},
    {'1': 'BLOCKED_OUTCOME_SCOPE_RELEASE', '2': 7},
  ],
};

/// Descriptor for `BlockedOutcomeScope`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blockedOutcomeScopeDescriptor = $convert.base64Decode(
    'ChNCbG9ja2VkT3V0Y29tZVNjb3BlEiUKIUJMT0NLRURfT1VUQ09NRV9TQ09QRV9VTlNQRUNJRk'
    'lFRBAAEiAKHEJMT0NLRURfT1VUQ09NRV9TQ09QRV9JTlRFTlQQARIeChpCTE9DS0VEX09VVENP'
    'TUVfU0NPUEVfUExBThACEh4KGkJMT0NLRURfT1VUQ09NRV9TQ09QRV9TVEVQEAMSHQoZQkxPQ0'
    'tFRF9PVVRDT01FX1NDT1BFX1JVThAEEiYKIkJMT0NLRURfT1VUQ09NRV9TQ09QRV9WRVJJRklD'
    'QVRJT04QBRIfChtCTE9DS0VEX09VVENPTUVfU0NPUEVfTUVSR0UQBhIhCh1CTE9DS0VEX09VVE'
    'NPTUVfU0NPUEVfUkVMRUFTRRAH');

@$core.Deprecated('Use reviewDecisionScopeDescriptor instead')
const ReviewDecisionScope$json = {
  '1': 'ReviewDecisionScope',
  '2': [
    {'1': 'REVIEW_DECISION_SCOPE_UNSPECIFIED', '2': 0},
    {'1': 'REVIEW_DECISION_SCOPE_PLAN', '2': 1},
    {'1': 'REVIEW_DECISION_SCOPE_STEP', '2': 2},
    {'1': 'REVIEW_DECISION_SCOPE_PULL_REQUEST', '2': 3},
    {'1': 'REVIEW_DECISION_SCOPE_VERIFICATION', '2': 4},
    {'1': 'REVIEW_DECISION_SCOPE_RELEASE', '2': 5},
  ],
};

/// Descriptor for `ReviewDecisionScope`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List reviewDecisionScopeDescriptor = $convert.base64Decode(
    'ChNSZXZpZXdEZWNpc2lvblNjb3BlEiUKIVJFVklFV19ERUNJU0lPTl9TQ09QRV9VTlNQRUNJRk'
    'lFRBAAEh4KGlJFVklFV19ERUNJU0lPTl9TQ09QRV9QTEFOEAESHgoaUkVWSUVXX0RFQ0lTSU9O'
    'X1NDT1BFX1NURVAQAhImCiJSRVZJRVdfREVDSVNJT05fU0NPUEVfUFVMTF9SRVFVRVNUEAMSJg'
    'oiUkVWSUVXX0RFQ0lTSU9OX1NDT1BFX1ZFUklGSUNBVElPThAEEiEKHVJFVklFV19ERUNJU0lP'
    'Tl9TQ09QRV9SRUxFQVNFEAU=');

@$core.Deprecated('Use reviewDispositionDescriptor instead')
const ReviewDisposition$json = {
  '1': 'ReviewDisposition',
  '2': [
    {'1': 'REVIEW_DISPOSITION_UNSPECIFIED', '2': 0},
    {'1': 'REVIEW_DISPOSITION_APPROVE', '2': 1},
    {'1': 'REVIEW_DISPOSITION_REQUEST_CHANGES', '2': 2},
    {'1': 'REVIEW_DISPOSITION_REJECT', '2': 3},
    {'1': 'REVIEW_DISPOSITION_DEFER', '2': 4},
  ],
};

/// Descriptor for `ReviewDisposition`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List reviewDispositionDescriptor = $convert.base64Decode(
    'ChFSZXZpZXdEaXNwb3NpdGlvbhIiCh5SRVZJRVdfRElTUE9TSVRJT05fVU5TUEVDSUZJRUQQAB'
    'IeChpSRVZJRVdfRElTUE9TSVRJT05fQVBQUk9WRRABEiYKIlJFVklFV19ESVNQT1NJVElPTl9S'
    'RVFVRVNUX0NIQU5HRVMQAhIdChlSRVZJRVdfRElTUE9TSVRJT05fUkVKRUNUEAMSHAoYUkVWSU'
    'VXX0RJU1BPU0lUSU9OX0RFRkVSEAQ=');

@$core.Deprecated('Use rerunTriggerDescriptor instead')
const RerunTrigger$json = {
  '1': 'RerunTrigger',
  '2': [
    {'1': 'RERUN_TRIGGER_UNSPECIFIED', '2': 0},
    {'1': 'RERUN_TRIGGER_REVIEW_DECISION', '2': 1},
    {'1': 'RERUN_TRIGGER_MANUAL', '2': 2},
  ],
};

/// Descriptor for `RerunTrigger`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List rerunTriggerDescriptor = $convert.base64Decode(
    'CgxSZXJ1blRyaWdnZXISHQoZUkVSVU5fVFJJR0dFUl9VTlNQRUNJRklFRBAAEiEKHVJFUlVOX1'
    'RSSUdHRVJfUkVWSUVXX0RFQ0lTSU9OEAESGAoUUkVSVU5fVFJJR0dFUl9NQU5VQUwQAg==');

@$core.Deprecated('Use rerunSelectionStrategyDescriptor instead')
const RerunSelectionStrategy$json = {
  '1': 'RerunSelectionStrategy',
  '2': [
    {'1': 'RERUN_SELECTION_STRATEGY_UNSPECIFIED', '2': 0},
    {'1': 'RERUN_SELECTION_STRATEGY_TASK_IDS', '2': 1},
    {'1': 'RERUN_SELECTION_STRATEGY_STEP_IDS', '2': 2},
    {'1': 'RERUN_SELECTION_STRATEGY_PATHS', '2': 3},
  ],
};

/// Descriptor for `RerunSelectionStrategy`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List rerunSelectionStrategyDescriptor = $convert.base64Decode(
    'ChZSZXJ1blNlbGVjdGlvblN0cmF0ZWd5EigKJFJFUlVOX1NFTEVDVElPTl9TVFJBVEVHWV9VTl'
    'NQRUNJRklFRBAAEiUKIVJFUlVOX1NFTEVDVElPTl9TVFJBVEVHWV9UQVNLX0lEUxABEiUKIVJF'
    'UlVOX1NFTEVDVElPTl9TVFJBVEVHWV9TVEVQX0lEUxACEiIKHlJFUlVOX1NFTEVDVElPTl9TVF'
    'JBVEVHWV9QQVRIUxAD');

@$core.Deprecated('Use rerunExecutionStatusDescriptor instead')
const RerunExecutionStatus$json = {
  '1': 'RerunExecutionStatus',
  '2': [
    {'1': 'RERUN_EXECUTION_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'RERUN_EXECUTION_STATUS_PENDING', '2': 1},
    {'1': 'RERUN_EXECUTION_STATUS_SUCCEEDED', '2': 2},
    {'1': 'RERUN_EXECUTION_STATUS_FAILED', '2': 3},
    {'1': 'RERUN_EXECUTION_STATUS_PARTIAL', '2': 4},
  ],
};

/// Descriptor for `RerunExecutionStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List rerunExecutionStatusDescriptor = $convert.base64Decode(
    'ChRSZXJ1bkV4ZWN1dGlvblN0YXR1cxImCiJSRVJVTl9FWEVDVVRJT05fU1RBVFVTX1VOU1BFQ0'
    'lGSUVEEAASIgoeUkVSVU5fRVhFQ1VUSU9OX1NUQVRVU19QRU5ESU5HEAESJAogUkVSVU5fRVhF'
    'Q1VUSU9OX1NUQVRVU19TVUNDRUVERUQQAhIhCh1SRVJVTl9FWEVDVVRJT05fU1RBVFVTX0ZBSU'
    'xFRBADEiIKHlJFUlVOX0VYRUNVVElPTl9TVEFUVVNfUEFSVElBTBAE');

@$core.Deprecated('Use runEventStreamDescriptor instead')
const RunEventStream$json = {
  '1': 'RunEventStream',
  '2': [
    {'1': 'RUN_EVENT_STREAM_UNSPECIFIED', '2': 0},
    {'1': 'RUN_EVENT_STREAM_EXECUTION', '2': 1},
    {'1': 'RUN_EVENT_STREAM_RECOVERY', '2': 2},
    {'1': 'RUN_EVENT_STREAM_REVIEW', '2': 3},
    {'1': 'RUN_EVENT_STREAM_VERIFICATION', '2': 4},
    {'1': 'RUN_EVENT_STREAM_LIFECYCLE', '2': 5},
    {'1': 'RUN_EVENT_STREAM_CUSTOM', '2': 6},
  ],
};

/// Descriptor for `RunEventStream`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List runEventStreamDescriptor = $convert.base64Decode(
    'Cg5SdW5FdmVudFN0cmVhbRIgChxSVU5fRVZFTlRfU1RSRUFNX1VOU1BFQ0lGSUVEEAASHgoaUl'
    'VOX0VWRU5UX1NUUkVBTV9FWEVDVVRJT04QARIdChlSVU5fRVZFTlRfU1RSRUFNX1JFQ09WRVJZ'
    'EAISGwoXUlVOX0VWRU5UX1NUUkVBTV9SRVZJRVcQAxIhCh1SVU5fRVZFTlRfU1RSRUFNX1ZFUk'
    'lGSUNBVElPThAEEh4KGlJVTl9FVkVOVF9TVFJFQU1fTElGRUNZQ0xFEAUSGwoXUlVOX0VWRU5U'
    'X1NUUkVBTV9DVVNUT00QBg==');

@$core.Deprecated('Use taskMessageKindDescriptor instead')
const TaskMessageKind$json = {
  '1': 'TaskMessageKind',
  '2': [
    {'1': 'TASK_MESSAGE_KIND_UNSPECIFIED', '2': 0},
    {'1': 'TASK_MESSAGE_KIND_ARTIFACT_READY', '2': 1},
    {'1': 'TASK_MESSAGE_KIND_CLARIFICATION_REQUEST', '2': 2},
    {'1': 'TASK_MESSAGE_KIND_CLARIFICATION_RESPONSE', '2': 3},
  ],
};

/// Descriptor for `TaskMessageKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskMessageKindDescriptor = $convert.base64Decode(
    'Cg9UYXNrTWVzc2FnZUtpbmQSIQodVEFTS19NRVNTQUdFX0tJTkRfVU5TUEVDSUZJRUQQABIkCi'
    'BUQVNLX01FU1NBR0VfS0lORF9BUlRJRkFDVF9SRUFEWRABEisKJ1RBU0tfTUVTU0FHRV9LSU5E'
    'X0NMQVJJRklDQVRJT05fUkVRVUVTVBACEiwKKFRBU0tfTUVTU0FHRV9LSU5EX0NMQVJJRklDQV'
    'RJT05fUkVTUE9OU0UQAw==');

@$core.Deprecated('Use leaseLifecycleStateDescriptor instead')
const LeaseLifecycleState$json = {
  '1': 'LeaseLifecycleState',
  '2': [
    {'1': 'LEASE_LIFECYCLE_STATE_UNSPECIFIED', '2': 0},
    {'1': 'LEASE_ISSUED', '2': 1},
    {'1': 'LEASE_ACTIVE', '2': 2},
    {'1': 'LEASE_RELEASED', '2': 3},
    {'1': 'LEASE_EXPIRED', '2': 4},
    {'1': 'LEASE_CANCELLED', '2': 5},
    {'1': 'LEASE_REJECTED', '2': 6},
  ],
};

/// Descriptor for `LeaseLifecycleState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List leaseLifecycleStateDescriptor = $convert.base64Decode(
    'ChNMZWFzZUxpZmVjeWNsZVN0YXRlEiUKIUxFQVNFX0xJRkVDWUNMRV9TVEFURV9VTlNQRUNJRk'
    'lFRBAAEhAKDExFQVNFX0lTU1VFRBABEhAKDExFQVNFX0FDVElWRRACEhIKDkxFQVNFX1JFTEVB'
    'U0VEEAMSEQoNTEVBU0VfRVhQSVJFRBAEEhMKD0xFQVNFX0NBTkNFTExFRBAFEhIKDkxFQVNFX1'
    'JFSkVDVEVEEAY=');

@$core.Deprecated('Use runLifecycleStateDescriptor instead')
const RunLifecycleState$json = {
  '1': 'RunLifecycleState',
  '2': [
    {'1': 'RUN_LIFECYCLE_STATE_UNSPECIFIED', '2': 0},
    {'1': 'RUN_PENDING', '2': 1},
    {'1': 'RUN_EXECUTING', '2': 2},
    {'1': 'RUN_PAUSED', '2': 3},
    {'1': 'RUN_CANCELLING', '2': 4},
    {'1': 'RUN_CANCELLED', '2': 5},
    {'1': 'RUN_FAILED', '2': 6},
    {'1': 'RUN_COMPLETE', '2': 7},
    {'1': 'RUN_BLOCKED', '2': 8},
  ],
};

/// Descriptor for `RunLifecycleState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List runLifecycleStateDescriptor = $convert.base64Decode(
    'ChFSdW5MaWZlY3ljbGVTdGF0ZRIjCh9SVU5fTElGRUNZQ0xFX1NUQVRFX1VOU1BFQ0lGSUVEEA'
    'ASDwoLUlVOX1BFTkRJTkcQARIRCg1SVU5fRVhFQ1VUSU5HEAISDgoKUlVOX1BBVVNFRBADEhIK'
    'DlJVTl9DQU5DRUxMSU5HEAQSEQoNUlVOX0NBTkNFTExFRBAFEg4KClJVTl9GQUlMRUQQBhIQCg'
    'xSVU5fQ09NUExFVEUQBxIPCgtSVU5fQkxPQ0tFRBAI');

@$core.Deprecated('Use stepLifecycleStateDescriptor instead')
const StepLifecycleState$json = {
  '1': 'StepLifecycleState',
  '2': [
    {'1': 'STEP_LIFECYCLE_STATE_UNSPECIFIED', '2': 0},
    {'1': 'STEP_PENDING', '2': 1},
    {'1': 'STEP_READY', '2': 2},
    {'1': 'STEP_LEASED', '2': 3},
    {'1': 'STEP_RUNNING', '2': 4},
    {'1': 'STEP_COMPLETE', '2': 5},
    {'1': 'STEP_FAILED', '2': 6},
    {'1': 'STEP_CANCELLED', '2': 7},
    {'1': 'STEP_BLOCKED', '2': 8},
  ],
};

/// Descriptor for `StepLifecycleState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List stepLifecycleStateDescriptor = $convert.base64Decode(
    'ChJTdGVwTGlmZWN5Y2xlU3RhdGUSJAogU1RFUF9MSUZFQ1lDTEVfU1RBVEVfVU5TUEVDSUZJRU'
    'QQABIQCgxTVEVQX1BFTkRJTkcQARIOCgpTVEVQX1JFQURZEAISDwoLU1RFUF9MRUFTRUQQAxIQ'
    'CgxTVEVQX1JVTk5JTkcQBBIRCg1TVEVQX0NPTVBMRVRFEAUSDwoLU1RFUF9GQUlMRUQQBhISCg'
    '5TVEVQX0NBTkNFTExFRBAHEhAKDFNURVBfQkxPQ0tFRBAI');

@$core.Deprecated('Use leaseRejectionReasonDescriptor instead')
const LeaseRejectionReason$json = {
  '1': 'LeaseRejectionReason',
  '2': [
    {'1': 'LEASE_REJECTION_REASON_UNSPECIFIED', '2': 0},
    {'1': 'LEASE_REJECTION_STALE_FENCING_TOKEN', '2': 1},
    {'1': 'LEASE_REJECTION_EXPIRED', '2': 2},
    {'1': 'LEASE_REJECTION_SESSION_MISMATCH', '2': 3},
    {'1': 'LEASE_REJECTION_UNKNOWN_LEASE', '2': 4},
    {'1': 'LEASE_REJECTION_STEP_ALREADY_TERMINAL', '2': 5},
    {'1': 'LEASE_REJECTION_RUN_NOT_EXECUTABLE', '2': 6},
    {'1': 'LEASE_REJECTION_DEPENDENCY_BLOCKED', '2': 7},
    {'1': 'LEASE_REJECTION_LEASE_SUPERSEDED', '2': 8},
  ],
};

/// Descriptor for `LeaseRejectionReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List leaseRejectionReasonDescriptor = $convert.base64Decode(
    'ChRMZWFzZVJlamVjdGlvblJlYXNvbhImCiJMRUFTRV9SRUpFQ1RJT05fUkVBU09OX1VOU1BFQ0'
    'lGSUVEEAASJwojTEVBU0VfUkVKRUNUSU9OX1NUQUxFX0ZFTkNJTkdfVE9LRU4QARIbChdMRUFT'
    'RV9SRUpFQ1RJT05fRVhQSVJFRBACEiQKIExFQVNFX1JFSkVDVElPTl9TRVNTSU9OX01JU01BVE'
    'NIEAMSIQodTEVBU0VfUkVKRUNUSU9OX1VOS05PV05fTEVBU0UQBBIpCiVMRUFTRV9SRUpFQ1RJ'
    'T05fU1RFUF9BTFJFQURZX1RFUk1JTkFMEAUSJgoiTEVBU0VfUkVKRUNUSU9OX1JVTl9OT1RfRV'
    'hFQ1VUQUJMRRAGEiYKIkxFQVNFX1JFSkVDVElPTl9ERVBFTkRFTkNZX0JMT0NLRUQQBxIkCiBM'
    'RUFTRV9SRUpFQ1RJT05fTEVBU0VfU1VQRVJTRURFRBAI');

@$core.Deprecated('Use recoveryEventKindDescriptor instead')
const RecoveryEventKind$json = {
  '1': 'RecoveryEventKind',
  '2': [
    {'1': 'RECOVERY_EVENT_KIND_UNSPECIFIED', '2': 0},
    {'1': 'RECOVERY_EVENT_ORCHESTRATOR_STARTED', '2': 1},
    {'1': 'RECOVERY_EVENT_STATE_RELOADED', '2': 2},
    {'1': 'RECOVERY_EVENT_LEASE_RESTORED', '2': 3},
    {'1': 'RECOVERY_EVENT_LEASE_REJECTED', '2': 4},
    {'1': 'RECOVERY_EVENT_STEP_REQUEUED', '2': 5},
    {'1': 'RECOVERY_EVENT_STEP_BLOCKED', '2': 6},
    {'1': 'RECOVERY_EVENT_RUN_RECOVERED', '2': 7},
    {'1': 'RECOVERY_EVENT_CANCELLATION_REQUESTED', '2': 8},
    {'1': 'RECOVERY_EVENT_CANCELLATION_ACKNOWLEDGED', '2': 9},
  ],
};

/// Descriptor for `RecoveryEventKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List recoveryEventKindDescriptor = $convert.base64Decode(
    'ChFSZWNvdmVyeUV2ZW50S2luZBIjCh9SRUNPVkVSWV9FVkVOVF9LSU5EX1VOU1BFQ0lGSUVEEA'
    'ASJwojUkVDT1ZFUllfRVZFTlRfT1JDSEVTVFJBVE9SX1NUQVJURUQQARIhCh1SRUNPVkVSWV9F'
    'VkVOVF9TVEFURV9SRUxPQURFRBACEiEKHVJFQ09WRVJZX0VWRU5UX0xFQVNFX1JFU1RPUkVEEA'
    'MSIQodUkVDT1ZFUllfRVZFTlRfTEVBU0VfUkVKRUNURUQQBBIgChxSRUNPVkVSWV9FVkVOVF9T'
    'VEVQX1JFUVVFVUVEEAUSHwobUkVDT1ZFUllfRVZFTlRfU1RFUF9CTE9DS0VEEAYSIAocUkVDT1'
    'ZFUllfRVZFTlRfUlVOX1JFQ09WRVJFRBAHEikKJVJFQ09WRVJZX0VWRU5UX0NBTkNFTExBVElP'
    'Tl9SRVFVRVNURUQQCBIsCihSRUNPVkVSWV9FVkVOVF9DQU5DRUxMQVRJT05fQUNLTk9XTEVER0'
    'VEEAk=');

@$core.Deprecated('Use controlPlaneRunActionDescriptor instead')
const ControlPlaneRunAction$json = {
  '1': 'ControlPlaneRunAction',
  '2': [
    {'1': 'CONTROL_PLANE_RUN_ACTION_UNSPECIFIED', '2': 0},
    {'1': 'CONTROL_PLANE_RUN_ACTION_PAUSE', '2': 1},
    {'1': 'CONTROL_PLANE_RUN_ACTION_RESUME', '2': 2},
    {'1': 'CONTROL_PLANE_RUN_ACTION_INTERRUPT', '2': 3},
    {'1': 'CONTROL_PLANE_RUN_ACTION_CANCEL', '2': 4},
  ],
};

/// Descriptor for `ControlPlaneRunAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List controlPlaneRunActionDescriptor = $convert.base64Decode(
    'ChVDb250cm9sUGxhbmVSdW5BY3Rpb24SKAokQ09OVFJPTF9QTEFORV9SVU5fQUNUSU9OX1VOU1'
    'BFQ0lGSUVEEAASIgoeQ09OVFJPTF9QTEFORV9SVU5fQUNUSU9OX1BBVVNFEAESIwofQ09OVFJP'
    'TF9QTEFORV9SVU5fQUNUSU9OX1JFU1VNRRACEiYKIkNPTlRST0xfUExBTkVfUlVOX0FDVElPTl'
    '9JTlRFUlJVUFQQAxIjCh9DT05UUk9MX1BMQU5FX1JVTl9BQ1RJT05fQ0FOQ0VMEAQ=');

@$core.Deprecated('Use datasetRefDescriptor instead')
const DatasetRef$json = {
  '1': 'DatasetRef',
  '2': [
    {'1': 'dataset_id', '3': 1, '4': 1, '5': 9, '10': 'datasetId'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'uri', '17': true},
    {'1': 'sha256', '3': 3, '4': 1, '5': 9, '10': 'sha256'},
    {'1': 'format', '3': 4, '4': 1, '5': 9, '10': 'format'},
    {'1': 'split', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'split', '17': true},
    {
      '1': 'size_bytes',
      '3': 6,
      '4': 1,
      '5': 4,
      '9': 2,
      '10': 'sizeBytes',
      '17': true
    },
    {
      '1': 'description',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'description',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_uri'},
    {'1': '_split'},
    {'1': '_size_bytes'},
    {'1': '_description'},
  ],
};

/// Descriptor for `DatasetRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List datasetRefDescriptor = $convert.base64Decode(
    'CgpEYXRhc2V0UmVmEh0KCmRhdGFzZXRfaWQYASABKAlSCWRhdGFzZXRJZBIVCgN1cmkYAiABKA'
    'lIAFIDdXJpiAEBEhYKBnNoYTI1NhgDIAEoCVIGc2hhMjU2EhYKBmZvcm1hdBgEIAEoCVIGZm9y'
    'bWF0EhkKBXNwbGl0GAUgASgJSAFSBXNwbGl0iAEBEiIKCnNpemVfYnl0ZXMYBiABKARIAlIJc2'
    'l6ZUJ5dGVziAEBEiUKC2Rlc2NyaXB0aW9uGAcgASgJSANSC2Rlc2NyaXB0aW9uiAEBEjcKCmV4'
    'dGVuc2lvbnMYCCABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25zQgYKBF'
    '91cmlCCAoGX3NwbGl0Qg0KC19zaXplX2J5dGVzQg4KDF9kZXNjcmlwdGlvbg==');

@$core.Deprecated('Use acceptanceCriteriaDescriptor instead')
const AcceptanceCriteria$json = {
  '1': 'AcceptanceCriteria',
  '2': [
    {'1': 'metric', '3': 1, '4': 1, '5': 9, '10': 'metric'},
    {'1': 'direction', '3': 2, '4': 1, '5': 9, '10': 'direction'},
    {'1': 'threshold', '3': 3, '4': 1, '5': 1, '10': 'threshold'},
    {
      '1': 'min_effect_size',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'minEffectSize',
      '17': true
    },
    {
      '1': 'max_variance',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'maxVariance',
      '17': true
    },
    {
      '1': 'confidence_level',
      '3': 6,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'confidenceLevel',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_min_effect_size'},
    {'1': '_max_variance'},
    {'1': '_confidence_level'},
  ],
};

/// Descriptor for `AcceptanceCriteria`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptanceCriteriaDescriptor = $convert.base64Decode(
    'ChJBY2NlcHRhbmNlQ3JpdGVyaWESFgoGbWV0cmljGAEgASgJUgZtZXRyaWMSHAoJZGlyZWN0aW'
    '9uGAIgASgJUglkaXJlY3Rpb24SHAoJdGhyZXNob2xkGAMgASgBUgl0aHJlc2hvbGQSKwoPbWlu'
    'X2VmZmVjdF9zaXplGAQgASgBSABSDW1pbkVmZmVjdFNpemWIAQESJgoMbWF4X3ZhcmlhbmNlGA'
    'UgASgBSAFSC21heFZhcmlhbmNliAEBEi4KEGNvbmZpZGVuY2VfbGV2ZWwYBiABKAFIAlIPY29u'
    'ZmlkZW5jZUxldmVsiAEBEjcKCmV4dGVuc2lvbnMYByABKAsyFy5nb29nbGUucHJvdG9idWYuU3'
    'RydWN0UgpleHRlbnNpb25zQhIKEF9taW5fZWZmZWN0X3NpemVCDwoNX21heF92YXJpYW5jZUIT'
    'ChFfY29uZmlkZW5jZV9sZXZlbA==');

@$core.Deprecated('Use experimentSpecDescriptor instead')
const ExperimentSpec$json = {
  '1': 'ExperimentSpec',
  '2': [
    {'1': 'experiment_id', '3': 1, '4': 1, '5': 9, '10': 'experimentId'},
    {'1': 'objective', '3': 2, '4': 1, '5': 9, '10': 'objective'},
    {
      '1': 'hypothesis',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'hypothesis',
      '17': true
    },
    {
      '1': 'model_family',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'modelFamily',
      '17': true
    },
    {'1': 'seeds', '3': 5, '4': 3, '5': 3, '10': 'seeds'},
    {
      '1': 'dataset_refs',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.DatasetRef',
      '10': 'datasetRefs'
    },
    {
      '1': 'acceptance',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AcceptanceCriteria',
      '10': 'acceptance'
    },
    {
      '1': 'constraints',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'constraints'
    },
    {
      '1': 'extensions',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_hypothesis'},
    {'1': '_model_family'},
  ],
};

/// Descriptor for `ExperimentSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List experimentSpecDescriptor = $convert.base64Decode(
    'Cg5FeHBlcmltZW50U3BlYxIjCg1leHBlcmltZW50X2lkGAEgASgJUgxleHBlcmltZW50SWQSHA'
    'oJb2JqZWN0aXZlGAIgASgJUglvYmplY3RpdmUSIwoKaHlwb3RoZXNpcxgDIAEoCUgAUgpoeXBv'
    'dGhlc2lziAEBEiYKDG1vZGVsX2ZhbWlseRgEIAEoCUgBUgttb2RlbEZhbWlseYgBARIUCgVzZW'
    'VkcxgFIAMoA1IFc2VlZHMSSgoMZGF0YXNldF9yZWZzGAYgAygLMicubW9uYXJjaGljLmFnZW50'
    'X3Byb3RvY29sLnYxLkRhdGFzZXRSZWZSC2RhdGFzZXRSZWZzEk8KCmFjY2VwdGFuY2UYByABKA'
    'syLy5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuQWNjZXB0YW5jZUNyaXRlcmlhUgphY2Nl'
    'cHRhbmNlEjkKC2NvbnN0cmFpbnRzGAggASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFILY2'
    '9uc3RyYWludHMSNwoKZXh0ZW5zaW9ucxgJIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RS'
    'CmV4dGVuc2lvbnNCDQoLX2h5cG90aGVzaXNCDwoNX21vZGVsX2ZhbWlseQ==');

@$core.Deprecated('Use objectiveSpecDescriptor instead')
const ObjectiveSpec$json = {
  '1': 'ObjectiveSpec',
  '2': [
    {'1': 'metric_key', '3': 1, '4': 1, '5': 9, '10': 'metricKey'},
    {'1': 'direction', '3': 2, '4': 1, '5': 9, '10': 'direction'},
    {'1': 'target', '3': 3, '4': 1, '5': 1, '9': 0, '10': 'target', '17': true},
    {
      '1': 'min_delta',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'minDelta',
      '17': true
    },
    {
      '1': 'tolerance',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'tolerance',
      '17': true
    },
    {
      '1': 'report_file',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'reportFile',
      '17': true
    },
    {
      '1': 'report_task_id',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'reportTaskId',
      '17': true
    },
    {'1': 'weight', '3': 8, '4': 1, '5': 1, '9': 5, '10': 'weight', '17': true},
    {
      '1': 'description',
      '3': 9,
      '4': 1,
      '5': 9,
      '9': 6,
      '10': 'description',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_target'},
    {'1': '_min_delta'},
    {'1': '_tolerance'},
    {'1': '_report_file'},
    {'1': '_report_task_id'},
    {'1': '_weight'},
    {'1': '_description'},
  ],
};

/// Descriptor for `ObjectiveSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectiveSpecDescriptor = $convert.base64Decode(
    'Cg1PYmplY3RpdmVTcGVjEh0KCm1ldHJpY19rZXkYASABKAlSCW1ldHJpY0tleRIcCglkaXJlY3'
    'Rpb24YAiABKAlSCWRpcmVjdGlvbhIbCgZ0YXJnZXQYAyABKAFIAFIGdGFyZ2V0iAEBEiAKCW1p'
    'bl9kZWx0YRgEIAEoAUgBUghtaW5EZWx0YYgBARIhCgl0b2xlcmFuY2UYBSABKAFIAlIJdG9sZX'
    'JhbmNliAEBEiQKC3JlcG9ydF9maWxlGAYgASgJSANSCnJlcG9ydEZpbGWIAQESKQoOcmVwb3J0'
    'X3Rhc2tfaWQYByABKAlIBFIMcmVwb3J0VGFza0lkiAEBEhsKBndlaWdodBgIIAEoAUgFUgZ3ZW'
    'lnaHSIAQESJQoLZGVzY3JpcHRpb24YCSABKAlIBlILZGVzY3JpcHRpb26IAQESNwoKZXh0ZW5z'
    'aW9ucxgKIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnNCCQoHX3Rhcm'
    'dldEIMCgpfbWluX2RlbHRhQgwKCl90b2xlcmFuY2VCDgoMX3JlcG9ydF9maWxlQhEKD19yZXBv'
    'cnRfdGFza19pZEIJCgdfd2VpZ2h0Qg4KDF9kZXNjcmlwdGlvbg==');

@$core.Deprecated('Use evalResultDescriptor instead')
const EvalResult$json = {
  '1': 'EvalResult',
  '2': [
    {'1': 'metric', '3': 1, '4': 1, '5': 9, '10': 'metric'},
    {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
    {
      '1': 'lower_ci',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'lowerCi',
      '17': true
    },
    {
      '1': 'upper_ci',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'upperCi',
      '17': true
    },
    {
      '1': 'variance',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'variance',
      '17': true
    },
    {'1': 'seed', '3': 6, '4': 1, '5': 3, '9': 3, '10': 'seed', '17': true},
    {'1': 'passed', '3': 7, '4': 1, '5': 8, '10': 'passed'},
    {'1': 'notes', '3': 8, '4': 1, '5': 9, '9': 4, '10': 'notes', '17': true},
    {
      '1': 'extensions',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_lower_ci'},
    {'1': '_upper_ci'},
    {'1': '_variance'},
    {'1': '_seed'},
    {'1': '_notes'},
  ],
};

/// Descriptor for `EvalResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evalResultDescriptor = $convert.base64Decode(
    'CgpFdmFsUmVzdWx0EhYKBm1ldHJpYxgBIAEoCVIGbWV0cmljEhQKBXZhbHVlGAIgASgBUgV2YW'
    'x1ZRIeCghsb3dlcl9jaRgDIAEoAUgAUgdsb3dlckNpiAEBEh4KCHVwcGVyX2NpGAQgASgBSAFS'
    'B3VwcGVyQ2mIAQESHwoIdmFyaWFuY2UYBSABKAFIAlIIdmFyaWFuY2WIAQESFwoEc2VlZBgGIA'
    'EoA0gDUgRzZWVkiAEBEhYKBnBhc3NlZBgHIAEoCFIGcGFzc2VkEhkKBW5vdGVzGAggASgJSARS'
    'BW5vdGVziAEBEjcKCmV4dGVuc2lvbnMYCSABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0Ug'
    'pleHRlbnNpb25zQgsKCV9sb3dlcl9jaUILCglfdXBwZXJfY2lCCwoJX3ZhcmlhbmNlQgcKBV9z'
    'ZWVkQggKBl9ub3Rlcw==');

@$core.Deprecated('Use failureClassDescriptor instead')
const FailureClass$json = {
  '1': 'FailureClass',
  '2': [
    {'1': 'category', '3': 1, '4': 1, '5': 9, '10': 'category'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'retryable', '3': 3, '4': 1, '5': 8, '10': 'retryable'},
    {'1': 'detail', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'detail', '17': true},
    {'1': 'scope', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'scope', '17': true},
    {'1': 'source', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'source', '17': true},
    {
      '1': 'next_action',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'nextAction',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_detail'},
    {'1': '_scope'},
    {'1': '_source'},
    {'1': '_next_action'},
  ],
};

/// Descriptor for `FailureClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List failureClassDescriptor = $convert.base64Decode(
    'CgxGYWlsdXJlQ2xhc3MSGgoIY2F0ZWdvcnkYASABKAlSCGNhdGVnb3J5EhIKBGNvZGUYAiABKA'
    'lSBGNvZGUSHAoJcmV0cnlhYmxlGAMgASgIUglyZXRyeWFibGUSGwoGZGV0YWlsGAQgASgJSABS'
    'BmRldGFpbIgBARIZCgVzY29wZRgFIAEoCUgBUgVzY29wZYgBARIbCgZzb3VyY2UYBiABKAlIAl'
    'IGc291cmNliAEBEiQKC25leHRfYWN0aW9uGAcgASgJSANSCm5leHRBY3Rpb26IAQESNwoKZXh0'
    'ZW5zaW9ucxgIIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnNCCQoHX2'
    'RldGFpbEIICgZfc2NvcGVCCQoHX3NvdXJjZUIOCgxfbmV4dF9hY3Rpb24=');

@$core.Deprecated('Use provenanceDescriptor instead')
const Provenance$json = {
  '1': 'Provenance',
  '2': [
    {'1': 'prompt_sha256', '3': 1, '4': 1, '5': 9, '10': 'promptSha256'},
    {'1': 'code_sha256', '3': 2, '4': 1, '5': 9, '10': 'codeSha256'},
    {'1': 'dataset_sha256', '3': 3, '4': 3, '5': 9, '10': 'datasetSha256'},
    {'1': 'runtime', '3': 4, '4': 1, '5': 9, '10': 'runtime'},
    {'1': 'model', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'model', '17': true},
    {'1': 'runner', '3': 6, '4': 1, '5': 9, '10': 'runner'},
    {'1': 'orchestrator', '3': 7, '4': 1, '5': 9, '10': 'orchestrator'},
    {
      '1': 'task_spec_sha256',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'taskSpecSha256',
      '17': true
    },
    {
      '1': 'pipeline_sha256',
      '3': 9,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'pipelineSha256',
      '17': true
    },
    {
      '1': 'command_sha256',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'commandSha256',
      '17': true
    },
    {'1': 'created_at', '3': 11, '4': 1, '5': 9, '10': 'createdAt'},
    {
      '1': 'source_task_id',
      '3': 12,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'sourceTaskId',
      '17': true
    },
    {
      '1': 'dataset_refs',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.DatasetRef',
      '10': 'datasetRefs'
    },
    {
      '1': 'extensions',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_model'},
    {'1': '_task_spec_sha256'},
    {'1': '_pipeline_sha256'},
    {'1': '_command_sha256'},
    {'1': '_source_task_id'},
  ],
};

/// Descriptor for `Provenance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List provenanceDescriptor = $convert.base64Decode(
    'CgpQcm92ZW5hbmNlEiMKDXByb21wdF9zaGEyNTYYASABKAlSDHByb21wdFNoYTI1NhIfCgtjb2'
    'RlX3NoYTI1NhgCIAEoCVIKY29kZVNoYTI1NhIlCg5kYXRhc2V0X3NoYTI1NhgDIAMoCVINZGF0'
    'YXNldFNoYTI1NhIYCgdydW50aW1lGAQgASgJUgdydW50aW1lEhkKBW1vZGVsGAUgASgJSABSBW'
    '1vZGVsiAEBEhYKBnJ1bm5lchgGIAEoCVIGcnVubmVyEiIKDG9yY2hlc3RyYXRvchgHIAEoCVIM'
    'b3JjaGVzdHJhdG9yEi0KEHRhc2tfc3BlY19zaGEyNTYYCCABKAlIAVIOdGFza1NwZWNTaGEyNT'
    'aIAQESLAoPcGlwZWxpbmVfc2hhMjU2GAkgASgJSAJSDnBpcGVsaW5lU2hhMjU2iAEBEioKDmNv'
    'bW1hbmRfc2hhMjU2GAogASgJSANSDWNvbW1hbmRTaGEyNTaIAQESHQoKY3JlYXRlZF9hdBgLIA'
    'EoCVIJY3JlYXRlZEF0EikKDnNvdXJjZV90YXNrX2lkGAwgASgJSARSDHNvdXJjZVRhc2tJZIgB'
    'ARJKCgxkYXRhc2V0X3JlZnMYDSADKAsyJy5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuRG'
    'F0YXNldFJlZlILZGF0YXNldFJlZnMSNwoKZXh0ZW5zaW9ucxgOIAEoCzIXLmdvb2dsZS5wcm90'
    'b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnNCCAoGX21vZGVsQhMKEV90YXNrX3NwZWNfc2hhMjU2Qh'
    'IKEF9waXBlbGluZV9zaGEyNTZCEQoPX2NvbW1hbmRfc2hhMjU2QhEKD19zb3VyY2VfdGFza19p'
    'ZA==');

@$core.Deprecated('Use intentDescriptor instead')
const Intent$json = {
  '1': 'Intent',
  '2': [
    {'1': 'intent_id', '3': 1, '4': 1, '5': 9, '10': 'intentId'},
    {'1': 'submitted_at', '3': 2, '4': 1, '5': 4, '10': 'submittedAt'},
    {'1': 'submitter', '3': 3, '4': 1, '5': 9, '10': 'submitter'},
    {'1': 'policy_version', '3': 4, '4': 1, '5': 9, '10': 'policyVersion'},
    {'1': 'target_repo', '3': 5, '4': 1, '5': 9, '10': 'targetRepo'},
    {'1': 'target_ref', '3': 6, '4': 1, '5': 9, '10': 'targetRef'},
    {'1': 'goal', '3': 7, '4': 1, '5': 9, '10': 'goal'},
    {
      '1': 'constraints',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'constraints'
    },
    {'1': 'context_digest', '3': 9, '4': 1, '5': 9, '10': 'contextDigest'},
    {
      '1': 'intent_class',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.IntentClass',
      '10': 'intentClass'
    },
  ],
};

/// Descriptor for `Intent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List intentDescriptor = $convert.base64Decode(
    'CgZJbnRlbnQSGwoJaW50ZW50X2lkGAEgASgJUghpbnRlbnRJZBIhCgxzdWJtaXR0ZWRfYXQYAi'
    'ABKARSC3N1Ym1pdHRlZEF0EhwKCXN1Ym1pdHRlchgDIAEoCVIJc3VibWl0dGVyEiUKDnBvbGlj'
    'eV92ZXJzaW9uGAQgASgJUg1wb2xpY3lWZXJzaW9uEh8KC3RhcmdldF9yZXBvGAUgASgJUgp0YX'
    'JnZXRSZXBvEh0KCnRhcmdldF9yZWYYBiABKAlSCXRhcmdldFJlZhISCgRnb2FsGAcgASgJUgRn'
    'b2FsEjkKC2NvbnN0cmFpbnRzGAggASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFILY29uc3'
    'RyYWludHMSJQoOY29udGV4dF9kaWdlc3QYCSABKAlSDWNvbnRleHREaWdlc3QSSwoMaW50ZW50'
    'X2NsYXNzGAogASgOMigubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkludGVudENsYXNzUg'
    'tpbnRlbnRDbGFzcw==');

@$core.Deprecated('Use bootstrapIntentDescriptor instead')
const BootstrapIntent$json = {
  '1': 'BootstrapIntent',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'bootstrap_intent_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'bootstrapIntentId'
    },
    {'1': 'project_key', '3': 3, '4': 1, '5': 9, '10': 'projectKey'},
    {'1': 'target_repos', '3': 4, '4': 3, '5': 9, '10': 'targetRepos'},
    {
      '1': 'pipeline_template_id',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'pipelineTemplateId',
      '17': true
    },
    {'1': 'campaign_goal', '3': 6, '4': 1, '5': 9, '10': 'campaignGoal'},
    {'1': 'notes', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'notes', '17': true},
    {'1': 'priority_profile', '3': 8, '4': 1, '5': 9, '10': 'priorityProfile'},
    {'1': 'created_at_ms', '3': 9, '4': 1, '5': 4, '10': 'createdAtMs'},
  ],
  '8': [
    {'1': '_pipeline_template_id'},
    {'1': '_notes'},
  ],
};

/// Descriptor for `BootstrapIntent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootstrapIntentDescriptor = $convert.base64Decode(
    'Cg9Cb290c3RyYXBJbnRlbnQSKQoQY29udHJhY3RfdmVyc2lvbhgBIAEoCVIPY29udHJhY3RWZX'
    'JzaW9uEi4KE2Jvb3RzdHJhcF9pbnRlbnRfaWQYAiABKAlSEWJvb3RzdHJhcEludGVudElkEh8K'
    'C3Byb2plY3Rfa2V5GAMgASgJUgpwcm9qZWN0S2V5EiEKDHRhcmdldF9yZXBvcxgEIAMoCVILdG'
    'FyZ2V0UmVwb3MSNQoUcGlwZWxpbmVfdGVtcGxhdGVfaWQYBSABKAlIAFIScGlwZWxpbmVUZW1w'
    'bGF0ZUlkiAEBEiMKDWNhbXBhaWduX2dvYWwYBiABKAlSDGNhbXBhaWduR29hbBIZCgVub3Rlcx'
    'gHIAEoCUgBUgVub3Rlc4gBARIpChBwcmlvcml0eV9wcm9maWxlGAggASgJUg9wcmlvcml0eVBy'
    'b2ZpbGUSIgoNY3JlYXRlZF9hdF9tcxgJIAEoBFILY3JlYXRlZEF0TXNCFwoVX3BpcGVsaW5lX3'
    'RlbXBsYXRlX2lkQggKBl9ub3Rlcw==');

@$core.Deprecated('Use agentRunnerPreferenceDescriptor instead')
const AgentRunnerPreference$json = {
  '1': 'AgentRunnerPreference',
  '2': [
    {'1': 'runner_id', '3': 1, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'model', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'model', '17': true},
    {
      '1': 'provider',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'provider',
      '17': true
    },
    {
      '1': 'reasoning_effort',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'reasoningEffort',
      '17': true
    },
    {
      '1': 'required_capabilities',
      '3': 5,
      '4': 3,
      '5': 9,
      '10': 'requiredCapabilities'
    },
    {'1': 'labels', '3': 6, '4': 3, '5': 9, '10': 'labels'},
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_model'},
    {'1': '_provider'},
    {'1': '_reasoning_effort'},
  ],
};

/// Descriptor for `AgentRunnerPreference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentRunnerPreferenceDescriptor = $convert.base64Decode(
    'ChVBZ2VudFJ1bm5lclByZWZlcmVuY2USGwoJcnVubmVyX2lkGAEgASgJUghydW5uZXJJZBIZCg'
    'Vtb2RlbBgCIAEoCUgAUgVtb2RlbIgBARIfCghwcm92aWRlchgDIAEoCUgBUghwcm92aWRlcogB'
    'ARIuChByZWFzb25pbmdfZWZmb3J0GAQgASgJSAJSD3JlYXNvbmluZ0VmZm9ydIgBARIzChVyZX'
    'F1aXJlZF9jYXBhYmlsaXRpZXMYBSADKAlSFHJlcXVpcmVkQ2FwYWJpbGl0aWVzEhYKBmxhYmVs'
    'cxgGIAMoCVIGbGFiZWxzEjcKCmV4dGVuc2lvbnMYByABKAsyFy5nb29nbGUucHJvdG9idWYuU3'
    'RydWN0UgpleHRlbnNpb25zQggKBl9tb2RlbEILCglfcHJvdmlkZXJCEwoRX3JlYXNvbmluZ19l'
    'ZmZvcnQ=');

@$core.Deprecated('Use agentProfileDescriptor instead')
const AgentProfile$json = {
  '1': 'AgentProfile',
  '2': [
    {'1': 'agent_id', '3': 1, '4': 1, '5': 9, '10': 'agentId'},
    {'1': 'role_id', '3': 2, '4': 1, '5': 9, '10': 'roleId'},
    {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
    {
      '1': 'description',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'description',
      '17': true
    },
    {
      '1': 'runner_preferences',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AgentRunnerPreference',
      '10': 'runnerPreferences'
    },
    {
      '1': 'allowed_network_modes',
      '3': 6,
      '4': 3,
      '5': 9,
      '10': 'allowedNetworkModes'
    },
    {
      '1': 'requires_human_review',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'requiresHumanReview'
    },
    {
      '1': 'required_skill_ids',
      '3': 8,
      '4': 3,
      '5': 9,
      '10': 'requiredSkillIds'
    },
    {'1': 'required_mcp_ids', '3': 9, '4': 3, '5': 9, '10': 'requiredMcpIds'},
    {
      '1': 'extensions',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `AgentProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentProfileDescriptor = $convert.base64Decode(
    'CgxBZ2VudFByb2ZpbGUSGQoIYWdlbnRfaWQYASABKAlSB2FnZW50SWQSFwoHcm9sZV9pZBgCIA'
    'EoCVIGcm9sZUlkEiEKDGRpc3BsYXlfbmFtZRgDIAEoCVILZGlzcGxheU5hbWUSJQoLZGVzY3Jp'
    'cHRpb24YBCABKAlIAFILZGVzY3JpcHRpb26IAQESYQoScnVubmVyX3ByZWZlcmVuY2VzGAUgAy'
    'gLMjIubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkFnZW50UnVubmVyUHJlZmVyZW5jZVIR'
    'cnVubmVyUHJlZmVyZW5jZXMSMgoVYWxsb3dlZF9uZXR3b3JrX21vZGVzGAYgAygJUhNhbGxvd2'
    'VkTmV0d29ya01vZGVzEjIKFXJlcXVpcmVzX2h1bWFuX3JldmlldxgHIAEoCFITcmVxdWlyZXNI'
    'dW1hblJldmlldxIsChJyZXF1aXJlZF9za2lsbF9pZHMYCCADKAlSEHJlcXVpcmVkU2tpbGxJZH'
    'MSKAoQcmVxdWlyZWRfbWNwX2lkcxgJIAMoCVIOcmVxdWlyZWRNY3BJZHMSNwoKZXh0ZW5zaW9u'
    'cxgKIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnNCDgoMX2Rlc2NyaX'
    'B0aW9u');

@$core.Deprecated('Use resolvedAgentRunnerDescriptor instead')
const ResolvedAgentRunner$json = {
  '1': 'ResolvedAgentRunner',
  '2': [
    {'1': 'runner_id', '3': 1, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'model', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'model', '17': true},
    {
      '1': 'provider',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'provider',
      '17': true
    },
    {
      '1': 'reasoning_effort',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'reasoningEffort',
      '17': true
    },
    {'1': 'preference_index', '3': 5, '4': 1, '5': 13, '10': 'preferenceIndex'},
    {
      '1': 'selection_reason',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'selectionReason',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_model'},
    {'1': '_provider'},
    {'1': '_reasoning_effort'},
    {'1': '_selection_reason'},
  ],
};

/// Descriptor for `ResolvedAgentRunner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resolvedAgentRunnerDescriptor = $convert.base64Decode(
    'ChNSZXNvbHZlZEFnZW50UnVubmVyEhsKCXJ1bm5lcl9pZBgBIAEoCVIIcnVubmVySWQSGQoFbW'
    '9kZWwYAiABKAlIAFIFbW9kZWyIAQESHwoIcHJvdmlkZXIYAyABKAlIAVIIcHJvdmlkZXKIAQES'
    'LgoQcmVhc29uaW5nX2VmZm9ydBgEIAEoCUgCUg9yZWFzb25pbmdFZmZvcnSIAQESKQoQcHJlZm'
    'VyZW5jZV9pbmRleBgFIAEoDVIPcHJlZmVyZW5jZUluZGV4Ei4KEHNlbGVjdGlvbl9yZWFzb24Y'
    'BiABKAlIA1IPc2VsZWN0aW9uUmVhc29uiAEBEjcKCmV4dGVuc2lvbnMYByABKAsyFy5nb29nbG'
    'UucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25zQggKBl9tb2RlbEILCglfcHJvdmlkZXJCEwoR'
    'X3JlYXNvbmluZ19lZmZvcnRCEwoRX3NlbGVjdGlvbl9yZWFzb24=');

@$core.Deprecated('Use bootstrapPlanTaskDescriptor instead')
const BootstrapPlanTask$json = {
  '1': 'BootstrapPlanTask',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'role_id', '3': 3, '4': 1, '5': 9, '10': 'roleId'},
    {'1': 'task_milestone', '3': 4, '4': 1, '5': 9, '10': 'taskMilestone'},
    {'1': 'depends_on', '3': 5, '4': 3, '5': 9, '10': 'dependsOn'},
    {
      '1': 'target_repo',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'targetRepo',
      '17': true
    },
    {
      '1': 'required_skill_ids',
      '3': 7,
      '4': 3,
      '5': 9,
      '10': 'requiredSkillIds'
    },
    {'1': 'required_mcp_ids', '3': 8, '4': 3, '5': 9, '10': 'requiredMcpIds'},
    {
      '1': 'interaction_mode',
      '3': 9,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'interactionMode',
      '17': true
    },
    {
      '1': 'network_mode',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'networkMode',
      '17': true
    },
    {
      '1': 'requires_human_review',
      '3': 11,
      '4': 1,
      '5': 8,
      '9': 3,
      '10': 'requiresHumanReview',
      '17': true
    },
    {
      '1': 'filesystem_policy',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'filesystemPolicy'
    },
    {
      '1': 'template_slot_id',
      '3': 13,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'templateSlotId',
      '17': true
    },
    {'1': 'notes', '3': 14, '4': 1, '5': 9, '9': 5, '10': 'notes', '17': true},
    {
      '1': 'agent_id',
      '3': 15,
      '4': 1,
      '5': 9,
      '9': 6,
      '10': 'agentId',
      '17': true
    },
    {
      '1': 'injected_by_role_id',
      '3': 16,
      '4': 1,
      '5': 9,
      '9': 7,
      '10': 'injectedByRoleId',
      '17': true
    },
    {
      '1': 'runner_preferences',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AgentRunnerPreference',
      '10': 'runnerPreferences'
    },
    {
      '1': 'resolved_runner',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ResolvedAgentRunner',
      '9': 8,
      '10': 'resolvedRunner',
      '17': true
    },
  ],
  '8': [
    {'1': '_target_repo'},
    {'1': '_interaction_mode'},
    {'1': '_network_mode'},
    {'1': '_requires_human_review'},
    {'1': '_template_slot_id'},
    {'1': '_notes'},
    {'1': '_agent_id'},
    {'1': '_injected_by_role_id'},
    {'1': '_resolved_runner'},
  ],
};

/// Descriptor for `BootstrapPlanTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootstrapPlanTaskDescriptor = $convert.base64Decode(
    'ChFCb290c3RyYXBQbGFuVGFzaxIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSIQoMZGlzcGxheV'
    '9uYW1lGAIgASgJUgtkaXNwbGF5TmFtZRIXCgdyb2xlX2lkGAMgASgJUgZyb2xlSWQSJQoOdGFz'
    'a19taWxlc3RvbmUYBCABKAlSDXRhc2tNaWxlc3RvbmUSHQoKZGVwZW5kc19vbhgFIAMoCVIJZG'
    'VwZW5kc09uEiQKC3RhcmdldF9yZXBvGAYgASgJSABSCnRhcmdldFJlcG+IAQESLAoScmVxdWly'
    'ZWRfc2tpbGxfaWRzGAcgAygJUhByZXF1aXJlZFNraWxsSWRzEigKEHJlcXVpcmVkX21jcF9pZH'
    'MYCCADKAlSDnJlcXVpcmVkTWNwSWRzEi4KEGludGVyYWN0aW9uX21vZGUYCSABKAlIAVIPaW50'
    'ZXJhY3Rpb25Nb2RliAEBEiYKDG5ldHdvcmtfbW9kZRgKIAEoCUgCUgtuZXR3b3JrTW9kZYgBAR'
    'I3ChVyZXF1aXJlc19odW1hbl9yZXZpZXcYCyABKAhIA1ITcmVxdWlyZXNIdW1hblJldmlld4gB'
    'ARJEChFmaWxlc3lzdGVtX3BvbGljeRgMIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSEG'
    'ZpbGVzeXN0ZW1Qb2xpY3kSLQoQdGVtcGxhdGVfc2xvdF9pZBgNIAEoCUgEUg50ZW1wbGF0ZVNs'
    'b3RJZIgBARIZCgVub3RlcxgOIAEoCUgFUgVub3Rlc4gBARIeCghhZ2VudF9pZBgPIAEoCUgGUg'
    'dhZ2VudElkiAEBEjIKE2luamVjdGVkX2J5X3JvbGVfaWQYECABKAlIB1IQaW5qZWN0ZWRCeVJv'
    'bGVJZIgBARJhChJydW5uZXJfcHJlZmVyZW5jZXMYESADKAsyMi5tb25hcmNoaWMuYWdlbnRfcH'
    'JvdG9jb2wudjEuQWdlbnRSdW5uZXJQcmVmZXJlbmNlUhFydW5uZXJQcmVmZXJlbmNlcxJeCg9y'
    'ZXNvbHZlZF9ydW5uZXIYEiABKAsyMC5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuUmVzb2'
    'x2ZWRBZ2VudFJ1bm5lckgIUg5yZXNvbHZlZFJ1bm5lcogBAUIOCgxfdGFyZ2V0X3JlcG9CEwoR'
    'X2ludGVyYWN0aW9uX21vZGVCDwoNX25ldHdvcmtfbW9kZUIYChZfcmVxdWlyZXNfaHVtYW5fcm'
    'V2aWV3QhMKEV90ZW1wbGF0ZV9zbG90X2lkQggKBl9ub3Rlc0ILCglfYWdlbnRfaWRCFgoUX2lu'
    'amVjdGVkX2J5X3JvbGVfaWRCEgoQX3Jlc29sdmVkX3J1bm5lcg==');

@$core.Deprecated('Use bootstrapPlanDescriptor instead')
const BootstrapPlan$json = {
  '1': 'BootstrapPlan',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'bootstrap_plan_id', '3': 2, '4': 1, '5': 9, '10': 'bootstrapPlanId'},
    {
      '1': 'bootstrap_intent_id',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'bootstrapIntentId'
    },
    {'1': 'project_key', '3': 4, '4': 1, '5': 9, '10': 'projectKey'},
    {
      '1': 'planning_mode',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.BootstrapPlanningMode',
      '10': 'planningMode'
    },
    {
      '1': 'pipeline_template_id',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'pipelineTemplateId',
      '17': true
    },
    {'1': 'campaign_goal', '3': 7, '4': 1, '5': 9, '10': 'campaignGoal'},
    {'1': 'created_at_ms', '3': 8, '4': 1, '5': 4, '10': 'createdAtMs'},
    {
      '1': 'tasks',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BootstrapPlanTask',
      '10': 'tasks'
    },
  ],
  '8': [
    {'1': '_pipeline_template_id'},
  ],
};

/// Descriptor for `BootstrapPlan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootstrapPlanDescriptor = $convert.base64Decode(
    'Cg1Cb290c3RyYXBQbGFuEikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2NvbnRyYWN0VmVyc2'
    'lvbhIqChFib290c3RyYXBfcGxhbl9pZBgCIAEoCVIPYm9vdHN0cmFwUGxhbklkEi4KE2Jvb3Rz'
    'dHJhcF9pbnRlbnRfaWQYAyABKAlSEWJvb3RzdHJhcEludGVudElkEh8KC3Byb2plY3Rfa2V5GA'
    'QgASgJUgpwcm9qZWN0S2V5ElcKDXBsYW5uaW5nX21vZGUYBSABKA4yMi5tb25hcmNoaWMuYWdl'
    'bnRfcHJvdG9jb2wudjEuQm9vdHN0cmFwUGxhbm5pbmdNb2RlUgxwbGFubmluZ01vZGUSNQoUcG'
    'lwZWxpbmVfdGVtcGxhdGVfaWQYBiABKAlIAFIScGlwZWxpbmVUZW1wbGF0ZUlkiAEBEiMKDWNh'
    'bXBhaWduX2dvYWwYByABKAlSDGNhbXBhaWduR29hbBIiCg1jcmVhdGVkX2F0X21zGAggASgEUg'
    'tjcmVhdGVkQXRNcxJECgV0YXNrcxgJIAMoCzIuLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52'
    'MS5Cb290c3RyYXBQbGFuVGFza1IFdGFza3NCFwoVX3BpcGVsaW5lX3RlbXBsYXRlX2lk');

@$core.Deprecated('Use bootstrapFilesystemPolicyDescriptor instead')
const BootstrapFilesystemPolicy$json = {
  '1': 'BootstrapFilesystemPolicy',
  '2': [
    {'1': 'read', '3': 1, '4': 3, '5': 9, '10': 'read'},
    {'1': 'write', '3': 2, '4': 3, '5': 9, '10': 'write'},
    {'1': 'execute', '3': 3, '4': 3, '5': 9, '10': 'execute'},
  ],
};

/// Descriptor for `BootstrapFilesystemPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootstrapFilesystemPolicyDescriptor =
    $convert.base64Decode(
        'ChlCb290c3RyYXBGaWxlc3lzdGVtUG9saWN5EhIKBHJlYWQYASADKAlSBHJlYWQSFAoFd3JpdG'
        'UYAiADKAlSBXdyaXRlEhgKB2V4ZWN1dGUYAyADKAlSB2V4ZWN1dGU=');

@$core.Deprecated('Use bootstrapSkillBindingDescriptor instead')
const BootstrapSkillBinding$json = {
  '1': 'BootstrapSkillBinding',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'required', '3': 2, '4': 1, '5': 8, '10': 'required'},
    {'1': 'purpose', '3': 3, '4': 1, '5': 9, '10': 'purpose'},
  ],
};

/// Descriptor for `BootstrapSkillBinding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootstrapSkillBindingDescriptor = $convert.base64Decode(
    'ChVCb290c3RyYXBTa2lsbEJpbmRpbmcSDgoCaWQYASABKAlSAmlkEhoKCHJlcXVpcmVkGAIgAS'
    'gIUghyZXF1aXJlZBIYCgdwdXJwb3NlGAMgASgJUgdwdXJwb3Nl');

@$core.Deprecated('Use bootstrapTemplateSlotContextDescriptor instead')
const BootstrapTemplateSlotContext$json = {
  '1': 'BootstrapTemplateSlotContext',
  '2': [
    {'1': 'slot_id', '3': 1, '4': 1, '5': 9, '10': 'slotId'},
    {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'role', '3': 3, '4': 1, '5': 9, '10': 'role'},
    {'1': 'interaction_mode', '3': 4, '4': 1, '5': 9, '10': 'interactionMode'},
    {'1': 'network_mode', '3': 5, '4': 1, '5': 9, '10': 'networkMode'},
    {
      '1': 'requires_human_review',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'requiresHumanReview'
    },
    {
      '1': 'filesystem_policy',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BootstrapFilesystemPolicy',
      '10': 'filesystemPolicy'
    },
    {
      '1': 'required_skills',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BootstrapSkillBinding',
      '10': 'requiredSkills'
    },
    {'1': 'required_mcps', '3': 9, '4': 3, '5': 9, '10': 'requiredMcps'},
  ],
};

/// Descriptor for `BootstrapTemplateSlotContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootstrapTemplateSlotContextDescriptor = $convert.base64Decode(
    'ChxCb290c3RyYXBUZW1wbGF0ZVNsb3RDb250ZXh0EhcKB3Nsb3RfaWQYASABKAlSBnNsb3RJZB'
    'IhCgxkaXNwbGF5X25hbWUYAiABKAlSC2Rpc3BsYXlOYW1lEhIKBHJvbGUYAyABKAlSBHJvbGUS'
    'KQoQaW50ZXJhY3Rpb25fbW9kZRgEIAEoCVIPaW50ZXJhY3Rpb25Nb2RlEiEKDG5ldHdvcmtfbW'
    '9kZRgFIAEoCVILbmV0d29ya01vZGUSMgoVcmVxdWlyZXNfaHVtYW5fcmV2aWV3GAYgASgIUhNy'
    'ZXF1aXJlc0h1bWFuUmV2aWV3EmMKEWZpbGVzeXN0ZW1fcG9saWN5GAcgASgLMjYubW9uYXJjaG'
    'ljLmFnZW50X3Byb3RvY29sLnYxLkJvb3RzdHJhcEZpbGVzeXN0ZW1Qb2xpY3lSEGZpbGVzeXN0'
    'ZW1Qb2xpY3kSWwoPcmVxdWlyZWRfc2tpbGxzGAggAygLMjIubW9uYXJjaGljLmFnZW50X3Byb3'
    'RvY29sLnYxLkJvb3RzdHJhcFNraWxsQmluZGluZ1IOcmVxdWlyZWRTa2lsbHMSIwoNcmVxdWly'
    'ZWRfbWNwcxgJIAMoCVIMcmVxdWlyZWRNY3Bz');

@$core.Deprecated('Use bootstrapTemplateConnectionContextDescriptor instead')
const BootstrapTemplateConnectionContext$json = {
  '1': 'BootstrapTemplateConnectionContext',
  '2': [
    {'1': 'from_slot_id', '3': 1, '4': 1, '5': 9, '10': 'fromSlotId'},
    {'1': 'to_slot_id', '3': 2, '4': 1, '5': 9, '10': 'toSlotId'},
    {'1': 'kind', '3': 3, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'required', '3': 4, '4': 1, '5': 8, '10': 'required'},
    {
      '1': 'description',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'description',
      '17': true
    },
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `BootstrapTemplateConnectionContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootstrapTemplateConnectionContextDescriptor =
    $convert.base64Decode(
        'CiJCb290c3RyYXBUZW1wbGF0ZUNvbm5lY3Rpb25Db250ZXh0EiAKDGZyb21fc2xvdF9pZBgBIA'
        'EoCVIKZnJvbVNsb3RJZBIcCgp0b19zbG90X2lkGAIgASgJUgh0b1Nsb3RJZBISCgRraW5kGAMg'
        'ASgJUgRraW5kEhoKCHJlcXVpcmVkGAQgASgIUghyZXF1aXJlZBIlCgtkZXNjcmlwdGlvbhgFIA'
        'EoCUgAUgtkZXNjcmlwdGlvbogBAUIOCgxfZGVzY3JpcHRpb24=');

@$core.Deprecated('Use bootstrapTemplateLaneContextDescriptor instead')
const BootstrapTemplateLaneContext$json = {
  '1': 'BootstrapTemplateLaneContext',
  '2': [
    {'1': 'lane_id', '3': 1, '4': 1, '5': 9, '10': 'laneId'},
    {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'from_slot_id', '3': 3, '4': 1, '5': 9, '10': 'fromSlotId'},
    {'1': 'to_slot_id', '3': 4, '4': 1, '5': 9, '10': 'toSlotId'},
    {'1': 'slot_ids', '3': 5, '4': 3, '5': 9, '10': 'slotIds'},
    {
      '1': 'repeat_per_task_group',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'repeatPerTaskGroup'
    },
  ],
};

/// Descriptor for `BootstrapTemplateLaneContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootstrapTemplateLaneContextDescriptor = $convert.base64Decode(
    'ChxCb290c3RyYXBUZW1wbGF0ZUxhbmVDb250ZXh0EhcKB2xhbmVfaWQYASABKAlSBmxhbmVJZB'
    'IhCgxkaXNwbGF5X25hbWUYAiABKAlSC2Rpc3BsYXlOYW1lEiAKDGZyb21fc2xvdF9pZBgDIAEo'
    'CVIKZnJvbVNsb3RJZBIcCgp0b19zbG90X2lkGAQgASgJUgh0b1Nsb3RJZBIZCghzbG90X2lkcx'
    'gFIAMoCVIHc2xvdElkcxIxChVyZXBlYXRfcGVyX3Rhc2tfZ3JvdXAYBiABKAhSEnJlcGVhdFBl'
    'clRhc2tHcm91cA==');

@$core.Deprecated('Use bootstrapTemplateContextDescriptor instead')
const BootstrapTemplateContext$json = {
  '1': 'BootstrapTemplateContext',
  '2': [
    {'1': 'template_id', '3': 1, '4': 1, '5': 9, '10': 'templateId'},
    {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    {
      '1': 'slots',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BootstrapTemplateSlotContext',
      '10': 'slots'
    },
    {
      '1': 'connections',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BootstrapTemplateConnectionContext',
      '10': 'connections'
    },
    {
      '1': 'lanes',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BootstrapTemplateLaneContext',
      '10': 'lanes'
    },
  ],
};

/// Descriptor for `BootstrapTemplateContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootstrapTemplateContextDescriptor = $convert.base64Decode(
    'ChhCb290c3RyYXBUZW1wbGF0ZUNvbnRleHQSHwoLdGVtcGxhdGVfaWQYASABKAlSCnRlbXBsYX'
    'RlSWQSIQoMZGlzcGxheV9uYW1lGAIgASgJUgtkaXNwbGF5TmFtZRJPCgVzbG90cxgDIAMoCzI5'
    'Lm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5Cb290c3RyYXBUZW1wbGF0ZVNsb3RDb250ZX'
    'h0UgVzbG90cxJhCgtjb25uZWN0aW9ucxgEIAMoCzI/Lm1vbmFyY2hpYy5hZ2VudF9wcm90b2Nv'
    'bC52MS5Cb290c3RyYXBUZW1wbGF0ZUNvbm5lY3Rpb25Db250ZXh0Ugtjb25uZWN0aW9ucxJPCg'
    'VsYW5lcxgFIAMoCzI5Lm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5Cb290c3RyYXBUZW1w'
    'bGF0ZUxhbmVDb250ZXh0UgVsYW5lcw==');

@$core.Deprecated('Use agentCommandDescriptor instead')
const AgentCommand$json = {
  '1': 'AgentCommand',
  '2': [
    {'1': 'runner_id', '3': 1, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'argv', '3': 2, '4': 3, '5': 9, '10': 'argv'},
  ],
};

/// Descriptor for `AgentCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentCommandDescriptor = $convert.base64Decode(
    'CgxBZ2VudENvbW1hbmQSGwoJcnVubmVyX2lkGAEgASgJUghydW5uZXJJZBISCgRhcmd2GAIgAy'
    'gJUgRhcmd2');

@$core.Deprecated('Use bootstrapPlanningContextDescriptor instead')
const BootstrapPlanningContext$json = {
  '1': 'BootstrapPlanningContext',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'project_key', '3': 2, '4': 1, '5': 9, '10': 'projectKey'},
    {'1': 'target_repo', '3': 3, '4': 1, '5': 9, '10': 'targetRepo'},
    {'1': 'target_repos', '3': 4, '4': 3, '5': 9, '10': 'targetRepos'},
    {'1': 'campaign_goal', '3': 5, '4': 1, '5': 9, '10': 'campaignGoal'},
    {'1': 'notes', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'notes', '17': true},
    {'1': 'priority_profile', '3': 7, '4': 1, '5': 9, '10': 'priorityProfile'},
    {
      '1': 'codex_cmd',
      '3': 8,
      '4': 3,
      '5': 9,
      '8': {'3': true},
      '10': 'codexCmd',
    },
    {
      '1': 'available_skill_ids',
      '3': 9,
      '4': 3,
      '5': 9,
      '10': 'availableSkillIds'
    },
    {
      '1': 'selected_template',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BootstrapTemplateContext',
      '9': 1,
      '10': 'selectedTemplate',
      '17': true
    },
    {
      '1': 'planning_mode',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.BootstrapPlanningMode',
      '10': 'planningMode'
    },
    {'1': 'enabled_role_ids', '3': 12, '4': 3, '5': 9, '10': 'enabledRoleIds'},
    {
      '1': 'agent_cmds',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AgentCommand',
      '10': 'agentCmds'
    },
    {
      '1': 'default_agent_cmd',
      '3': 14,
      '4': 3,
      '5': 9,
      '10': 'defaultAgentCmd'
    },
    {
      '1': 'agent_profiles',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AgentProfile',
      '10': 'agentProfiles'
    },
  ],
  '8': [
    {'1': '_notes'},
    {'1': '_selected_template'},
  ],
};

/// Descriptor for `BootstrapPlanningContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootstrapPlanningContextDescriptor = $convert.base64Decode(
    'ChhCb290c3RyYXBQbGFubmluZ0NvbnRleHQSKQoQY29udHJhY3RfdmVyc2lvbhgBIAEoCVIPY2'
    '9udHJhY3RWZXJzaW9uEh8KC3Byb2plY3Rfa2V5GAIgASgJUgpwcm9qZWN0S2V5Eh8KC3Rhcmdl'
    'dF9yZXBvGAMgASgJUgp0YXJnZXRSZXBvEiEKDHRhcmdldF9yZXBvcxgEIAMoCVILdGFyZ2V0Um'
    'Vwb3MSIwoNY2FtcGFpZ25fZ29hbBgFIAEoCVIMY2FtcGFpZ25Hb2FsEhkKBW5vdGVzGAYgASgJ'
    'SABSBW5vdGVziAEBEikKEHByaW9yaXR5X3Byb2ZpbGUYByABKAlSD3ByaW9yaXR5UHJvZmlsZR'
    'IfCgljb2RleF9jbWQYCCADKAlCAhgBUghjb2RleENtZBIuChNhdmFpbGFibGVfc2tpbGxfaWRz'
    'GAkgAygJUhFhdmFpbGFibGVTa2lsbElkcxJnChFzZWxlY3RlZF90ZW1wbGF0ZRgKIAEoCzI1Lm'
    '1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5Cb290c3RyYXBUZW1wbGF0ZUNvbnRleHRIAVIQ'
    'c2VsZWN0ZWRUZW1wbGF0ZYgBARJXCg1wbGFubmluZ19tb2RlGAsgASgOMjIubW9uYXJjaGljLm'
    'FnZW50X3Byb3RvY29sLnYxLkJvb3RzdHJhcFBsYW5uaW5nTW9kZVIMcGxhbm5pbmdNb2RlEigK'
    'EGVuYWJsZWRfcm9sZV9pZHMYDCADKAlSDmVuYWJsZWRSb2xlSWRzEkgKCmFnZW50X2NtZHMYDS'
    'ADKAsyKS5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuQWdlbnRDb21tYW5kUglhZ2VudENt'
    'ZHMSKgoRZGVmYXVsdF9hZ2VudF9jbWQYDiADKAlSD2RlZmF1bHRBZ2VudENtZBJQCg5hZ2VudF'
    '9wcm9maWxlcxgPIAMoCzIpLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BZ2VudFByb2Zp'
    'bGVSDWFnZW50UHJvZmlsZXNCCAoGX25vdGVzQhQKEl9zZWxlY3RlZF90ZW1wbGF0ZQ==');

@$core.Deprecated('Use campaignPipelineTaskRefDescriptor instead')
const CampaignPipelineTaskRef$json = {
  '1': 'CampaignPipelineTaskRef',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'task_artifact', '3': 2, '4': 1, '5': 9, '10': 'taskArtifact'},
    {
      '1': 'role_id',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'roleId',
      '17': true
    },
    {
      '1': 'task_milestone',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'taskMilestone',
      '17': true
    },
    {
      '1': 'task_format',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'taskFormat',
      '17': true
    },
    {'1': 'depends_on', '3': 6, '4': 3, '5': 9, '10': 'dependsOn'},
    {'1': 'runner_args', '3': 7, '4': 3, '5': 9, '10': 'runnerArgs'},
    {
      '1': 'interaction_mode',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'interactionMode',
      '17': true
    },
    {
      '1': 'network_mode',
      '3': 9,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'networkMode',
      '17': true
    },
    {
      '1': 'requires_human_review',
      '3': 10,
      '4': 1,
      '5': 8,
      '10': 'requiresHumanReview'
    },
    {
      '1': 'filesystem_policy',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BootstrapFilesystemPolicy',
      '10': 'filesystemPolicy'
    },
    {
      '1': 'required_skills',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BootstrapSkillBinding',
      '10': 'requiredSkills'
    },
    {'1': 'required_mcp_ids', '3': 13, '4': 3, '5': 9, '10': 'requiredMcpIds'},
  ],
  '8': [
    {'1': '_role_id'},
    {'1': '_task_milestone'},
    {'1': '_task_format'},
    {'1': '_interaction_mode'},
    {'1': '_network_mode'},
  ],
};

/// Descriptor for `CampaignPipelineTaskRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List campaignPipelineTaskRefDescriptor = $convert.base64Decode(
    'ChdDYW1wYWlnblBpcGVsaW5lVGFza1JlZhIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSIwoNdG'
    'Fza19hcnRpZmFjdBgCIAEoCVIMdGFza0FydGlmYWN0EhwKB3JvbGVfaWQYAyABKAlIAFIGcm9s'
    'ZUlkiAEBEioKDnRhc2tfbWlsZXN0b25lGAQgASgJSAFSDXRhc2tNaWxlc3RvbmWIAQESJAoLdG'
    'Fza19mb3JtYXQYBSABKAlIAlIKdGFza0Zvcm1hdIgBARIdCgpkZXBlbmRzX29uGAYgAygJUglk'
    'ZXBlbmRzT24SHwoLcnVubmVyX2FyZ3MYByADKAlSCnJ1bm5lckFyZ3MSLgoQaW50ZXJhY3Rpb2'
    '5fbW9kZRgIIAEoCUgDUg9pbnRlcmFjdGlvbk1vZGWIAQESJgoMbmV0d29ya19tb2RlGAkgASgJ'
    'SARSC25ldHdvcmtNb2RliAEBEjIKFXJlcXVpcmVzX2h1bWFuX3JldmlldxgKIAEoCFITcmVxdW'
    'lyZXNIdW1hblJldmlldxJjChFmaWxlc3lzdGVtX3BvbGljeRgLIAEoCzI2Lm1vbmFyY2hpYy5h'
    'Z2VudF9wcm90b2NvbC52MS5Cb290c3RyYXBGaWxlc3lzdGVtUG9saWN5UhBmaWxlc3lzdGVtUG'
    '9saWN5ElsKD3JlcXVpcmVkX3NraWxscxgMIAMoCzIyLm1vbmFyY2hpYy5hZ2VudF9wcm90b2Nv'
    'bC52MS5Cb290c3RyYXBTa2lsbEJpbmRpbmdSDnJlcXVpcmVkU2tpbGxzEigKEHJlcXVpcmVkX2'
    '1jcF9pZHMYDSADKAlSDnJlcXVpcmVkTWNwSWRzQgoKCF9yb2xlX2lkQhEKD190YXNrX21pbGVz'
    'dG9uZUIOCgxfdGFza19mb3JtYXRCEwoRX2ludGVyYWN0aW9uX21vZGVCDwoNX25ldHdvcmtfbW'
    '9kZQ==');

@$core.Deprecated('Use campaignPipelineConnectionDescriptor instead')
const CampaignPipelineConnection$json = {
  '1': 'CampaignPipelineConnection',
  '2': [
    {'1': 'from_task_id', '3': 1, '4': 1, '5': 9, '10': 'fromTaskId'},
    {'1': 'to_task_id', '3': 2, '4': 1, '5': 9, '10': 'toTaskId'},
    {
      '1': 'kind',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.CampaignPipelineConnectionKind',
      '10': 'kind'
    },
    {'1': 'required', '3': 4, '4': 1, '5': 8, '10': 'required'},
    {
      '1': 'description',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'description',
      '17': true
    },
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `CampaignPipelineConnection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List campaignPipelineConnectionDescriptor = $convert.base64Decode(
    'ChpDYW1wYWlnblBpcGVsaW5lQ29ubmVjdGlvbhIgCgxmcm9tX3Rhc2tfaWQYASABKAlSCmZyb2'
    '1UYXNrSWQSHAoKdG9fdGFza19pZBgCIAEoCVIIdG9UYXNrSWQSTwoEa2luZBgDIAEoDjI7Lm1v'
    'bmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5DYW1wYWlnblBpcGVsaW5lQ29ubmVjdGlvbktpbm'
    'RSBGtpbmQSGgoIcmVxdWlyZWQYBCABKAhSCHJlcXVpcmVkEiUKC2Rlc2NyaXB0aW9uGAUgASgJ'
    'SABSC2Rlc2NyaXB0aW9uiAEBQg4KDF9kZXNjcmlwdGlvbg==');

@$core.Deprecated('Use campaignPipelineGateDescriptor instead')
const CampaignPipelineGate$json = {
  '1': 'CampaignPipelineGate',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'command', '3': 2, '4': 3, '5': 9, '10': 'command'},
    {
      '1': 'workdir',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'workdir',
      '17': true
    },
  ],
  '8': [
    {'1': '_workdir'},
  ],
};

/// Descriptor for `CampaignPipelineGate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List campaignPipelineGateDescriptor = $convert.base64Decode(
    'ChRDYW1wYWlnblBpcGVsaW5lR2F0ZRISCgRuYW1lGAEgASgJUgRuYW1lEhgKB2NvbW1hbmQYAi'
    'ADKAlSB2NvbW1hbmQSHQoHd29ya2RpchgDIAEoCUgAUgd3b3JrZGlyiAEBQgoKCF93b3JrZGly');

@$core.Deprecated('Use campaignPipelineGatePolicyDescriptor instead')
const CampaignPipelineGatePolicy$json = {
  '1': 'CampaignPipelineGatePolicy',
  '2': [
    {'1': 'require_standard', '3': 1, '4': 1, '5': 8, '10': 'requireStandard'},
    {
      '1': 'required_gates',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.CampaignPipelineGate',
      '10': 'requiredGates'
    },
  ],
};

/// Descriptor for `CampaignPipelineGatePolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List campaignPipelineGatePolicyDescriptor =
    $convert.base64Decode(
        'ChpDYW1wYWlnblBpcGVsaW5lR2F0ZVBvbGljeRIpChByZXF1aXJlX3N0YW5kYXJkGAEgASgIUg'
        '9yZXF1aXJlU3RhbmRhcmQSWAoOcmVxdWlyZWRfZ2F0ZXMYAiADKAsyMS5tb25hcmNoaWMuYWdl'
        'bnRfcHJvdG9jb2wudjEuQ2FtcGFpZ25QaXBlbGluZUdhdGVSDXJlcXVpcmVkR2F0ZXM=');

@$core.Deprecated('Use campaignPipelineSpecDescriptor instead')
const CampaignPipelineSpec$json = {
  '1': 'CampaignPipelineSpec',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'pipeline_id', '3': 2, '4': 1, '5': 9, '10': 'pipelineId'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    {
      '1': 'objective',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'objective',
      '17': true
    },
    {
      '1': 'project_key',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'projectKey',
      '17': true
    },
    {'1': 'continue_on_error', '3': 6, '4': 1, '5': 8, '10': 'continueOnError'},
    {
      '1': 'gate_policy',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.CampaignPipelineGatePolicy',
      '9': 2,
      '10': 'gatePolicy',
      '17': true
    },
    {
      '1': 'metadata',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'metadata'
    },
    {
      '1': 'connections',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.CampaignPipelineConnection',
      '10': 'connections'
    },
    {
      '1': 'tasks',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.CampaignPipelineTaskRef',
      '10': 'tasks'
    },
  ],
  '8': [
    {'1': '_objective'},
    {'1': '_project_key'},
    {'1': '_gate_policy'},
  ],
};

/// Descriptor for `CampaignPipelineSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List campaignPipelineSpecDescriptor = $convert.base64Decode(
    'ChRDYW1wYWlnblBpcGVsaW5lU3BlYxIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg9jb250cm'
    'FjdFZlcnNpb24SHwoLcGlwZWxpbmVfaWQYAiABKAlSCnBpcGVsaW5lSWQSGAoHdmVyc2lvbhgD'
    'IAEoCVIHdmVyc2lvbhIhCglvYmplY3RpdmUYBCABKAlIAFIJb2JqZWN0aXZliAEBEiQKC3Byb2'
    'plY3Rfa2V5GAUgASgJSAFSCnByb2plY3RLZXmIAQESKgoRY29udGludWVfb25fZXJyb3IYBiAB'
    'KAhSD2NvbnRpbnVlT25FcnJvchJdCgtnYXRlX3BvbGljeRgHIAEoCzI3Lm1vbmFyY2hpYy5hZ2'
    'VudF9wcm90b2NvbC52MS5DYW1wYWlnblBpcGVsaW5lR2F0ZVBvbGljeUgCUgpnYXRlUG9saWN5'
    'iAEBEjMKCG1ldGFkYXRhGAggASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIIbWV0YWRhdG'
    'ESWQoLY29ubmVjdGlvbnMYCSADKAsyNy5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuQ2Ft'
    'cGFpZ25QaXBlbGluZUNvbm5lY3Rpb25SC2Nvbm5lY3Rpb25zEkoKBXRhc2tzGAogAygLMjQubW'
    '9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkNhbXBhaWduUGlwZWxpbmVUYXNrUmVmUgV0YXNr'
    'c0IMCgpfb2JqZWN0aXZlQg4KDF9wcm9qZWN0X2tleUIOCgxfZ2F0ZV9wb2xpY3k=');

@$core.Deprecated('Use roleProvenanceDescriptor instead')
const RoleProvenance$json = {
  '1': 'RoleProvenance',
  '2': [
    {'1': 'role_name', '3': 1, '4': 1, '5': 9, '10': 'roleName'},
    {'1': 'template_hash', '3': 2, '4': 1, '5': 9, '10': 'templateHash'},
    {'1': 'render_hash', '3': 3, '4': 1, '5': 9, '10': 'renderHash'},
  ],
};

/// Descriptor for `RoleProvenance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleProvenanceDescriptor = $convert.base64Decode(
    'Cg5Sb2xlUHJvdmVuYW5jZRIbCglyb2xlX25hbWUYASABKAlSCHJvbGVOYW1lEiMKDXRlbXBsYX'
    'RlX2hhc2gYAiABKAlSDHRlbXBsYXRlSGFzaBIfCgtyZW5kZXJfaGFzaBgDIAEoCVIKcmVuZGVy'
    'SGFzaA==');

@$core.Deprecated('Use planProvenanceDescriptor instead')
const PlanProvenance$json = {
  '1': 'PlanProvenance',
  '2': [
    {'1': 'generated_by', '3': 1, '4': 1, '5': 9, '10': 'generatedBy'},
    {
      '1': 'policy_profile',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'policyProfile',
      '17': true
    },
    {'1': 'generated_at_ms', '3': 3, '4': 1, '5': 4, '10': 'generatedAtMs'},
    {
      '1': 'role',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.RoleProvenance',
      '9': 1,
      '10': 'role',
      '17': true
    },
  ],
  '8': [
    {'1': '_policy_profile'},
    {'1': '_role'},
  ],
};

/// Descriptor for `PlanProvenance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List planProvenanceDescriptor = $convert.base64Decode(
    'Cg5QbGFuUHJvdmVuYW5jZRIhCgxnZW5lcmF0ZWRfYnkYASABKAlSC2dlbmVyYXRlZEJ5EioKDn'
    'BvbGljeV9wcm9maWxlGAIgASgJSABSDXBvbGljeVByb2ZpbGWIAQESJgoPZ2VuZXJhdGVkX2F0'
    'X21zGAMgASgEUg1nZW5lcmF0ZWRBdE1zEkQKBHJvbGUYBCABKAsyKy5tb25hcmNoaWMuYWdlbn'
    'RfcHJvdG9jb2wudjEuUm9sZVByb3ZlbmFuY2VIAVIEcm9sZYgBAUIRCg9fcG9saWN5X3Byb2Zp'
    'bGVCBwoFX3JvbGU=');

@$core.Deprecated('Use failureDetailDescriptor instead')
const FailureDetail$json = {
  '1': 'FailureDetail',
  '2': [
    {'1': 'class', '3': 1, '4': 1, '5': 9, '10': 'class'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {
      '1': 'details',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'details'
    },
  ],
};

/// Descriptor for `FailureDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List failureDetailDescriptor = $convert.base64Decode(
    'Cg1GYWlsdXJlRGV0YWlsEhQKBWNsYXNzGAEgASgJUgVjbGFzcxISCgRjb2RlGAIgASgJUgRjb2'
    'RlEhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2USMQoHZGV0YWlscxgEIAEoCzIXLmdvb2dsZS5w'
    'cm90b2J1Zi5TdHJ1Y3RSB2RldGFpbHM=');

@$core.Deprecated('Use artifactDescriptorDescriptor instead')
const ArtifactDescriptor$json = {
  '1': 'ArtifactDescriptor',
  '2': [
    {'1': 'artifact_id', '3': 1, '4': 1, '5': 9, '10': 'artifactId'},
    {
      '1': 'kind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.ArtifactKind',
      '10': 'kind'
    },
    {'1': 'digest', '3': 3, '4': 1, '5': 9, '10': 'digest'},
    {'1': 'media_type', '3': 4, '4': 1, '5': 9, '10': 'mediaType'},
    {'1': 'logical_name', '3': 5, '4': 1, '5': 9, '10': 'logicalName'},
    {'1': 'producer', '3': 6, '4': 1, '5': 9, '10': 'producer'},
    {'1': 'contract_version', '3': 7, '4': 1, '5': 9, '10': 'contractVersion'},
  ],
};

/// Descriptor for `ArtifactDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List artifactDescriptorDescriptor = $convert.base64Decode(
    'ChJBcnRpZmFjdERlc2NyaXB0b3ISHwoLYXJ0aWZhY3RfaWQYASABKAlSCmFydGlmYWN0SWQSPQ'
    'oEa2luZBgCIAEoDjIpLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BcnRpZmFjdEtpbmRS'
    'BGtpbmQSFgoGZGlnZXN0GAMgASgJUgZkaWdlc3QSHQoKbWVkaWFfdHlwZRgEIAEoCVIJbWVkaW'
    'FUeXBlEiEKDGxvZ2ljYWxfbmFtZRgFIAEoCVILbG9naWNhbE5hbWUSGgoIcHJvZHVjZXIYBiAB'
    'KAlSCHByb2R1Y2VyEikKEGNvbnRyYWN0X3ZlcnNpb24YByABKAlSD2NvbnRyYWN0VmVyc2lvbg'
    '==');

@$core.Deprecated('Use digestManifestDescriptor instead')
const DigestManifest$json = {
  '1': 'DigestManifest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'manifest_id', '3': 2, '4': 1, '5': 9, '10': 'manifestId'},
    {'1': 'run_id', '3': 3, '4': 1, '5': 9, '10': 'runId'},
    {'1': 'plan_id', '3': 4, '4': 1, '5': 9, '10': 'planId'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'combined_digest', '3': 6, '4': 1, '5': 9, '10': 'combinedDigest'},
    {'1': 'event_digest', '3': 7, '4': 1, '5': 9, '10': 'eventDigest'},
    {
      '1': 'artifact_descriptors',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ArtifactDescriptor',
      '10': 'artifactDescriptors'
    },
  ],
};

/// Descriptor for `DigestManifest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List digestManifestDescriptor = $convert.base64Decode(
    'Cg5EaWdlc3RNYW5pZmVzdBIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg9jb250cmFjdFZlcn'
    'Npb24SHwoLbWFuaWZlc3RfaWQYAiABKAlSCm1hbmlmZXN0SWQSFQoGcnVuX2lkGAMgASgJUgVy'
    'dW5JZBIXCgdwbGFuX2lkGAQgASgJUgZwbGFuSWQSHQoKY3JlYXRlZF9hdBgFIAEoBFIJY3JlYX'
    'RlZEF0EicKD2NvbWJpbmVkX2RpZ2VzdBgGIAEoCVIOY29tYmluZWREaWdlc3QSIQoMZXZlbnRf'
    'ZGlnZXN0GAcgASgJUgtldmVudERpZ2VzdBJiChRhcnRpZmFjdF9kZXNjcmlwdG9ycxgIIAMoCz'
    'IvLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BcnRpZmFjdERlc2NyaXB0b3JSE2FydGlm'
    'YWN0RGVzY3JpcHRvcnM=');

@$core.Deprecated('Use principalRefDescriptor instead')
const PrincipalRef$json = {
  '1': 'PrincipalRef',
  '2': [
    {'1': 'principal_id', '3': 1, '4': 1, '5': 9, '10': 'principalId'},
    {'1': 'provider', '3': 2, '4': 1, '5': 9, '10': 'provider'},
    {
      '1': 'display_name',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'displayName',
      '17': true
    },
  ],
  '8': [
    {'1': '_display_name'},
  ],
};

/// Descriptor for `PrincipalRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List principalRefDescriptor = $convert.base64Decode(
    'CgxQcmluY2lwYWxSZWYSIQoMcHJpbmNpcGFsX2lkGAEgASgJUgtwcmluY2lwYWxJZBIaCghwcm'
    '92aWRlchgCIAEoCVIIcHJvdmlkZXISJgoMZGlzcGxheV9uYW1lGAMgASgJSABSC2Rpc3BsYXlO'
    'YW1liAEBQg8KDV9kaXNwbGF5X25hbWU=');

@$core.Deprecated('Use tenantRefDescriptor instead')
const TenantRef$json = {
  '1': 'TenantRef',
  '2': [
    {'1': 'tenant_id', '3': 1, '4': 1, '5': 9, '10': 'tenantId'},
    {
      '1': 'display_name',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'displayName',
      '17': true
    },
  ],
  '8': [
    {'1': '_display_name'},
  ],
};

/// Descriptor for `TenantRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tenantRefDescriptor = $convert.base64Decode(
    'CglUZW5hbnRSZWYSGwoJdGVuYW50X2lkGAEgASgJUgh0ZW5hbnRJZBImCgxkaXNwbGF5X25hbW'
    'UYAiABKAlIAFILZGlzcGxheU5hbWWIAQFCDwoNX2Rpc3BsYXlfbmFtZQ==');

@$core.Deprecated('Use authContextDescriptor instead')
const AuthContext$json = {
  '1': 'AuthContext',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'auth_context_id', '3': 2, '4': 1, '5': 9, '10': 'authContextId'},
    {
      '1': 'principal',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.PrincipalRef',
      '10': 'principal'
    },
    {
      '1': 'tenant',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.TenantRef',
      '10': 'tenant'
    },
    {
      '1': 'mechanism',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.AuthMechanism',
      '10': 'mechanism'
    },
    {'1': 'credential_id', '3': 6, '4': 1, '5': 9, '10': 'credentialId'},
    {'1': 'scopes', '3': 7, '4': 3, '5': 9, '10': 'scopes'},
    {'1': 'issued_at', '3': 8, '4': 1, '5': 4, '10': 'issuedAt'},
    {
      '1': 'expires_at',
      '3': 9,
      '4': 1,
      '5': 4,
      '9': 0,
      '10': 'expiresAt',
      '17': true
    },
  ],
  '8': [
    {'1': '_expires_at'},
  ],
};

/// Descriptor for `AuthContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authContextDescriptor = $convert.base64Decode(
    'CgtBdXRoQ29udGV4dBIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg9jb250cmFjdFZlcnNpb2'
    '4SJgoPYXV0aF9jb250ZXh0X2lkGAIgASgJUg1hdXRoQ29udGV4dElkEkcKCXByaW5jaXBhbBgD'
    'IAEoCzIpLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5QcmluY2lwYWxSZWZSCXByaW5jaX'
    'BhbBI+CgZ0ZW5hbnQYBCABKAsyJi5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuVGVuYW50'
    'UmVmUgZ0ZW5hbnQSSAoJbWVjaGFuaXNtGAUgASgOMioubW9uYXJjaGljLmFnZW50X3Byb3RvY2'
    '9sLnYxLkF1dGhNZWNoYW5pc21SCW1lY2hhbmlzbRIjCg1jcmVkZW50aWFsX2lkGAYgASgJUgxj'
    'cmVkZW50aWFsSWQSFgoGc2NvcGVzGAcgAygJUgZzY29wZXMSGwoJaXNzdWVkX2F0GAggASgEUg'
    'hpc3N1ZWRBdBIiCgpleHBpcmVzX2F0GAkgASgESABSCWV4cGlyZXNBdIgBAUINCgtfZXhwaXJl'
    'c19hdA==');

@$core.Deprecated('Use usageRecordDescriptor instead')
const UsageRecord$json = {
  '1': 'UsageRecord',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'usage_id', '3': 2, '4': 1, '5': 9, '10': 'usageId'},
    {
      '1': 'principal',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.PrincipalRef',
      '10': 'principal'
    },
    {
      '1': 'tenant',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.TenantRef',
      '10': 'tenant'
    },
    {'1': 'run_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'runId', '17': true},
    {
      '1': 'plan_id',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'planId',
      '17': true
    },
    {
      '1': 'category',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.UsageCategory',
      '10': 'category'
    },
    {'1': 'metric_name', '3': 8, '4': 1, '5': 9, '10': 'metricName'},
    {'1': 'quantity', '3': 9, '4': 1, '5': 4, '10': 'quantity'},
    {
      '1': 'unit',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.UsageUnit',
      '10': 'unit'
    },
    {'1': 'recorded_at', '3': 11, '4': 1, '5': 4, '10': 'recordedAt'},
  ],
  '8': [
    {'1': '_run_id'},
    {'1': '_plan_id'},
  ],
};

/// Descriptor for `UsageRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usageRecordDescriptor = $convert.base64Decode(
    'CgtVc2FnZVJlY29yZBIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg9jb250cmFjdFZlcnNpb2'
    '4SGQoIdXNhZ2VfaWQYAiABKAlSB3VzYWdlSWQSRwoJcHJpbmNpcGFsGAMgASgLMikubW9uYXJj'
    'aGljLmFnZW50X3Byb3RvY29sLnYxLlByaW5jaXBhbFJlZlIJcHJpbmNpcGFsEj4KBnRlbmFudB'
    'gEIAEoCzImLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5UZW5hbnRSZWZSBnRlbmFudBIa'
    'CgZydW5faWQYBSABKAlIAFIFcnVuSWSIAQESHAoHcGxhbl9pZBgGIAEoCUgBUgZwbGFuSWSIAQ'
    'ESRgoIY2F0ZWdvcnkYByABKA4yKi5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuVXNhZ2VD'
    'YXRlZ29yeVIIY2F0ZWdvcnkSHwoLbWV0cmljX25hbWUYCCABKAlSCm1ldHJpY05hbWUSGgoIcX'
    'VhbnRpdHkYCSABKARSCHF1YW50aXR5EjoKBHVuaXQYCiABKA4yJi5tb25hcmNoaWMuYWdlbnRf'
    'cHJvdG9jb2wudjEuVXNhZ2VVbml0UgR1bml0Eh8KC3JlY29yZGVkX2F0GAsgASgEUgpyZWNvcm'
    'RlZEF0QgkKB19ydW5faWRCCgoIX3BsYW5faWQ=');

@$core.Deprecated('Use auditExportManifestDescriptor instead')
const AuditExportManifest$json = {
  '1': 'AuditExportManifest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'export_id', '3': 2, '4': 1, '5': 9, '10': 'exportId'},
    {
      '1': 'principal',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.PrincipalRef',
      '10': 'principal'
    },
    {
      '1': 'tenant',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.TenantRef',
      '10': 'tenant'
    },
    {'1': 'run_id', '3': 5, '4': 1, '5': 9, '10': 'runId'},
    {'1': 'plan_id', '3': 6, '4': 1, '5': 9, '10': 'planId'},
    {'1': 'exported_at', '3': 7, '4': 1, '5': 4, '10': 'exportedAt'},
    {'1': 'combined_digest', '3': 8, '4': 1, '5': 9, '10': 'combinedDigest'},
    {
      '1': 'artifact_descriptors',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ArtifactDescriptor',
      '10': 'artifactDescriptors'
    },
  ],
};

/// Descriptor for `AuditExportManifest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List auditExportManifestDescriptor = $convert.base64Decode(
    'ChNBdWRpdEV4cG9ydE1hbmlmZXN0EikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2NvbnRyYW'
    'N0VmVyc2lvbhIbCglleHBvcnRfaWQYAiABKAlSCGV4cG9ydElkEkcKCXByaW5jaXBhbBgDIAEo'
    'CzIpLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5QcmluY2lwYWxSZWZSCXByaW5jaXBhbB'
    'I+CgZ0ZW5hbnQYBCABKAsyJi5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuVGVuYW50UmVm'
    'UgZ0ZW5hbnQSFQoGcnVuX2lkGAUgASgJUgVydW5JZBIXCgdwbGFuX2lkGAYgASgJUgZwbGFuSW'
    'QSHwoLZXhwb3J0ZWRfYXQYByABKARSCmV4cG9ydGVkQXQSJwoPY29tYmluZWRfZGlnZXN0GAgg'
    'ASgJUg5jb21iaW5lZERpZ2VzdBJiChRhcnRpZmFjdF9kZXNjcmlwdG9ycxgJIAMoCzIvLm1vbm'
    'FyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BcnRpZmFjdERlc2NyaXB0b3JSE2FydGlmYWN0RGVz'
    'Y3JpcHRvcnM=');

@$core.Deprecated('Use replanPolicyDescriptor instead')
const ReplanPolicy$json = {
  '1': 'ReplanPolicy',
  '2': [
    {
      '1': 'strategy',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.ReplanStrategy',
      '10': 'strategy'
    },
    {'1': 'max_attempts', '3': 2, '4': 1, '5': 13, '10': 'maxAttempts'},
  ],
};

/// Descriptor for `ReplanPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replanPolicyDescriptor = $convert.base64Decode(
    'CgxSZXBsYW5Qb2xpY3kSRwoIc3RyYXRlZ3kYASABKA4yKy5tb25hcmNoaWMuYWdlbnRfcHJvdG'
    '9jb2wudjEuUmVwbGFuU3RyYXRlZ3lSCHN0cmF0ZWd5EiEKDG1heF9hdHRlbXB0cxgCIAEoDVIL'
    'bWF4QXR0ZW1wdHM=');

@$core.Deprecated('Use stepOutputExpectationDescriptor instead')
const StepOutputExpectation$json = {
  '1': 'StepOutputExpectation',
  '2': [
    {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.ArtifactKind',
      '10': 'kind'
    },
    {'1': 'logical_name', '3': 2, '4': 1, '5': 9, '10': 'logicalName'},
  ],
};

/// Descriptor for `StepOutputExpectation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepOutputExpectationDescriptor = $convert.base64Decode(
    'ChVTdGVwT3V0cHV0RXhwZWN0YXRpb24SPQoEa2luZBgBIAEoDjIpLm1vbmFyY2hpYy5hZ2VudF'
    '9wcm90b2NvbC52MS5BcnRpZmFjdEtpbmRSBGtpbmQSIQoMbG9naWNhbF9uYW1lGAIgASgJUgts'
    'b2dpY2FsTmFtZQ==');

@$core.Deprecated('Use planStepDescriptor instead')
const PlanStep$json = {
  '1': 'PlanStep',
  '2': [
    {'1': 'step_id', '3': 1, '4': 1, '5': 9, '10': 'stepId'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'depends_on', '3': 3, '4': 3, '5': 9, '10': 'dependsOn'},
    {
      '1': 'task_template',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'taskTemplate'
    },
    {
      '1': 'failure',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureDetail',
      '9': 0,
      '10': 'failure',
      '17': true
    },
    {
      '1': 'task_id',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'taskId',
      '17': true
    },
    {
      '1': 'kind',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.PlanStepKind',
      '10': 'kind'
    },
    {
      '1': 'inputs',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'inputs'
    },
    {
      '1': 'expected_outputs',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.StepOutputExpectation',
      '10': 'expectedOutputs'
    },
    {'1': 'policy_tags', '3': 10, '4': 3, '5': 9, '10': 'policyTags'},
  ],
  '8': [
    {'1': '_failure'},
    {'1': '_task_id'},
  ],
};

/// Descriptor for `PlanStep`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List planStepDescriptor = $convert.base64Decode(
    'CghQbGFuU3RlcBIXCgdzdGVwX2lkGAEgASgJUgZzdGVwSWQSIAoLZGVzY3JpcHRpb24YAiABKA'
    'lSC2Rlc2NyaXB0aW9uEh0KCmRlcGVuZHNfb24YAyADKAlSCWRlcGVuZHNPbhI8Cg10YXNrX3Rl'
    'bXBsYXRlGAQgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIMdGFza1RlbXBsYXRlEkkKB2'
    'ZhaWx1cmUYBSABKAsyKi5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuRmFpbHVyZURldGFp'
    'bEgAUgdmYWlsdXJliAEBEhwKB3Rhc2tfaWQYBiABKAlIAVIGdGFza0lkiAEBEj0KBGtpbmQYBy'
    'ABKA4yKS5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuUGxhblN0ZXBLaW5kUgRraW5kEi8K'
    'BmlucHV0cxgIIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBmlucHV0cxJdChBleHBlY3'
    'RlZF9vdXRwdXRzGAkgAygLMjIubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlN0ZXBPdXRw'
    'dXRFeHBlY3RhdGlvblIPZXhwZWN0ZWRPdXRwdXRzEh8KC3BvbGljeV90YWdzGAogAygJUgpwb2'
    'xpY3lUYWdzQgoKCF9mYWlsdXJlQgoKCF90YXNrX2lk');

@$core.Deprecated('Use planDescriptor instead')
const Plan$json = {
  '1': 'Plan',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'plan_id', '3': 2, '4': 1, '5': 9, '10': 'planId'},
    {'1': 'run_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'runId', '17': true},
    {'1': 'objective', '3': 4, '4': 1, '5': 9, '10': 'objective'},
    {
      '1': 'status',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.PlanStatus',
      '10': 'status'
    },
    {'1': 'created_at_ms', '3': 6, '4': 1, '5': 4, '10': 'createdAtMs'},
    {'1': 'updated_at_ms', '3': 7, '4': 1, '5': 4, '10': 'updatedAtMs'},
    {
      '1': 'provenance',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.PlanProvenance',
      '10': 'provenance'
    },
    {
      '1': 'steps',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.PlanStep',
      '10': 'steps'
    },
    {
      '1': 'intent_id',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'intentId',
      '17': true
    },
    {
      '1': 'plan_version',
      '3': 11,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'planVersion',
      '17': true
    },
    {
      '1': 'planner_version',
      '3': 12,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'plannerVersion',
      '17': true
    },
    {
      '1': 'replan_policy',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ReplanPolicy',
      '10': 'replanPolicy'
    },
    {
      '1': 'input_digest',
      '3': 14,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'inputDigest',
      '17': true
    },
  ],
  '8': [
    {'1': '_run_id'},
    {'1': '_intent_id'},
    {'1': '_plan_version'},
    {'1': '_planner_version'},
    {'1': '_input_digest'},
  ],
};

/// Descriptor for `Plan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List planDescriptor = $convert.base64Decode(
    'CgRQbGFuEikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2NvbnRyYWN0VmVyc2lvbhIXCgdwbG'
    'FuX2lkGAIgASgJUgZwbGFuSWQSGgoGcnVuX2lkGAMgASgJSABSBXJ1bklkiAEBEhwKCW9iamVj'
    'dGl2ZRgEIAEoCVIJb2JqZWN0aXZlEj8KBnN0YXR1cxgFIAEoDjInLm1vbmFyY2hpYy5hZ2VudF'
    '9wcm90b2NvbC52MS5QbGFuU3RhdHVzUgZzdGF0dXMSIgoNY3JlYXRlZF9hdF9tcxgGIAEoBFIL'
    'Y3JlYXRlZEF0TXMSIgoNdXBkYXRlZF9hdF9tcxgHIAEoBFILdXBkYXRlZEF0TXMSSwoKcHJvdm'
    'VuYW5jZRgIIAEoCzIrLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5QbGFuUHJvdmVuYW5j'
    'ZVIKcHJvdmVuYW5jZRI7CgVzdGVwcxgJIAMoCzIlLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC'
    '52MS5QbGFuU3RlcFIFc3RlcHMSIAoJaW50ZW50X2lkGAogASgJSAFSCGludGVudElkiAEBEiYK'
    'DHBsYW5fdmVyc2lvbhgLIAEoCUgCUgtwbGFuVmVyc2lvbogBARIsCg9wbGFubmVyX3ZlcnNpb2'
    '4YDCABKAlIA1IOcGxhbm5lclZlcnNpb26IAQESTgoNcmVwbGFuX3BvbGljeRgNIAEoCzIpLm1v'
    'bmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5SZXBsYW5Qb2xpY3lSDHJlcGxhblBvbGljeRImCg'
    'xpbnB1dF9kaWdlc3QYDiABKAlIBFILaW5wdXREaWdlc3SIAQFCCQoHX3J1bl9pZEIMCgpfaW50'
    'ZW50X2lkQg8KDV9wbGFuX3ZlcnNpb25CEgoQX3BsYW5uZXJfdmVyc2lvbkIPCg1faW5wdXRfZG'
    'lnZXN0');

@$core.Deprecated('Use executionReceiptDescriptor instead')
const ExecutionReceipt$json = {
  '1': 'ExecutionReceipt',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'run_id', '3': 2, '4': 1, '5': 9, '10': 'runId'},
    {'1': 'plan_id', '3': 3, '4': 1, '5': 9, '10': 'planId'},
    {'1': 'plan_hash', '3': 4, '4': 1, '5': 9, '10': 'planHash'},
    {'1': 'task_hashes', '3': 5, '4': 3, '5': 9, '10': 'taskHashes'},
    {'1': 'artifact_hashes', '3': 6, '4': 3, '5': 9, '10': 'artifactHashes'},
    {'1': 'outcome_hash', '3': 7, '4': 1, '5': 9, '10': 'outcomeHash'},
    {
      '1': 'status',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.PlanStatus',
      '10': 'status'
    },
    {
      '1': 'failure',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureDetail',
      '9': 0,
      '10': 'failure',
      '17': true
    },
    {'1': 'generated_at_ms', '3': 10, '4': 1, '5': 4, '10': 'generatedAtMs'},
    {
      '1': 'resolved_runner',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ResolvedAgentRunner',
      '9': 1,
      '10': 'resolvedRunner',
      '17': true
    },
  ],
  '8': [
    {'1': '_failure'},
    {'1': '_resolved_runner'},
  ],
};

/// Descriptor for `ExecutionReceipt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executionReceiptDescriptor = $convert.base64Decode(
    'ChBFeGVjdXRpb25SZWNlaXB0EikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2NvbnRyYWN0Vm'
    'Vyc2lvbhIVCgZydW5faWQYAiABKAlSBXJ1bklkEhcKB3BsYW5faWQYAyABKAlSBnBsYW5JZBIb'
    'CglwbGFuX2hhc2gYBCABKAlSCHBsYW5IYXNoEh8KC3Rhc2tfaGFzaGVzGAUgAygJUgp0YXNrSG'
    'FzaGVzEicKD2FydGlmYWN0X2hhc2hlcxgGIAMoCVIOYXJ0aWZhY3RIYXNoZXMSIQoMb3V0Y29t'
    'ZV9oYXNoGAcgASgJUgtvdXRjb21lSGFzaBI/CgZzdGF0dXMYCCABKA4yJy5tb25hcmNoaWMuYW'
    'dlbnRfcHJvdG9jb2wudjEuUGxhblN0YXR1c1IGc3RhdHVzEkkKB2ZhaWx1cmUYCSABKAsyKi5t'
    'b25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuRmFpbHVyZURldGFpbEgAUgdmYWlsdXJliAEBEi'
    'YKD2dlbmVyYXRlZF9hdF9tcxgKIAEoBFINZ2VuZXJhdGVkQXRNcxJeCg9yZXNvbHZlZF9ydW5u'
    'ZXIYCyABKAsyMC5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuUmVzb2x2ZWRBZ2VudFJ1bm'
    '5lckgBUg5yZXNvbHZlZFJ1bm5lcogBAUIKCghfZmFpbHVyZUISChBfcmVzb2x2ZWRfcnVubmVy');

@$core.Deprecated('Use verificationCheckDescriptor instead')
const VerificationCheck$json = {
  '1': 'VerificationCheck',
  '2': [
    {'1': 'check_id', '3': 1, '4': 1, '5': 9, '10': 'checkId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'status',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.VerificationCheckStatus',
      '10': 'status'
    },
    {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    {'1': 'artifact_ids', '3': 5, '4': 3, '5': 9, '10': 'artifactIds'},
  ],
};

/// Descriptor for `VerificationCheck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationCheckDescriptor = $convert.base64Decode(
    'ChFWZXJpZmljYXRpb25DaGVjaxIZCghjaGVja19pZBgBIAEoCVIHY2hlY2tJZBISCgRuYW1lGA'
    'IgASgJUgRuYW1lEkwKBnN0YXR1cxgDIAEoDjI0Lm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52'
    'MS5WZXJpZmljYXRpb25DaGVja1N0YXR1c1IGc3RhdHVzEhgKB21lc3NhZ2UYBCABKAlSB21lc3'
    'NhZ2USIQoMYXJ0aWZhY3RfaWRzGAUgAygJUgthcnRpZmFjdElkcw==');

@$core.Deprecated('Use blockedOutcomeDescriptor instead')
const BlockedOutcome$json = {
  '1': 'BlockedOutcome',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {
      '1': 'scope',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.BlockedOutcomeScope',
      '10': 'scope'
    },
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {
      '1': 'details',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'details'
    },
    {
      '1': 'blocking_artifacts',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ArtifactDescriptor',
      '10': 'blockingArtifacts'
    },
  ],
};

/// Descriptor for `BlockedOutcome`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockedOutcomeDescriptor = $convert.base64Decode(
    'Cg5CbG9ja2VkT3V0Y29tZRISCgRjb2RlGAEgASgJUgRjb2RlEkYKBXNjb3BlGAIgASgOMjAubW'
    '9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkJsb2NrZWRPdXRjb21lU2NvcGVSBXNjb3BlEhgK'
    'B21lc3NhZ2UYAyABKAlSB21lc3NhZ2USMQoHZGV0YWlscxgEIAEoCzIXLmdvb2dsZS5wcm90b2'
    'J1Zi5TdHJ1Y3RSB2RldGFpbHMSXgoSYmxvY2tpbmdfYXJ0aWZhY3RzGAUgAygLMi8ubW9uYXJj'
    'aGljLmFnZW50X3Byb3RvY29sLnYxLkFydGlmYWN0RGVzY3JpcHRvclIRYmxvY2tpbmdBcnRpZm'
    'FjdHM=');

@$core.Deprecated('Use verificationReceiptDescriptor instead')
const VerificationReceipt$json = {
  '1': 'VerificationReceipt',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'verification_id', '3': 2, '4': 1, '5': 9, '10': 'verificationId'},
    {'1': 'plan_id', '3': 3, '4': 1, '5': 9, '10': 'planId'},
    {
      '1': 'execution_receipt_ids',
      '3': 4,
      '4': 3,
      '5': 9,
      '10': 'executionReceiptIds'
    },
    {
      '1': 'verification_policy_version',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'verificationPolicyVersion'
    },
    {
      '1': 'status',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.VerificationStatus',
      '10': 'status'
    },
    {
      '1': 'checks',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.VerificationCheck',
      '10': 'checks'
    },
    {
      '1': 'blocked_outcomes',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BlockedOutcome',
      '10': 'blockedOutcomes'
    },
    {
      '1': 'artifact_digest_set',
      '3': 9,
      '4': 3,
      '5': 9,
      '10': 'artifactDigestSet'
    },
    {'1': 'verified_at_ms', '3': 10, '4': 1, '5': 4, '10': 'verifiedAtMs'},
  ],
};

/// Descriptor for `VerificationReceipt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationReceiptDescriptor = $convert.base64Decode(
    'ChNWZXJpZmljYXRpb25SZWNlaXB0EikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2NvbnRyYW'
    'N0VmVyc2lvbhInCg92ZXJpZmljYXRpb25faWQYAiABKAlSDnZlcmlmaWNhdGlvbklkEhcKB3Bs'
    'YW5faWQYAyABKAlSBnBsYW5JZBIyChVleGVjdXRpb25fcmVjZWlwdF9pZHMYBCADKAlSE2V4ZW'
    'N1dGlvblJlY2VpcHRJZHMSPgobdmVyaWZpY2F0aW9uX3BvbGljeV92ZXJzaW9uGAUgASgJUhl2'
    'ZXJpZmljYXRpb25Qb2xpY3lWZXJzaW9uEkcKBnN0YXR1cxgGIAEoDjIvLm1vbmFyY2hpYy5hZ2'
    'VudF9wcm90b2NvbC52MS5WZXJpZmljYXRpb25TdGF0dXNSBnN0YXR1cxJGCgZjaGVja3MYByAD'
    'KAsyLi5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuVmVyaWZpY2F0aW9uQ2hlY2tSBmNoZW'
    'NrcxJWChBibG9ja2VkX291dGNvbWVzGAggAygLMisubW9uYXJjaGljLmFnZW50X3Byb3RvY29s'
    'LnYxLkJsb2NrZWRPdXRjb21lUg9ibG9ja2VkT3V0Y29tZXMSLgoTYXJ0aWZhY3RfZGlnZXN0X3'
    'NldBgJIAMoCVIRYXJ0aWZhY3REaWdlc3RTZXQSJAoOdmVyaWZpZWRfYXRfbXMYCiABKARSDHZl'
    'cmlmaWVkQXRNcw==');

@$core.Deprecated('Use reviewDecisionDescriptor instead')
const ReviewDecision$json = {
  '1': 'ReviewDecision',
  '2': [
    {'1': 'decision_id', '3': 1, '4': 1, '5': 9, '10': 'decisionId'},
    {'1': 'plan_id', '3': 2, '4': 1, '5': 9, '10': 'planId'},
    {
      '1': 'scope',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.ReviewDecisionScope',
      '10': 'scope'
    },
    {'1': 'actor', '3': 4, '4': 1, '5': 9, '10': 'actor'},
    {
      '1': 'decision',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.ReviewDisposition',
      '10': 'decision'
    },
    {'1': 'reason', '3': 6, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 4, '10': 'createdAt'},
  ],
};

/// Descriptor for `ReviewDecision`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewDecisionDescriptor = $convert.base64Decode(
    'Cg5SZXZpZXdEZWNpc2lvbhIfCgtkZWNpc2lvbl9pZBgBIAEoCVIKZGVjaXNpb25JZBIXCgdwbG'
    'FuX2lkGAIgASgJUgZwbGFuSWQSRgoFc2NvcGUYAyABKA4yMC5tb25hcmNoaWMuYWdlbnRfcHJv'
    'dG9jb2wudjEuUmV2aWV3RGVjaXNpb25TY29wZVIFc2NvcGUSFAoFYWN0b3IYBCABKAlSBWFjdG'
    '9yEkoKCGRlY2lzaW9uGAUgASgOMi4ubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlJldmll'
    'd0Rpc3Bvc2l0aW9uUghkZWNpc2lvbhIWCgZyZWFzb24YBiABKAlSBnJlYXNvbhIdCgpjcmVhdG'
    'VkX2F0GAcgASgEUgljcmVhdGVkQXQ=');

@$core.Deprecated('Use rerunScopeDescriptor instead')
const RerunScope$json = {
  '1': 'RerunScope',
  '2': [
    {'1': 'scope_id', '3': 1, '4': 1, '5': 9, '10': 'scopeId'},
    {'1': 'plan_id', '3': 2, '4': 1, '5': 9, '10': 'planId'},
    {
      '1': 'trigger',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.RerunTrigger',
      '10': 'trigger'
    },
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {
      '1': 'source_decision_id',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'sourceDecisionId',
      '17': true
    },
    {'1': 'task_ids', '3': 6, '4': 3, '5': 9, '10': 'taskIds'},
    {'1': 'step_ids', '3': 7, '4': 3, '5': 9, '10': 'stepIds'},
    {'1': 'paths', '3': 8, '4': 3, '5': 9, '10': 'paths'},
    {'1': 'created_at', '3': 9, '4': 1, '5': 4, '10': 'createdAt'},
  ],
  '8': [
    {'1': '_source_decision_id'},
  ],
};

/// Descriptor for `RerunScope`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rerunScopeDescriptor = $convert.base64Decode(
    'CgpSZXJ1blNjb3BlEhkKCHNjb3BlX2lkGAEgASgJUgdzY29wZUlkEhcKB3BsYW5faWQYAiABKA'
    'lSBnBsYW5JZBJDCgd0cmlnZ2VyGAMgASgOMikubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYx'
    'LlJlcnVuVHJpZ2dlclIHdHJpZ2dlchIWCgZyZWFzb24YBCABKAlSBnJlYXNvbhIxChJzb3VyY2'
    'VfZGVjaXNpb25faWQYBSABKAlIAFIQc291cmNlRGVjaXNpb25JZIgBARIZCgh0YXNrX2lkcxgG'
    'IAMoCVIHdGFza0lkcxIZCghzdGVwX2lkcxgHIAMoCVIHc3RlcElkcxIUCgVwYXRocxgIIAMoCV'
    'IFcGF0aHMSHQoKY3JlYXRlZF9hdBgJIAEoBFIJY3JlYXRlZEF0QhUKE19zb3VyY2VfZGVjaXNp'
    'b25faWQ=');

@$core.Deprecated('Use rerunExecutionResultDescriptor instead')
const RerunExecutionResult$json = {
  '1': 'RerunExecutionResult',
  '2': [
    {'1': 'result_id', '3': 1, '4': 1, '5': 9, '10': 'resultId'},
    {'1': 'plan_id', '3': 2, '4': 1, '5': 9, '10': 'planId'},
    {'1': 'rerun_scope_id', '3': 3, '4': 1, '5': 9, '10': 'rerunScopeId'},
    {
      '1': 'source_decision_id',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'sourceDecisionId',
      '17': true
    },
    {
      '1': 'trigger',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.RerunTrigger',
      '10': 'trigger'
    },
    {
      '1': 'matched_strategy',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.RerunSelectionStrategy',
      '10': 'matchedStrategy'
    },
    {'1': 'root_tasks', '3': 7, '4': 3, '5': 9, '10': 'rootTasks'},
    {'1': 'selected_tasks', '3': 8, '4': 3, '5': 9, '10': 'selectedTasks'},
    {'1': 'matched_paths', '3': 9, '4': 3, '5': 9, '10': 'matchedPaths'},
    {'1': 'reason', '3': 10, '4': 1, '5': 9, '10': 'reason'},
    {
      '1': 'status',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.RerunExecutionStatus',
      '10': 'status'
    },
    {'1': 'completed_tasks', '3': 12, '4': 3, '5': 9, '10': 'completedTasks'},
    {'1': 'failed_tasks', '3': 13, '4': 3, '5': 9, '10': 'failedTasks'},
    {'1': 'skipped_tasks', '3': 14, '4': 3, '5': 9, '10': 'skippedTasks'},
    {'1': 'created_at', '3': 15, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'updated_at', '3': 16, '4': 1, '5': 4, '10': 'updatedAt'},
  ],
  '8': [
    {'1': '_source_decision_id'},
  ],
};

/// Descriptor for `RerunExecutionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rerunExecutionResultDescriptor = $convert.base64Decode(
    'ChRSZXJ1bkV4ZWN1dGlvblJlc3VsdBIbCglyZXN1bHRfaWQYASABKAlSCHJlc3VsdElkEhcKB3'
    'BsYW5faWQYAiABKAlSBnBsYW5JZBIkCg5yZXJ1bl9zY29wZV9pZBgDIAEoCVIMcmVydW5TY29w'
    'ZUlkEjEKEnNvdXJjZV9kZWNpc2lvbl9pZBgEIAEoCUgAUhBzb3VyY2VEZWNpc2lvbklkiAEBEk'
    'MKB3RyaWdnZXIYBSABKA4yKS5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuUmVydW5Ucmln'
    'Z2VyUgd0cmlnZ2VyEl4KEG1hdGNoZWRfc3RyYXRlZ3kYBiABKA4yMy5tb25hcmNoaWMuYWdlbn'
    'RfcHJvdG9jb2wudjEuUmVydW5TZWxlY3Rpb25TdHJhdGVneVIPbWF0Y2hlZFN0cmF0ZWd5Eh0K'
    'CnJvb3RfdGFza3MYByADKAlSCXJvb3RUYXNrcxIlCg5zZWxlY3RlZF90YXNrcxgIIAMoCVINc2'
    'VsZWN0ZWRUYXNrcxIjCg1tYXRjaGVkX3BhdGhzGAkgAygJUgxtYXRjaGVkUGF0aHMSFgoGcmVh'
    'c29uGAogASgJUgZyZWFzb24SSQoGc3RhdHVzGAsgASgOMjEubW9uYXJjaGljLmFnZW50X3Byb3'
    'RvY29sLnYxLlJlcnVuRXhlY3V0aW9uU3RhdHVzUgZzdGF0dXMSJwoPY29tcGxldGVkX3Rhc2tz'
    'GAwgAygJUg5jb21wbGV0ZWRUYXNrcxIhCgxmYWlsZWRfdGFza3MYDSADKAlSC2ZhaWxlZFRhc2'
    'tzEiMKDXNraXBwZWRfdGFza3MYDiADKAlSDHNraXBwZWRUYXNrcxIdCgpjcmVhdGVkX2F0GA8g'
    'ASgEUgljcmVhdGVkQXQSHQoKdXBkYXRlZF9hdBgQIAEoBFIJdXBkYXRlZEF0QhUKE19zb3VyY2'
    'VfZGVjaXNpb25faWQ=');

@$core.Deprecated('Use prLifecycleStateDescriptor instead')
const PrLifecycleState$json = {
  '1': 'PrLifecycleState',
  '2': [
    {'1': 'state_id', '3': 1, '4': 1, '5': 9, '10': 'stateId'},
    {'1': 'plan_id', '3': 2, '4': 1, '5': 9, '10': 'planId'},
    {
      '1': 'pr_number',
      '3': 3,
      '4': 1,
      '5': 4,
      '9': 0,
      '10': 'prNumber',
      '17': true
    },
    {'1': 'pr_url', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'prUrl', '17': true},
    {
      '1': 'review_decision',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ReviewDecision',
      '9': 2,
      '10': 'reviewDecision',
      '17': true
    },
    {
      '1': 'rerun_scope',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.RerunScope',
      '9': 3,
      '10': 'rerunScope',
      '17': true
    },
    {
      '1': 'rerun_result',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.RerunExecutionResult',
      '9': 4,
      '10': 'rerunResult',
      '17': true
    },
    {
      '1': 'verification_receipt',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.VerificationReceipt',
      '9': 5,
      '10': 'verificationReceipt',
      '17': true
    },
    {'1': 'merge_ready', '3': 9, '4': 1, '5': 8, '10': 'mergeReady'},
    {'1': 'release_ready', '3': 10, '4': 1, '5': 8, '10': 'releaseReady'},
    {
      '1': 'blocked_outcomes',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.BlockedOutcome',
      '10': 'blockedOutcomes'
    },
    {'1': 'updated_at', '3': 12, '4': 1, '5': 4, '10': 'updatedAt'},
  ],
  '8': [
    {'1': '_pr_number'},
    {'1': '_pr_url'},
    {'1': '_review_decision'},
    {'1': '_rerun_scope'},
    {'1': '_rerun_result'},
    {'1': '_verification_receipt'},
  ],
};

/// Descriptor for `PrLifecycleState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prLifecycleStateDescriptor = $convert.base64Decode(
    'ChBQckxpZmVjeWNsZVN0YXRlEhkKCHN0YXRlX2lkGAEgASgJUgdzdGF0ZUlkEhcKB3BsYW5faW'
    'QYAiABKAlSBnBsYW5JZBIgCglwcl9udW1iZXIYAyABKARIAFIIcHJOdW1iZXKIAQESGgoGcHJf'
    'dXJsGAQgASgJSAFSBXByVXJsiAEBElkKD3Jldmlld19kZWNpc2lvbhgFIAEoCzIrLm1vbmFyY2'
    'hpYy5hZ2VudF9wcm90b2NvbC52MS5SZXZpZXdEZWNpc2lvbkgCUg5yZXZpZXdEZWNpc2lvbogB'
    'ARJNCgtyZXJ1bl9zY29wZRgGIAEoCzInLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5SZX'
    'J1blNjb3BlSANSCnJlcnVuU2NvcGWIAQESWQoMcmVydW5fcmVzdWx0GAcgASgLMjEubW9uYXJj'
    'aGljLmFnZW50X3Byb3RvY29sLnYxLlJlcnVuRXhlY3V0aW9uUmVzdWx0SARSC3JlcnVuUmVzdW'
    'x0iAEBEmgKFHZlcmlmaWNhdGlvbl9yZWNlaXB0GAggASgLMjAubW9uYXJjaGljLmFnZW50X3By'
    'b3RvY29sLnYxLlZlcmlmaWNhdGlvblJlY2VpcHRIBVITdmVyaWZpY2F0aW9uUmVjZWlwdIgBAR'
    'IfCgttZXJnZV9yZWFkeRgJIAEoCFIKbWVyZ2VSZWFkeRIjCg1yZWxlYXNlX3JlYWR5GAogASgI'
    'UgxyZWxlYXNlUmVhZHkSVgoQYmxvY2tlZF9vdXRjb21lcxgLIAMoCzIrLm1vbmFyY2hpYy5hZ2'
    'VudF9wcm90b2NvbC52MS5CbG9ja2VkT3V0Y29tZVIPYmxvY2tlZE91dGNvbWVzEh0KCnVwZGF0'
    'ZWRfYXQYDCABKARSCXVwZGF0ZWRBdEIMCgpfcHJfbnVtYmVyQgkKB19wcl91cmxCEgoQX3Jldm'
    'lld19kZWNpc2lvbkIOCgxfcmVydW5fc2NvcGVCDwoNX3JlcnVuX3Jlc3VsdEIXChVfdmVyaWZp'
    'Y2F0aW9uX3JlY2VpcHQ=');

@$core.Deprecated('Use taskDescriptor instead')
const Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'task_id', '3': 2, '4': 1, '5': 9, '10': 'taskId'},
    {
      '1': 'role',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.AgentRole',
      '10': 'role'
    },
    {'1': 'goal', '3': 4, '4': 1, '5': 9, '10': 'goal'},
    {
      '1': 'inputs',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'inputs'
    },
    {
      '1': 'constraints',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'constraints'
    },
    {'1': 'gates_required', '3': 7, '4': 3, '5': 9, '10': 'gatesRequired'},
    {
      '1': 'run_context',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.RunContext',
      '10': 'runContext'
    },
    {
      '1': 'extensions',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'experiment_spec',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ExperimentSpec',
      '10': 'experimentSpec'
    },
    {
      '1': 'objective_spec',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ObjectiveSpec',
      '10': 'objectiveSpec'
    },
    {'1': 'role_id', '3': 12, '4': 1, '5': 9, '10': 'roleId'},
  ],
};

/// Descriptor for `Task`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskDescriptor = $convert.base64Decode(
    'CgRUYXNrEhgKB3ZlcnNpb24YASABKAlSB3ZlcnNpb24SFwoHdGFza19pZBgCIAEoCVIGdGFza0'
    'lkEjoKBHJvbGUYAyABKA4yJi5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuQWdlbnRSb2xl'
    'UgRyb2xlEhIKBGdvYWwYBCABKAlSBGdvYWwSLwoGaW5wdXRzGAUgASgLMhcuZ29vZ2xlLnByb3'
    'RvYnVmLlN0cnVjdFIGaW5wdXRzEjkKC2NvbnN0cmFpbnRzGAYgASgLMhcuZ29vZ2xlLnByb3Rv'
    'YnVmLlN0cnVjdFILY29uc3RyYWludHMSJQoOZ2F0ZXNfcmVxdWlyZWQYByADKAlSDWdhdGVzUm'
    'VxdWlyZWQSSAoLcnVuX2NvbnRleHQYCCABKAsyJy5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wu'
    'djEuUnVuQ29udGV4dFIKcnVuQ29udGV4dBI3CgpleHRlbnNpb25zGAkgASgLMhcuZ29vZ2xlLn'
    'Byb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9ucxJUCg9leHBlcmltZW50X3NwZWMYCiABKAsyKy5t'
    'b25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuRXhwZXJpbWVudFNwZWNSDmV4cGVyaW1lbnRTcG'
    'VjElEKDm9iamVjdGl2ZV9zcGVjGAsgASgLMioubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYx'
    'Lk9iamVjdGl2ZVNwZWNSDW9iamVjdGl2ZVNwZWMSFwoHcm9sZV9pZBgMIAEoCVIGcm9sZUlk');

@$core.Deprecated('Use artifactDescriptor instead')
const Artifact$json = {
  '1': 'Artifact',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'artifact_id', '3': 2, '4': 1, '5': 9, '10': 'artifactId'},
    {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    {'1': 'summary', '3': 4, '4': 1, '5': 9, '10': 'summary'},
    {'1': 'path', '3': 5, '4': 1, '5': 9, '10': 'path'},
    {'1': 'task_id', '3': 6, '4': 1, '5': 9, '10': 'taskId'},
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'provenance',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.Provenance',
      '10': 'provenance'
    },
    {
      '1': 'dataset_refs',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.DatasetRef',
      '10': 'datasetRefs'
    },
    {
      '1': 'eval_results',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.EvalResult',
      '10': 'evalResults'
    },
    {
      '1': 'experiment_spec',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ExperimentSpec',
      '10': 'experimentSpec'
    },
  ],
};

/// Descriptor for `Artifact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List artifactDescriptor = $convert.base64Decode(
    'CghBcnRpZmFjdBIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9uEh8KC2FydGlmYWN0X2lkGAIgAS'
    'gJUgphcnRpZmFjdElkEhIKBHR5cGUYAyABKAlSBHR5cGUSGAoHc3VtbWFyeRgEIAEoCVIHc3Vt'
    'bWFyeRISCgRwYXRoGAUgASgJUgRwYXRoEhcKB3Rhc2tfaWQYBiABKAlSBnRhc2tJZBI3CgpleH'
    'RlbnNpb25zGAcgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9ucxJHCgpw'
    'cm92ZW5hbmNlGAggASgLMicubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlByb3ZlbmFuY2'
    'VSCnByb3ZlbmFuY2USSgoMZGF0YXNldF9yZWZzGAkgAygLMicubW9uYXJjaGljLmFnZW50X3By'
    'b3RvY29sLnYxLkRhdGFzZXRSZWZSC2RhdGFzZXRSZWZzEkoKDGV2YWxfcmVzdWx0cxgKIAMoCz'
    'InLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5FdmFsUmVzdWx0UgtldmFsUmVzdWx0cxJU'
    'Cg9leHBlcmltZW50X3NwZWMYCyABKAsyKy5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuRX'
    'hwZXJpbWVudFNwZWNSDmV4cGVyaW1lbnRTcGVj');

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'event_type', '3': 2, '4': 1, '5': 9, '10': 'eventType'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 9, '10': 'timestamp'},
    {'1': 'task_id', '3': 4, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
    {
      '1': 'message',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'message',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'provenance',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.Provenance',
      '10': 'provenance'
    },
    {
      '1': 'eval_results',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.EvalResult',
      '10': 'evalResults'
    },
    {
      '1': 'failure_class',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureClass',
      '10': 'failureClass'
    },
  ],
  '8': [
    {'1': '_message'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9uEh0KCmV2ZW50X3R5cGUYAiABKAlSCW'
    'V2ZW50VHlwZRIcCgl0aW1lc3RhbXAYAyABKAlSCXRpbWVzdGFtcBIXCgd0YXNrX2lkGAQgASgJ'
    'UgZ0YXNrSWQSFgoGc3RhdHVzGAUgASgJUgZzdGF0dXMSHQoHbWVzc2FnZRgGIAEoCUgAUgdtZX'
    'NzYWdliAEBEjcKCmV4dGVuc2lvbnMYByABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0Ugpl'
    'eHRlbnNpb25zEkcKCnByb3ZlbmFuY2UYCCABKAsyJy5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2'
    'wudjEuUHJvdmVuYW5jZVIKcHJvdmVuYW5jZRJKCgxldmFsX3Jlc3VsdHMYCSADKAsyJy5tb25h'
    'cmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuRXZhbFJlc3VsdFILZXZhbFJlc3VsdHMSTgoNZmFpbH'
    'VyZV9jbGFzcxgKIAEoCzIpLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5GYWlsdXJlQ2xh'
    'c3NSDGZhaWx1cmVDbGFzc0IKCghfbWVzc2FnZQ==');

@$core.Deprecated('Use runEventRecordDescriptor instead')
const RunEventRecord$json = {
  '1': 'RunEventRecord',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'event_id', '3': 2, '4': 1, '5': 9, '10': 'eventId'},
    {'1': 'run_id', '3': 3, '4': 1, '5': 9, '10': 'runId'},
    {'1': 'plan_id', '3': 4, '4': 1, '5': 9, '10': 'planId'},
    {'1': 'sequence', '3': 5, '4': 1, '5': 4, '10': 'sequence'},
    {
      '1': 'stream',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.RunEventStream',
      '10': 'stream'
    },
    {'1': 'recorded_at', '3': 7, '4': 1, '5': 4, '10': 'recordedAt'},
    {
      '1': 'step_id',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'stepId',
      '17': true
    },
    {
      '1': 'task_id',
      '3': 9,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'taskId',
      '17': true
    },
    {'1': 'event_type', '3': 10, '4': 1, '5': 9, '10': 'eventType'},
    {'1': 'status', '3': 11, '4': 1, '5': 9, '10': 'status'},
    {
      '1': 'message',
      '3': 12,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'message',
      '17': true
    },
    {'1': 'artifact_ids', '3': 13, '4': 3, '5': 9, '10': 'artifactIds'},
  ],
  '8': [
    {'1': '_step_id'},
    {'1': '_task_id'},
    {'1': '_message'},
  ],
};

/// Descriptor for `RunEventRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runEventRecordDescriptor = $convert.base64Decode(
    'Cg5SdW5FdmVudFJlY29yZBIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg9jb250cmFjdFZlcn'
    'Npb24SGQoIZXZlbnRfaWQYAiABKAlSB2V2ZW50SWQSFQoGcnVuX2lkGAMgASgJUgVydW5JZBIX'
    'CgdwbGFuX2lkGAQgASgJUgZwbGFuSWQSGgoIc2VxdWVuY2UYBSABKARSCHNlcXVlbmNlEkMKBn'
    'N0cmVhbRgGIAEoDjIrLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5SdW5FdmVudFN0cmVh'
    'bVIGc3RyZWFtEh8KC3JlY29yZGVkX2F0GAcgASgEUgpyZWNvcmRlZEF0EhwKB3N0ZXBfaWQYCC'
    'ABKAlIAFIGc3RlcElkiAEBEhwKB3Rhc2tfaWQYCSABKAlIAVIGdGFza0lkiAEBEh0KCmV2ZW50'
    'X3R5cGUYCiABKAlSCWV2ZW50VHlwZRIWCgZzdGF0dXMYCyABKAlSBnN0YXR1cxIdCgdtZXNzYW'
    'dlGAwgASgJSAJSB21lc3NhZ2WIAQESIQoMYXJ0aWZhY3RfaWRzGA0gAygJUgthcnRpZmFjdElk'
    'c0IKCghfc3RlcF9pZEIKCghfdGFza19pZEIKCghfbWVzc2FnZQ==');

@$core.Deprecated('Use taskMessageDescriptor instead')
const TaskMessage$json = {
  '1': 'TaskMessage',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'message_id', '3': 2, '4': 1, '5': 9, '10': 'messageId'},
    {'1': 'run_id', '3': 3, '4': 1, '5': 9, '10': 'runId'},
    {'1': 'from_task_id', '3': 4, '4': 1, '5': 9, '10': 'fromTaskId'},
    {'1': 'to_task_id', '3': 5, '4': 1, '5': 9, '10': 'toTaskId'},
    {
      '1': 'kind',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.TaskMessageKind',
      '10': 'kind'
    },
    {
      '1': 'subject',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'subject',
      '17': true
    },
    {'1': 'body', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'body', '17': true},
    {'1': 'artifact_refs', '3': 9, '4': 3, '5': 9, '10': 'artifactRefs'},
    {
      '1': 'reply_to',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'replyTo',
      '17': true
    },
    {'1': 'created_at', '3': 11, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'requires_ack', '3': 12, '4': 1, '5': 8, '10': 'requiresAck'},
    {
      '1': 'extensions',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'provenance',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.Provenance',
      '10': 'provenance'
    },
  ],
  '8': [
    {'1': '_subject'},
    {'1': '_body'},
    {'1': '_reply_to'},
  ],
};

/// Descriptor for `TaskMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskMessageDescriptor = $convert.base64Decode(
    'CgtUYXNrTWVzc2FnZRIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9uEh0KCm1lc3NhZ2VfaWQYAi'
    'ABKAlSCW1lc3NhZ2VJZBIVCgZydW5faWQYAyABKAlSBXJ1bklkEiAKDGZyb21fdGFza19pZBgE'
    'IAEoCVIKZnJvbVRhc2tJZBIcCgp0b190YXNrX2lkGAUgASgJUgh0b1Rhc2tJZBJACgRraW5kGA'
    'YgASgOMiwubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlRhc2tNZXNzYWdlS2luZFIEa2lu'
    'ZBIdCgdzdWJqZWN0GAcgASgJSABSB3N1YmplY3SIAQESFwoEYm9keRgIIAEoCUgBUgRib2R5iA'
    'EBEiMKDWFydGlmYWN0X3JlZnMYCSADKAlSDGFydGlmYWN0UmVmcxIeCghyZXBseV90bxgKIAEo'
    'CUgCUgdyZXBseVRviAEBEh0KCmNyZWF0ZWRfYXQYCyABKAlSCWNyZWF0ZWRBdBIhCgxyZXF1aX'
    'Jlc19hY2sYDCABKAhSC3JlcXVpcmVzQWNrEjcKCmV4dGVuc2lvbnMYDSABKAsyFy5nb29nbGUu'
    'cHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25zEkcKCnByb3ZlbmFuY2UYDiABKAsyJy5tb25hcm'
    'NoaWMuYWdlbnRfcHJvdG9jb2wudjEuUHJvdmVuYW5jZVIKcHJvdmVuYW5jZUIKCghfc3ViamVj'
    'dEIHCgVfYm9keUILCglfcmVwbHlfdG8=');

@$core.Deprecated('Use taskMessageAckDescriptor instead')
const TaskMessageAck$json = {
  '1': 'TaskMessageAck',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'message_id', '3': 2, '4': 1, '5': 9, '10': 'messageId'},
    {'1': 'run_id', '3': 3, '4': 1, '5': 9, '10': 'runId'},
    {'1': 'task_id', '3': 4, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'acked_at', '3': 5, '4': 1, '5': 9, '10': 'ackedAt'},
    {'1': 'status', '3': 6, '4': 1, '5': 9, '10': 'status'},
    {'1': 'note', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'note', '17': true},
    {
      '1': 'extensions',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_note'},
  ],
};

/// Descriptor for `TaskMessageAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskMessageAckDescriptor = $convert.base64Decode(
    'Cg5UYXNrTWVzc2FnZUFjaxIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9uEh0KCm1lc3NhZ2VfaW'
    'QYAiABKAlSCW1lc3NhZ2VJZBIVCgZydW5faWQYAyABKAlSBXJ1bklkEhcKB3Rhc2tfaWQYBCAB'
    'KAlSBnRhc2tJZBIZCghhY2tlZF9hdBgFIAEoCVIHYWNrZWRBdBIWCgZzdGF0dXMYBiABKAlSBn'
    'N0YXR1cxIXCgRub3RlGAcgASgJSABSBG5vdGWIAQESNwoKZXh0ZW5zaW9ucxgIIAEoCzIXLmdv'
    'b2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnNCBwoFX25vdGU=');

@$core.Deprecated('Use gateResultDescriptor instead')
const GateResult$json = {
  '1': 'GateResult',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'gate', '3': 2, '4': 1, '5': 9, '10': 'gate'},
    {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'reason', '17': true},
    {
      '1': 'evidence',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'evidence'
    },
    {
      '1': 'extensions',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'failure_class',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureClass',
      '10': 'failureClass'
    },
  ],
  '8': [
    {'1': '_reason'},
  ],
};

/// Descriptor for `GateResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gateResultDescriptor = $convert.base64Decode(
    'CgpHYXRlUmVzdWx0EhgKB3ZlcnNpb24YASABKAlSB3ZlcnNpb24SEgoEZ2F0ZRgCIAEoCVIEZ2'
    'F0ZRIWCgZzdGF0dXMYAyABKAlSBnN0YXR1cxIbCgZyZWFzb24YBCABKAlIAFIGcmVhc29uiAEB'
    'EjMKCGV2aWRlbmNlGAUgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIIZXZpZGVuY2USNw'
    'oKZXh0ZW5zaW9ucxgGIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnMS'
    'TgoNZmFpbHVyZV9jbGFzcxgHIAEoCzIpLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5GYW'
    'lsdXJlQ2xhc3NSDGZhaWx1cmVDbGFzc0IJCgdfcmVhc29u');

@$core.Deprecated('Use runOutcomeDescriptor instead')
const RunOutcome$json = {
  '1': 'RunOutcome',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'task_id', '3': 2, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'run_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'runId', '17': true},
    {
      '1': 'objective_metric',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'objectiveMetric',
      '17': true
    },
    {
      '1': 'objective_score',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'objectiveScore',
      '17': true
    },
    {
      '1': 'objective_decision',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.OutcomeDecision',
      '10': 'objectiveDecision'
    },
    {
      '1': 'estimated_cost_usd',
      '3': 7,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'estimatedCostUsd',
      '17': true
    },
    {
      '1': 'budget_limit_usd',
      '3': 8,
      '4': 1,
      '5': 1,
      '9': 4,
      '10': 'budgetLimitUsd',
      '17': true
    },
    {
      '1': 'cost_decision',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.OutcomeDecision',
      '10': 'costDecision'
    },
    {
      '1': 'risk_level',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 5,
      '10': 'riskLevel',
      '17': true
    },
    {
      '1': 'risk_summary',
      '3': 11,
      '4': 1,
      '5': 9,
      '9': 6,
      '10': 'riskSummary',
      '17': true
    },
    {
      '1': 'risk_decision',
      '3': 12,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.OutcomeDecision',
      '10': 'riskDecision'
    },
    {
      '1': 'final_decision',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.OutcomeDecision',
      '10': 'finalDecision'
    },
    {
      '1': 'summary',
      '3': 14,
      '4': 1,
      '5': 9,
      '9': 7,
      '10': 'summary',
      '17': true
    },
    {
      '1': 'evidence',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'evidence'
    },
    {
      '1': 'extensions',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_run_id'},
    {'1': '_objective_metric'},
    {'1': '_objective_score'},
    {'1': '_estimated_cost_usd'},
    {'1': '_budget_limit_usd'},
    {'1': '_risk_level'},
    {'1': '_risk_summary'},
    {'1': '_summary'},
  ],
};

/// Descriptor for `RunOutcome`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runOutcomeDescriptor = $convert.base64Decode(
    'CgpSdW5PdXRjb21lEhgKB3ZlcnNpb24YASABKAlSB3ZlcnNpb24SFwoHdGFza19pZBgCIAEoCV'
    'IGdGFza0lkEhoKBnJ1bl9pZBgDIAEoCUgAUgVydW5JZIgBARIuChBvYmplY3RpdmVfbWV0cmlj'
    'GAQgASgJSAFSD29iamVjdGl2ZU1ldHJpY4gBARIsCg9vYmplY3RpdmVfc2NvcmUYBSABKAFIAl'
    'IOb2JqZWN0aXZlU2NvcmWIAQESWwoSb2JqZWN0aXZlX2RlY2lzaW9uGAYgASgOMiwubW9uYXJj'
    'aGljLmFnZW50X3Byb3RvY29sLnYxLk91dGNvbWVEZWNpc2lvblIRb2JqZWN0aXZlRGVjaXNpb2'
    '4SMQoSZXN0aW1hdGVkX2Nvc3RfdXNkGAcgASgBSANSEGVzdGltYXRlZENvc3RVc2SIAQESLQoQ'
    'YnVkZ2V0X2xpbWl0X3VzZBgIIAEoAUgEUg5idWRnZXRMaW1pdFVzZIgBARJRCg1jb3N0X2RlY2'
    'lzaW9uGAkgASgOMiwubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLk91dGNvbWVEZWNpc2lv'
    'blIMY29zdERlY2lzaW9uEiIKCnJpc2tfbGV2ZWwYCiABKAlIBVIJcmlza0xldmVsiAEBEiYKDH'
    'Jpc2tfc3VtbWFyeRgLIAEoCUgGUgtyaXNrU3VtbWFyeYgBARJRCg1yaXNrX2RlY2lzaW9uGAwg'
    'ASgOMiwubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLk91dGNvbWVEZWNpc2lvblIMcmlza0'
    'RlY2lzaW9uElMKDmZpbmFsX2RlY2lzaW9uGA0gASgOMiwubW9uYXJjaGljLmFnZW50X3Byb3Rv'
    'Y29sLnYxLk91dGNvbWVEZWNpc2lvblINZmluYWxEZWNpc2lvbhIdCgdzdW1tYXJ5GA4gASgJSA'
    'dSB3N1bW1hcnmIAQESMwoIZXZpZGVuY2UYDyABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0'
    'UghldmlkZW5jZRI3CgpleHRlbnNpb25zGBAgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdF'
    'IKZXh0ZW5zaW9uc0IJCgdfcnVuX2lkQhMKEV9vYmplY3RpdmVfbWV0cmljQhIKEF9vYmplY3Rp'
    'dmVfc2NvcmVCFQoTX2VzdGltYXRlZF9jb3N0X3VzZEITChFfYnVkZ2V0X2xpbWl0X3VzZEINCg'
    'tfcmlza19sZXZlbEIPCg1fcmlza19zdW1tYXJ5QgoKCF9zdW1tYXJ5');

@$core.Deprecated('Use runContextDescriptor instead')
const RunContext$json = {
  '1': 'RunContext',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'worktree', '3': 3, '4': 1, '5': 9, '10': 'worktree'},
    {'1': 'image', '3': 4, '4': 1, '5': 9, '10': 'image'},
    {'1': 'runner', '3': 5, '4': 1, '5': 9, '10': 'runner'},
    {'1': 'labels', '3': 6, '4': 3, '5': 9, '10': 'labels'},
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `RunContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runContextDescriptor = $convert.base64Decode(
    'CgpSdW5Db250ZXh0EhgKB3ZlcnNpb24YASABKAlSB3ZlcnNpb24SEgoEcmVwbxgCIAEoCVIEcm'
    'VwbxIaCgh3b3JrdHJlZRgDIAEoCVIId29ya3RyZWUSFAoFaW1hZ2UYBCABKAlSBWltYWdlEhYK'
    'BnJ1bm5lchgFIAEoCVIGcnVubmVyEhYKBmxhYmVscxgGIAMoCVIGbGFiZWxzEjcKCmV4dGVuc2'
    'lvbnMYByABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25z');

@$core.Deprecated('Use runnerCapabilitiesDescriptor instead')
const RunnerCapabilities$json = {
  '1': 'RunnerCapabilities',
  '2': [
    {'1': 'platform', '3': 1, '4': 1, '5': 9, '10': 'platform'},
    {'1': 'runtime', '3': 2, '4': 1, '5': 9, '10': 'runtime'},
    {
      '1': 'supported_roles',
      '3': 3,
      '4': 3,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.AgentRole',
      '10': 'supportedRoles'
    },
    {
      '1': 'supported_task_versions',
      '3': 4,
      '4': 3,
      '5': 9,
      '10': 'supportedTaskVersions'
    },
    {'1': 'labels', '3': 5, '4': 3, '5': 9, '10': 'labels'},
    {
      '1': 'supports_interactive_pty',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'supportsInteractivePty'
    },
    {'1': 'supports_resume', '3': 7, '4': 1, '5': 8, '10': 'supportsResume'},
    {
      '1': 'extensions',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'supported_role_ids',
      '3': 9,
      '4': 3,
      '5': 9,
      '10': 'supportedRoleIds'
    },
    {'1': 'supported_models', '3': 10, '4': 3, '5': 9, '10': 'supportedModels'},
    {
      '1': 'supported_reasoning_efforts',
      '3': 11,
      '4': 3,
      '5': 9,
      '10': 'supportedReasoningEfforts'
    },
    {
      '1': 'supported_runner_capabilities',
      '3': 12,
      '4': 3,
      '5': 9,
      '10': 'supportedRunnerCapabilities'
    },
    {
      '1': 'supported_providers',
      '3': 13,
      '4': 3,
      '5': 9,
      '10': 'supportedProviders'
    },
  ],
};

/// Descriptor for `RunnerCapabilities`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runnerCapabilitiesDescriptor = $convert.base64Decode(
    'ChJSdW5uZXJDYXBhYmlsaXRpZXMSGgoIcGxhdGZvcm0YASABKAlSCHBsYXRmb3JtEhgKB3J1bn'
    'RpbWUYAiABKAlSB3J1bnRpbWUSTwoPc3VwcG9ydGVkX3JvbGVzGAMgAygOMiYubW9uYXJjaGlj'
    'LmFnZW50X3Byb3RvY29sLnYxLkFnZW50Um9sZVIOc3VwcG9ydGVkUm9sZXMSNgoXc3VwcG9ydG'
    'VkX3Rhc2tfdmVyc2lvbnMYBCADKAlSFXN1cHBvcnRlZFRhc2tWZXJzaW9ucxIWCgZsYWJlbHMY'
    'BSADKAlSBmxhYmVscxI4ChhzdXBwb3J0c19pbnRlcmFjdGl2ZV9wdHkYBiABKAhSFnN1cHBvcn'
    'RzSW50ZXJhY3RpdmVQdHkSJwoPc3VwcG9ydHNfcmVzdW1lGAcgASgIUg5zdXBwb3J0c1Jlc3Vt'
    'ZRI3CgpleHRlbnNpb25zGAggASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW'
    '9ucxIsChJzdXBwb3J0ZWRfcm9sZV9pZHMYCSADKAlSEHN1cHBvcnRlZFJvbGVJZHMSKQoQc3Vw'
    'cG9ydGVkX21vZGVscxgKIAMoCVIPc3VwcG9ydGVkTW9kZWxzEj4KG3N1cHBvcnRlZF9yZWFzb2'
    '5pbmdfZWZmb3J0cxgLIAMoCVIZc3VwcG9ydGVkUmVhc29uaW5nRWZmb3J0cxJCCh1zdXBwb3J0'
    'ZWRfcnVubmVyX2NhcGFiaWxpdGllcxgMIAMoCVIbc3VwcG9ydGVkUnVubmVyQ2FwYWJpbGl0aW'
    'VzEi8KE3N1cHBvcnRlZF9wcm92aWRlcnMYDSADKAlSEnN1cHBvcnRlZFByb3ZpZGVycw==');

@$core.Deprecated('Use leaseRefDescriptor instead')
const LeaseRef$json = {
  '1': 'LeaseRef',
  '2': [
    {'1': 'lease_id', '3': 1, '4': 1, '5': 9, '10': 'leaseId'},
    {'1': 'fencing_token', '3': 2, '4': 1, '5': 9, '10': 'fencingToken'},
    {'1': 'run_id', '3': 3, '4': 1, '5': 9, '10': 'runId'},
    {'1': 'plan_id', '3': 4, '4': 1, '5': 9, '10': 'planId'},
    {'1': 'step_id', '3': 5, '4': 1, '5': 9, '10': 'stepId'},
    {'1': 'task_id', '3': 6, '4': 1, '5': 9, '10': 'taskId'},
  ],
};

/// Descriptor for `LeaseRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseRefDescriptor = $convert.base64Decode(
    'CghMZWFzZVJlZhIZCghsZWFzZV9pZBgBIAEoCVIHbGVhc2VJZBIjCg1mZW5jaW5nX3Rva2VuGA'
    'IgASgJUgxmZW5jaW5nVG9rZW4SFQoGcnVuX2lkGAMgASgJUgVydW5JZBIXCgdwbGFuX2lkGAQg'
    'ASgJUgZwbGFuSWQSFwoHc3RlcF9pZBgFIAEoCVIGc3RlcElkEhcKB3Rhc2tfaWQYBiABKAlSBn'
    'Rhc2tJZA==');

@$core.Deprecated('Use fencingTokenDescriptor instead')
const FencingToken$json = {
  '1': 'FencingToken',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'issued_at_ms', '3': 2, '4': 1, '5': 4, '10': 'issuedAtMs'},
    {'1': 'issuer', '3': 3, '4': 1, '5': 9, '10': 'issuer'},
    {'1': 'scope', '3': 4, '4': 1, '5': 9, '10': 'scope'},
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `FencingToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fencingTokenDescriptor = $convert.base64Decode(
    'CgxGZW5jaW5nVG9rZW4SFAoFdG9rZW4YASABKAlSBXRva2VuEiAKDGlzc3VlZF9hdF9tcxgCIA'
    'EoBFIKaXNzdWVkQXRNcxIWCgZpc3N1ZXIYAyABKAlSBmlzc3VlchIUCgVzY29wZRgEIAEoCVIF'
    'c2NvcGUSNwoKZXh0ZW5zaW9ucxgFIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dG'
    'Vuc2lvbnM=');

@$core.Deprecated('Use leaseDescriptor instead')
const Lease$json = {
  '1': 'Lease',
  '2': [
    {'1': 'lease_id', '3': 1, '4': 1, '5': 9, '10': 'leaseId'},
    {'1': 'run_id', '3': 2, '4': 1, '5': 9, '10': 'runId'},
    {'1': 'plan_id', '3': 3, '4': 1, '5': 9, '10': 'planId'},
    {'1': 'step_id', '3': 4, '4': 1, '5': 9, '10': 'stepId'},
    {'1': 'task_id', '3': 5, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'runner_id', '3': 6, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'session_id', '3': 7, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'fencing_token',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FencingToken',
      '10': 'fencingToken'
    },
    {'1': 'issued_at_ms', '3': 9, '4': 1, '5': 4, '10': 'issuedAtMs'},
    {'1': 'expires_at_ms', '3': 10, '4': 1, '5': 4, '10': 'expiresAtMs'},
    {
      '1': 'status',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.LeaseLifecycleState',
      '10': 'status'
    },
    {
      '1': 'extensions',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `Lease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseDescriptor = $convert.base64Decode(
    'CgVMZWFzZRIZCghsZWFzZV9pZBgBIAEoCVIHbGVhc2VJZBIVCgZydW5faWQYAiABKAlSBXJ1bk'
    'lkEhcKB3BsYW5faWQYAyABKAlSBnBsYW5JZBIXCgdzdGVwX2lkGAQgASgJUgZzdGVwSWQSFwoH'
    'dGFza19pZBgFIAEoCVIGdGFza0lkEhsKCXJ1bm5lcl9pZBgGIAEoCVIIcnVubmVySWQSHQoKc2'
    'Vzc2lvbl9pZBgHIAEoCVIJc2Vzc2lvbklkEk4KDWZlbmNpbmdfdG9rZW4YCCABKAsyKS5tb25h'
    'cmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuRmVuY2luZ1Rva2VuUgxmZW5jaW5nVG9rZW4SIAoMaX'
    'NzdWVkX2F0X21zGAkgASgEUgppc3N1ZWRBdE1zEiIKDWV4cGlyZXNfYXRfbXMYCiABKARSC2V4'
    'cGlyZXNBdE1zEkgKBnN0YXR1cxgLIAEoDjIwLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS'
    '5MZWFzZUxpZmVjeWNsZVN0YXRlUgZzdGF0dXMSNwoKZXh0ZW5zaW9ucxgMIAEoCzIXLmdvb2ds'
    'ZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnM=');

@$core.Deprecated('Use recoveryEventDescriptor instead')
const RecoveryEvent$json = {
  '1': 'RecoveryEvent',
  '2': [
    {'1': 'event_id', '3': 1, '4': 1, '5': 9, '10': 'eventId'},
    {'1': 'run_id', '3': 2, '4': 1, '5': 9, '10': 'runId'},
    {'1': 'plan_id', '3': 3, '4': 1, '5': 9, '10': 'planId'},
    {
      '1': 'step_id',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'stepId',
      '17': true
    },
    {
      '1': 'kind',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.RecoveryEventKind',
      '10': 'kind'
    },
    {'1': 'occurred_at_ms', '3': 6, '4': 1, '5': 4, '10': 'occurredAtMs'},
    {'1': 'actor', '3': 7, '4': 1, '5': 9, '10': 'actor'},
    {
      '1': 'details',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'details'
    },
    {'1': 'contract_version', '3': 9, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'run_state',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.RunLifecycleState',
      '9': 1,
      '10': 'runState',
      '17': true
    },
    {
      '1': 'step_state',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.StepLifecycleState',
      '9': 2,
      '10': 'stepState',
      '17': true
    },
    {
      '1': 'lease_rejection_reason',
      '3': 12,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.LeaseRejectionReason',
      '9': 3,
      '10': 'leaseRejectionReason',
      '17': true
    },
  ],
  '8': [
    {'1': '_step_id'},
    {'1': '_run_state'},
    {'1': '_step_state'},
    {'1': '_lease_rejection_reason'},
  ],
};

/// Descriptor for `RecoveryEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoveryEventDescriptor = $convert.base64Decode(
    'Cg1SZWNvdmVyeUV2ZW50EhkKCGV2ZW50X2lkGAEgASgJUgdldmVudElkEhUKBnJ1bl9pZBgCIA'
    'EoCVIFcnVuSWQSFwoHcGxhbl9pZBgDIAEoCVIGcGxhbklkEhwKB3N0ZXBfaWQYBCABKAlIAFIG'
    'c3RlcElkiAEBEkIKBGtpbmQYBSABKA4yLi5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuUm'
    'Vjb3ZlcnlFdmVudEtpbmRSBGtpbmQSJAoOb2NjdXJyZWRfYXRfbXMYBiABKARSDG9jY3VycmVk'
    'QXRNcxIUCgVhY3RvchgHIAEoCVIFYWN0b3ISMQoHZGV0YWlscxgIIAEoCzIXLmdvb2dsZS5wcm'
    '90b2J1Zi5TdHJ1Y3RSB2RldGFpbHMSKQoQY29udHJhY3RfdmVyc2lvbhgJIAEoCVIPY29udHJh'
    'Y3RWZXJzaW9uElAKCXJ1bl9zdGF0ZRgKIAEoDjIuLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC'
    '52MS5SdW5MaWZlY3ljbGVTdGF0ZUgBUghydW5TdGF0ZYgBARJTCgpzdGVwX3N0YXRlGAsgASgO'
    'Mi8ubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlN0ZXBMaWZlY3ljbGVTdGF0ZUgCUglzdG'
    'VwU3RhdGWIAQESbAoWbGVhc2VfcmVqZWN0aW9uX3JlYXNvbhgMIAEoDjIxLm1vbmFyY2hpYy5h'
    'Z2VudF9wcm90b2NvbC52MS5MZWFzZVJlamVjdGlvblJlYXNvbkgDUhRsZWFzZVJlamVjdGlvbl'
    'JlYXNvbogBAUIKCghfc3RlcF9pZEIMCgpfcnVuX3N0YXRlQg0KC19zdGVwX3N0YXRlQhkKF19s'
    'ZWFzZV9yZWplY3Rpb25fcmVhc29u');

@$core.Deprecated('Use leaseStatusDescriptor instead')
const LeaseStatus$json = {
  '1': 'LeaseStatus',
  '2': [
    {
      '1': 'lease',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseRef',
      '10': 'lease'
    },
    {'1': 'state', '3': 2, '4': 1, '5': 9, '10': 'state'},
    {'1': 'updated_at_ms', '3': 3, '4': 1, '5': 4, '10': 'updatedAtMs'},
    {
      '1': 'failure',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureDetail',
      '9': 0,
      '10': 'failure',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_failure'},
  ],
};

/// Descriptor for `LeaseStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseStatusDescriptor = $convert.base64Decode(
    'CgtMZWFzZVN0YXR1cxI7CgVsZWFzZRgBIAEoCzIlLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC'
    '52MS5MZWFzZVJlZlIFbGVhc2USFAoFc3RhdGUYAiABKAlSBXN0YXRlEiIKDXVwZGF0ZWRfYXRf'
    'bXMYAyABKARSC3VwZGF0ZWRBdE1zEkkKB2ZhaWx1cmUYBCABKAsyKi5tb25hcmNoaWMuYWdlbn'
    'RfcHJvdG9jb2wudjEuRmFpbHVyZURldGFpbEgAUgdmYWlsdXJliAEBEjcKCmV4dGVuc2lvbnMY'
    'BSABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25zQgoKCF9mYWlsdXJl');

@$core.Deprecated('Use cancellationIntentDescriptor instead')
const CancellationIntent$json = {
  '1': 'CancellationIntent',
  '2': [
    {
      '1': 'lease',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseRef',
      '10': 'lease'
    },
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'requested_at_ms', '3': 3, '4': 1, '5': 4, '10': 'requestedAtMs'},
    {'1': 'force', '3': 4, '4': 1, '5': 8, '10': 'force'},
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `CancellationIntent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancellationIntentDescriptor = $convert.base64Decode(
    'ChJDYW5jZWxsYXRpb25JbnRlbnQSOwoFbGVhc2UYASABKAsyJS5tb25hcmNoaWMuYWdlbnRfcH'
    'JvdG9jb2wudjEuTGVhc2VSZWZSBWxlYXNlEhYKBnJlYXNvbhgCIAEoCVIGcmVhc29uEiYKD3Jl'
    'cXVlc3RlZF9hdF9tcxgDIAEoBFINcmVxdWVzdGVkQXRNcxIUCgVmb3JjZRgEIAEoCFIFZm9yY2'
    'USNwoKZXh0ZW5zaW9ucxgFIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lv'
    'bnM=');

@$core.Deprecated('Use leaseAssignmentDescriptor instead')
const LeaseAssignment$json = {
  '1': 'LeaseAssignment',
  '2': [
    {
      '1': 'lease',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseRef',
      '10': 'lease'
    },
    {
      '1': 'task',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.Task',
      '10': 'task'
    },
    {'1': 'issued_at_ms', '3': 3, '4': 1, '5': 4, '10': 'issuedAtMs'},
    {'1': 'lease_ttl_ms', '3': 4, '4': 1, '5': 4, '10': 'leaseTtlMs'},
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `LeaseAssignment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseAssignmentDescriptor = $convert.base64Decode(
    'Cg9MZWFzZUFzc2lnbm1lbnQSOwoFbGVhc2UYASABKAsyJS5tb25hcmNoaWMuYWdlbnRfcHJvdG'
    '9jb2wudjEuTGVhc2VSZWZSBWxlYXNlEjUKBHRhc2sYAiABKAsyIS5tb25hcmNoaWMuYWdlbnRf'
    'cHJvdG9jb2wudjEuVGFza1IEdGFzaxIgCgxpc3N1ZWRfYXRfbXMYAyABKARSCmlzc3VlZEF0TX'
    'MSIAoMbGVhc2VfdHRsX21zGAQgASgEUgpsZWFzZVR0bE1zEjcKCmV4dGVuc2lvbnMYBSABKAsy'
    'Fy5nb29nbGUucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25z');

@$core.Deprecated('Use registerRunnerRequestDescriptor instead')
const RegisterRunnerRequest$json = {
  '1': 'RegisterRunnerRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'runner_id', '3': 2, '4': 1, '5': 9, '10': 'runnerId'},
    {
      '1': 'capabilities',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.RunnerCapabilities',
      '10': 'capabilities'
    },
    {
      '1': 'max_parallel_leases',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'maxParallelLeases'
    },
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 0,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `RegisterRunnerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRunnerRequestDescriptor = $convert.base64Decode(
    'ChVSZWdpc3RlclJ1bm5lclJlcXVlc3QSKQoQY29udHJhY3RfdmVyc2lvbhgBIAEoCVIPY29udH'
    'JhY3RWZXJzaW9uEhsKCXJ1bm5lcl9pZBgCIAEoCVIIcnVubmVySWQSUwoMY2FwYWJpbGl0aWVz'
    'GAMgASgLMi8ubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlJ1bm5lckNhcGFiaWxpdGllc1'
    'IMY2FwYWJpbGl0aWVzEi4KE21heF9wYXJhbGxlbF9sZWFzZXMYBCABKA1SEW1heFBhcmFsbGVs'
    'TGVhc2VzEjcKCmV4dGVuc2lvbnMYBSABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgpleH'
    'RlbnNpb25zElAKDGF1dGhfY29udGV4dBgGIAEoCzIoLm1vbmFyY2hpYy5hZ2VudF9wcm90b2Nv'
    'bC52MS5BdXRoQ29udGV4dEgAUgthdXRoQ29udGV4dIgBAUIPCg1fYXV0aF9jb250ZXh0');

@$core.Deprecated('Use registerRunnerResponseDescriptor instead')
const RegisterRunnerResponse$json = {
  '1': 'RegisterRunnerResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'orchestrator_id', '3': 2, '4': 1, '5': 9, '10': 'orchestratorId'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'heartbeat_interval_ms',
      '3': 4,
      '4': 1,
      '5': 4,
      '10': 'heartbeatIntervalMs'
    },
    {
      '1': 'lease_poll_interval_ms',
      '3': 5,
      '4': 1,
      '5': 4,
      '10': 'leasePollIntervalMs'
    },
    {
      '1': 'extensions',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `RegisterRunnerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRunnerResponseDescriptor = $convert.base64Decode(
    'ChZSZWdpc3RlclJ1bm5lclJlc3BvbnNlEikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2Nvbn'
    'RyYWN0VmVyc2lvbhInCg9vcmNoZXN0cmF0b3JfaWQYAiABKAlSDm9yY2hlc3RyYXRvcklkEh0K'
    'CnNlc3Npb25faWQYAyABKAlSCXNlc3Npb25JZBIyChVoZWFydGJlYXRfaW50ZXJ2YWxfbXMYBC'
    'ABKARSE2hlYXJ0YmVhdEludGVydmFsTXMSMwoWbGVhc2VfcG9sbF9pbnRlcnZhbF9tcxgFIAEo'
    'BFITbGVhc2VQb2xsSW50ZXJ2YWxNcxI3CgpleHRlbnNpb25zGAYgASgLMhcuZ29vZ2xlLnByb3'
    'RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9ucw==');

@$core.Deprecated('Use heartbeatRequestDescriptor instead')
const HeartbeatRequest$json = {
  '1': 'HeartbeatRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'runner_id', '3': 2, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'active_leases',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseStatus',
      '10': 'activeLeases'
    },
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 0,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `HeartbeatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heartbeatRequestDescriptor = $convert.base64Decode(
    'ChBIZWFydGJlYXRSZXF1ZXN0EikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2NvbnRyYWN0Vm'
    'Vyc2lvbhIbCglydW5uZXJfaWQYAiABKAlSCHJ1bm5lcklkEh0KCnNlc3Npb25faWQYAyABKAlS'
    'CXNlc3Npb25JZBJNCg1hY3RpdmVfbGVhc2VzGAQgAygLMigubW9uYXJjaGljLmFnZW50X3Byb3'
    'RvY29sLnYxLkxlYXNlU3RhdHVzUgxhY3RpdmVMZWFzZXMSNwoKZXh0ZW5zaW9ucxgFIAEoCzIX'
    'Lmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnMSUAoMYXV0aF9jb250ZXh0GAYgAS'
    'gLMigubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkF1dGhDb250ZXh0SABSC2F1dGhDb250'
    'ZXh0iAEBQg8KDV9hdXRoX2NvbnRleHQ=');

@$core.Deprecated('Use heartbeatResponseDescriptor instead')
const HeartbeatResponse$json = {
  '1': 'HeartbeatResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'orchestrator_id', '3': 2, '4': 1, '5': 9, '10': 'orchestratorId'},
    {'1': 'next_heartbeat_ms', '3': 3, '4': 1, '5': 4, '10': 'nextHeartbeatMs'},
    {
      '1': 'cancellations',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.CancellationIntent',
      '10': 'cancellations'
    },
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `HeartbeatResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heartbeatResponseDescriptor = $convert.base64Decode(
    'ChFIZWFydGJlYXRSZXNwb25zZRIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg9jb250cmFjdF'
    'ZlcnNpb24SJwoPb3JjaGVzdHJhdG9yX2lkGAIgASgJUg5vcmNoZXN0cmF0b3JJZBIqChFuZXh0'
    'X2hlYXJ0YmVhdF9tcxgDIAEoBFIPbmV4dEhlYXJ0YmVhdE1zElUKDWNhbmNlbGxhdGlvbnMYBC'
    'ADKAsyLy5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuQ2FuY2VsbGF0aW9uSW50ZW50Ug1j'
    'YW5jZWxsYXRpb25zEjcKCmV4dGVuc2lvbnMYBSABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydW'
    'N0UgpleHRlbnNpb25z');

@$core.Deprecated('Use acquireLeaseRequestDescriptor instead')
const AcquireLeaseRequest$json = {
  '1': 'AcquireLeaseRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'runner_id', '3': 2, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'available_slots', '3': 4, '4': 1, '5': 13, '10': 'availableSlots'},
    {'1': 'active_lease_ids', '3': 5, '4': 3, '5': 9, '10': 'activeLeaseIds'},
    {
      '1': 'extensions',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 0,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `AcquireLeaseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acquireLeaseRequestDescriptor = $convert.base64Decode(
    'ChNBY3F1aXJlTGVhc2VSZXF1ZXN0EikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2NvbnRyYW'
    'N0VmVyc2lvbhIbCglydW5uZXJfaWQYAiABKAlSCHJ1bm5lcklkEh0KCnNlc3Npb25faWQYAyAB'
    'KAlSCXNlc3Npb25JZBInCg9hdmFpbGFibGVfc2xvdHMYBCABKA1SDmF2YWlsYWJsZVNsb3RzEi'
    'gKEGFjdGl2ZV9sZWFzZV9pZHMYBSADKAlSDmFjdGl2ZUxlYXNlSWRzEjcKCmV4dGVuc2lvbnMY'
    'BiABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25zElAKDGF1dGhfY29udG'
    'V4dBgHIAEoCzIoLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BdXRoQ29udGV4dEgAUgth'
    'dXRoQ29udGV4dIgBAUIPCg1fYXV0aF9jb250ZXh0');

@$core.Deprecated('Use acquireLeaseResponseDescriptor instead')
const AcquireLeaseResponse$json = {
  '1': 'AcquireLeaseResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'orchestrator_id', '3': 2, '4': 1, '5': 9, '10': 'orchestratorId'},
    {
      '1': 'assignment',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseAssignment',
      '10': 'assignment'
    },
    {'1': 'retry_after_ms', '3': 4, '4': 1, '5': 4, '10': 'retryAfterMs'},
    {
      '1': 'cancellations',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.CancellationIntent',
      '10': 'cancellations'
    },
    {
      '1': 'extensions',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `AcquireLeaseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acquireLeaseResponseDescriptor = $convert.base64Decode(
    'ChRBY3F1aXJlTGVhc2VSZXNwb25zZRIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg9jb250cm'
    'FjdFZlcnNpb24SJwoPb3JjaGVzdHJhdG9yX2lkGAIgASgJUg5vcmNoZXN0cmF0b3JJZBJMCgph'
    'c3NpZ25tZW50GAMgASgLMiwubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkxlYXNlQXNzaW'
    'dubWVudFIKYXNzaWdubWVudBIkCg5yZXRyeV9hZnRlcl9tcxgEIAEoBFIMcmV0cnlBZnRlck1z'
    'ElUKDWNhbmNlbGxhdGlvbnMYBSADKAsyLy5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuQ2'
    'FuY2VsbGF0aW9uSW50ZW50Ug1jYW5jZWxsYXRpb25zEjcKCmV4dGVuc2lvbnMYBiABKAsyFy5n'
    'b29nbGUucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25z');

@$core.Deprecated('Use renewLeaseRequestDescriptor instead')
const RenewLeaseRequest$json = {
  '1': 'RenewLeaseRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'runner_id', '3': 2, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'lease',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseRef',
      '10': 'lease'
    },
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 0,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `RenewLeaseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renewLeaseRequestDescriptor = $convert.base64Decode(
    'ChFSZW5ld0xlYXNlUmVxdWVzdBIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg9jb250cmFjdF'
    'ZlcnNpb24SGwoJcnVubmVyX2lkGAIgASgJUghydW5uZXJJZBIdCgpzZXNzaW9uX2lkGAMgASgJ'
    'UglzZXNzaW9uSWQSOwoFbGVhc2UYBCABKAsyJS5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudj'
    'EuTGVhc2VSZWZSBWxlYXNlEjcKCmV4dGVuc2lvbnMYBSABKAsyFy5nb29nbGUucHJvdG9idWYu'
    'U3RydWN0UgpleHRlbnNpb25zElAKDGF1dGhfY29udGV4dBgGIAEoCzIoLm1vbmFyY2hpYy5hZ2'
    'VudF9wcm90b2NvbC52MS5BdXRoQ29udGV4dEgAUgthdXRoQ29udGV4dIgBAUIPCg1fYXV0aF9j'
    'b250ZXh0');

@$core.Deprecated('Use renewLeaseResponseDescriptor instead')
const RenewLeaseResponse$json = {
  '1': 'RenewLeaseResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'orchestrator_id', '3': 2, '4': 1, '5': 9, '10': 'orchestratorId'},
    {'1': 'accepted', '3': 3, '4': 1, '5': 8, '10': 'accepted'},
    {'1': 'lease_ttl_ms', '3': 4, '4': 1, '5': 4, '10': 'leaseTtlMs'},
    {
      '1': 'cancellations',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.CancellationIntent',
      '10': 'cancellations'
    },
    {
      '1': 'failure',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureDetail',
      '9': 0,
      '10': 'failure',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_failure'},
  ],
};

/// Descriptor for `RenewLeaseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renewLeaseResponseDescriptor = $convert.base64Decode(
    'ChJSZW5ld0xlYXNlUmVzcG9uc2USKQoQY29udHJhY3RfdmVyc2lvbhgBIAEoCVIPY29udHJhY3'
    'RWZXJzaW9uEicKD29yY2hlc3RyYXRvcl9pZBgCIAEoCVIOb3JjaGVzdHJhdG9ySWQSGgoIYWNj'
    'ZXB0ZWQYAyABKAhSCGFjY2VwdGVkEiAKDGxlYXNlX3R0bF9tcxgEIAEoBFIKbGVhc2VUdGxNcx'
    'JVCg1jYW5jZWxsYXRpb25zGAUgAygLMi8ubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkNh'
    'bmNlbGxhdGlvbkludGVudFINY2FuY2VsbGF0aW9ucxJJCgdmYWlsdXJlGAYgASgLMioubW9uYX'
    'JjaGljLmFnZW50X3Byb3RvY29sLnYxLkZhaWx1cmVEZXRhaWxIAFIHZmFpbHVyZYgBARI3Cgpl'
    'eHRlbnNpb25zGAcgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9uc0IKCg'
    'hfZmFpbHVyZQ==');

@$core.Deprecated('Use resumeLeaseRequestDescriptor instead')
const ResumeLeaseRequest$json = {
  '1': 'ResumeLeaseRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'runner_id', '3': 2, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'lease',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseRef',
      '10': 'lease'
    },
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 0,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `ResumeLeaseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resumeLeaseRequestDescriptor = $convert.base64Decode(
    'ChJSZXN1bWVMZWFzZVJlcXVlc3QSKQoQY29udHJhY3RfdmVyc2lvbhgBIAEoCVIPY29udHJhY3'
    'RWZXJzaW9uEhsKCXJ1bm5lcl9pZBgCIAEoCVIIcnVubmVySWQSHQoKc2Vzc2lvbl9pZBgDIAEo'
    'CVIJc2Vzc2lvbklkEjsKBWxlYXNlGAQgASgLMiUubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLn'
    'YxLkxlYXNlUmVmUgVsZWFzZRI3CgpleHRlbnNpb25zGAUgASgLMhcuZ29vZ2xlLnByb3RvYnVm'
    'LlN0cnVjdFIKZXh0ZW5zaW9ucxJQCgxhdXRoX2NvbnRleHQYBiABKAsyKC5tb25hcmNoaWMuYW'
    'dlbnRfcHJvdG9jb2wudjEuQXV0aENvbnRleHRIAFILYXV0aENvbnRleHSIAQFCDwoNX2F1dGhf'
    'Y29udGV4dA==');

@$core.Deprecated('Use resumeLeaseResponseDescriptor instead')
const ResumeLeaseResponse$json = {
  '1': 'ResumeLeaseResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'orchestrator_id', '3': 2, '4': 1, '5': 9, '10': 'orchestratorId'},
    {'1': 'accepted', '3': 3, '4': 1, '5': 8, '10': 'accepted'},
    {
      '1': 'lease',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.Lease',
      '10': 'lease'
    },
    {'1': 'expires_at_ms', '3': 5, '4': 1, '5': 4, '10': 'expiresAtMs'},
    {
      '1': 'current_fencing_token',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'currentFencingToken'
    },
    {
      '1': 'reason',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.LeaseRejectionReason',
      '10': 'reason'
    },
    {'1': 'message', '3': 8, '4': 1, '5': 9, '10': 'message'},
    {
      '1': 'extensions',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `ResumeLeaseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resumeLeaseResponseDescriptor = $convert.base64Decode(
    'ChNSZXN1bWVMZWFzZVJlc3BvbnNlEikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2NvbnRyYW'
    'N0VmVyc2lvbhInCg9vcmNoZXN0cmF0b3JfaWQYAiABKAlSDm9yY2hlc3RyYXRvcklkEhoKCGFj'
    'Y2VwdGVkGAMgASgIUghhY2NlcHRlZBI4CgVsZWFzZRgEIAEoCzIiLm1vbmFyY2hpYy5hZ2VudF'
    '9wcm90b2NvbC52MS5MZWFzZVIFbGVhc2USIgoNZXhwaXJlc19hdF9tcxgFIAEoBFILZXhwaXJl'
    'c0F0TXMSMgoVY3VycmVudF9mZW5jaW5nX3Rva2VuGAYgASgJUhNjdXJyZW50RmVuY2luZ1Rva2'
    'VuEkkKBnJlYXNvbhgHIAEoDjIxLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5MZWFzZVJl'
    'amVjdGlvblJlYXNvblIGcmVhc29uEhgKB21lc3NhZ2UYCCABKAlSB21lc3NhZ2USNwoKZXh0ZW'
    '5zaW9ucxgJIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnM=');

@$core.Deprecated('Use reportStepStartedRequestDescriptor instead')
const ReportStepStartedRequest$json = {
  '1': 'ReportStepStartedRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'runner_id', '3': 2, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'lease',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseRef',
      '10': 'lease'
    },
    {'1': 'started_at', '3': 5, '4': 1, '5': 9, '10': 'startedAt'},
    {
      '1': 'extensions',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 0,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `ReportStepStartedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportStepStartedRequestDescriptor = $convert.base64Decode(
    'ChhSZXBvcnRTdGVwU3RhcnRlZFJlcXVlc3QSKQoQY29udHJhY3RfdmVyc2lvbhgBIAEoCVIPY2'
    '9udHJhY3RWZXJzaW9uEhsKCXJ1bm5lcl9pZBgCIAEoCVIIcnVubmVySWQSHQoKc2Vzc2lvbl9p'
    'ZBgDIAEoCVIJc2Vzc2lvbklkEjsKBWxlYXNlGAQgASgLMiUubW9uYXJjaGljLmFnZW50X3Byb3'
    'RvY29sLnYxLkxlYXNlUmVmUgVsZWFzZRIdCgpzdGFydGVkX2F0GAUgASgJUglzdGFydGVkQXQS'
    'NwoKZXh0ZW5zaW9ucxgGIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbn'
    'MSUAoMYXV0aF9jb250ZXh0GAcgASgLMigubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkF1'
    'dGhDb250ZXh0SABSC2F1dGhDb250ZXh0iAEBQg8KDV9hdXRoX2NvbnRleHQ=');

@$core.Deprecated('Use reportStepStartedResponseDescriptor instead')
const ReportStepStartedResponse$json = {
  '1': 'ReportStepStartedResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'orchestrator_id', '3': 2, '4': 1, '5': 9, '10': 'orchestratorId'},
    {'1': 'accepted', '3': 3, '4': 1, '5': 8, '10': 'accepted'},
    {
      '1': 'failure',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureDetail',
      '9': 0,
      '10': 'failure',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_failure'},
  ],
};

/// Descriptor for `ReportStepStartedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportStepStartedResponseDescriptor = $convert.base64Decode(
    'ChlSZXBvcnRTdGVwU3RhcnRlZFJlc3BvbnNlEikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2'
    'NvbnRyYWN0VmVyc2lvbhInCg9vcmNoZXN0cmF0b3JfaWQYAiABKAlSDm9yY2hlc3RyYXRvcklk'
    'EhoKCGFjY2VwdGVkGAMgASgIUghhY2NlcHRlZBJJCgdmYWlsdXJlGAQgASgLMioubW9uYXJjaG'
    'ljLmFnZW50X3Byb3RvY29sLnYxLkZhaWx1cmVEZXRhaWxIAFIHZmFpbHVyZYgBARI3CgpleHRl'
    'bnNpb25zGAUgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9uc0IKCghfZm'
    'FpbHVyZQ==');

@$core.Deprecated('Use reportStepProgressRequestDescriptor instead')
const ReportStepProgressRequest$json = {
  '1': 'ReportStepProgressRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'runner_id', '3': 2, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'lease',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseRef',
      '10': 'lease'
    },
    {
      '1': 'events',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.Event',
      '10': 'events'
    },
    {
      '1': 'artifacts',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.Artifact',
      '10': 'artifacts'
    },
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 0,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `ReportStepProgressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportStepProgressRequestDescriptor = $convert.base64Decode(
    'ChlSZXBvcnRTdGVwUHJvZ3Jlc3NSZXF1ZXN0EikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2'
    'NvbnRyYWN0VmVyc2lvbhIbCglydW5uZXJfaWQYAiABKAlSCHJ1bm5lcklkEh0KCnNlc3Npb25f'
    'aWQYAyABKAlSCXNlc3Npb25JZBI7CgVsZWFzZRgEIAEoCzIlLm1vbmFyY2hpYy5hZ2VudF9wcm'
    '90b2NvbC52MS5MZWFzZVJlZlIFbGVhc2USOgoGZXZlbnRzGAUgAygLMiIubW9uYXJjaGljLmFn'
    'ZW50X3Byb3RvY29sLnYxLkV2ZW50UgZldmVudHMSQwoJYXJ0aWZhY3RzGAYgAygLMiUubW9uYX'
    'JjaGljLmFnZW50X3Byb3RvY29sLnYxLkFydGlmYWN0UglhcnRpZmFjdHMSNwoKZXh0ZW5zaW9u'
    'cxgHIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnMSUAoMYXV0aF9jb2'
    '50ZXh0GAggASgLMigubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkF1dGhDb250ZXh0SABS'
    'C2F1dGhDb250ZXh0iAEBQg8KDV9hdXRoX2NvbnRleHQ=');

@$core.Deprecated('Use reportStepProgressResponseDescriptor instead')
const ReportStepProgressResponse$json = {
  '1': 'ReportStepProgressResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'orchestrator_id', '3': 2, '4': 1, '5': 9, '10': 'orchestratorId'},
    {'1': 'accepted', '3': 3, '4': 1, '5': 8, '10': 'accepted'},
    {
      '1': 'cancellations',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.CancellationIntent',
      '10': 'cancellations'
    },
    {
      '1': 'failure',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureDetail',
      '9': 0,
      '10': 'failure',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_failure'},
  ],
};

/// Descriptor for `ReportStepProgressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportStepProgressResponseDescriptor = $convert.base64Decode(
    'ChpSZXBvcnRTdGVwUHJvZ3Jlc3NSZXNwb25zZRIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg'
    '9jb250cmFjdFZlcnNpb24SJwoPb3JjaGVzdHJhdG9yX2lkGAIgASgJUg5vcmNoZXN0cmF0b3JJ'
    'ZBIaCghhY2NlcHRlZBgDIAEoCFIIYWNjZXB0ZWQSVQoNY2FuY2VsbGF0aW9ucxgEIAMoCzIvLm'
    '1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5DYW5jZWxsYXRpb25JbnRlbnRSDWNhbmNlbGxh'
    'dGlvbnMSSQoHZmFpbHVyZRgFIAEoCzIqLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5GYW'
    'lsdXJlRGV0YWlsSABSB2ZhaWx1cmWIAQESNwoKZXh0ZW5zaW9ucxgGIAEoCzIXLmdvb2dsZS5w'
    'cm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnNCCgoIX2ZhaWx1cmU=');

@$core.Deprecated('Use reportStepOutcomeRequestDescriptor instead')
const ReportStepOutcomeRequest$json = {
  '1': 'ReportStepOutcomeRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'runner_id', '3': 2, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'lease',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseRef',
      '10': 'lease'
    },
    {
      '1': 'status',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.PlanStatus',
      '10': 'status'
    },
    {
      '1': 'events',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.Event',
      '10': 'events'
    },
    {
      '1': 'artifacts',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.Artifact',
      '10': 'artifacts'
    },
    {
      '1': 'run_outcome',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.RunOutcome',
      '9': 0,
      '10': 'runOutcome',
      '17': true
    },
    {
      '1': 'failure',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureDetail',
      '9': 1,
      '10': 'failure',
      '17': true
    },
    {'1': 'finished_at', '3': 10, '4': 1, '5': 9, '10': 'finishedAt'},
    {
      '1': 'extensions',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 2,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_run_outcome'},
    {'1': '_failure'},
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `ReportStepOutcomeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportStepOutcomeRequestDescriptor = $convert.base64Decode(
    'ChhSZXBvcnRTdGVwT3V0Y29tZVJlcXVlc3QSKQoQY29udHJhY3RfdmVyc2lvbhgBIAEoCVIPY2'
    '9udHJhY3RWZXJzaW9uEhsKCXJ1bm5lcl9pZBgCIAEoCVIIcnVubmVySWQSHQoKc2Vzc2lvbl9p'
    'ZBgDIAEoCVIJc2Vzc2lvbklkEjsKBWxlYXNlGAQgASgLMiUubW9uYXJjaGljLmFnZW50X3Byb3'
    'RvY29sLnYxLkxlYXNlUmVmUgVsZWFzZRI/CgZzdGF0dXMYBSABKA4yJy5tb25hcmNoaWMuYWdl'
    'bnRfcHJvdG9jb2wudjEuUGxhblN0YXR1c1IGc3RhdHVzEjoKBmV2ZW50cxgGIAMoCzIiLm1vbm'
    'FyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5FdmVudFIGZXZlbnRzEkMKCWFydGlmYWN0cxgHIAMo'
    'CzIlLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BcnRpZmFjdFIJYXJ0aWZhY3RzEk0KC3'
    'J1bl9vdXRjb21lGAggASgLMicubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlJ1bk91dGNv'
    'bWVIAFIKcnVuT3V0Y29tZYgBARJJCgdmYWlsdXJlGAkgASgLMioubW9uYXJjaGljLmFnZW50X3'
    'Byb3RvY29sLnYxLkZhaWx1cmVEZXRhaWxIAVIHZmFpbHVyZYgBARIfCgtmaW5pc2hlZF9hdBgK'
    'IAEoCVIKZmluaXNoZWRBdBI3CgpleHRlbnNpb25zGAsgASgLMhcuZ29vZ2xlLnByb3RvYnVmLl'
    'N0cnVjdFIKZXh0ZW5zaW9ucxJQCgxhdXRoX2NvbnRleHQYDCABKAsyKC5tb25hcmNoaWMuYWdl'
    'bnRfcHJvdG9jb2wudjEuQXV0aENvbnRleHRIAlILYXV0aENvbnRleHSIAQFCDgoMX3J1bl9vdX'
    'Rjb21lQgoKCF9mYWlsdXJlQg8KDV9hdXRoX2NvbnRleHQ=');

@$core.Deprecated('Use reportStepOutcomeResponseDescriptor instead')
const ReportStepOutcomeResponse$json = {
  '1': 'ReportStepOutcomeResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'orchestrator_id', '3': 2, '4': 1, '5': 9, '10': 'orchestratorId'},
    {'1': 'accepted', '3': 3, '4': 1, '5': 8, '10': 'accepted'},
    {
      '1': 'failure',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureDetail',
      '9': 0,
      '10': 'failure',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_failure'},
  ],
};

/// Descriptor for `ReportStepOutcomeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportStepOutcomeResponseDescriptor = $convert.base64Decode(
    'ChlSZXBvcnRTdGVwT3V0Y29tZVJlc3BvbnNlEikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2'
    'NvbnRyYWN0VmVyc2lvbhInCg9vcmNoZXN0cmF0b3JfaWQYAiABKAlSDm9yY2hlc3RyYXRvcklk'
    'EhoKCGFjY2VwdGVkGAMgASgIUghhY2NlcHRlZBJJCgdmYWlsdXJlGAQgASgLMioubW9uYXJjaG'
    'ljLmFnZW50X3Byb3RvY29sLnYxLkZhaWx1cmVEZXRhaWxIAFIHZmFpbHVyZYgBARI3CgpleHRl'
    'bnNpb25zGAUgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9uc0IKCghfZm'
    'FpbHVyZQ==');

@$core.Deprecated('Use ackCancellationRequestDescriptor instead')
const AckCancellationRequest$json = {
  '1': 'AckCancellationRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'runner_id', '3': 2, '4': 1, '5': 9, '10': 'runnerId'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'lease',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.LeaseRef',
      '10': 'lease'
    },
    {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
    {
      '1': 'message',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'message',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 1,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_message'},
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `AckCancellationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackCancellationRequestDescriptor = $convert.base64Decode(
    'ChZBY2tDYW5jZWxsYXRpb25SZXF1ZXN0EikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2Nvbn'
    'RyYWN0VmVyc2lvbhIbCglydW5uZXJfaWQYAiABKAlSCHJ1bm5lcklkEh0KCnNlc3Npb25faWQY'
    'AyABKAlSCXNlc3Npb25JZBI7CgVsZWFzZRgEIAEoCzIlLm1vbmFyY2hpYy5hZ2VudF9wcm90b2'
    'NvbC52MS5MZWFzZVJlZlIFbGVhc2USFgoGc3RhdHVzGAUgASgJUgZzdGF0dXMSHQoHbWVzc2Fn'
    'ZRgGIAEoCUgAUgdtZXNzYWdliAEBEjcKCmV4dGVuc2lvbnMYByABKAsyFy5nb29nbGUucHJvdG'
    '9idWYuU3RydWN0UgpleHRlbnNpb25zElAKDGF1dGhfY29udGV4dBgIIAEoCzIoLm1vbmFyY2hp'
    'Yy5hZ2VudF9wcm90b2NvbC52MS5BdXRoQ29udGV4dEgBUgthdXRoQ29udGV4dIgBAUIKCghfbW'
    'Vzc2FnZUIPCg1fYXV0aF9jb250ZXh0');

@$core.Deprecated('Use ackCancellationResponseDescriptor instead')
const AckCancellationResponse$json = {
  '1': 'AckCancellationResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'orchestrator_id', '3': 2, '4': 1, '5': 9, '10': 'orchestratorId'},
    {'1': 'accepted', '3': 3, '4': 1, '5': 8, '10': 'accepted'},
    {
      '1': 'failure',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.FailureDetail',
      '9': 0,
      '10': 'failure',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_failure'},
  ],
};

/// Descriptor for `AckCancellationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackCancellationResponseDescriptor = $convert.base64Decode(
    'ChdBY2tDYW5jZWxsYXRpb25SZXNwb25zZRIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg9jb2'
    '50cmFjdFZlcnNpb24SJwoPb3JjaGVzdHJhdG9yX2lkGAIgASgJUg5vcmNoZXN0cmF0b3JJZBIa'
    'CghhY2NlcHRlZBgDIAEoCFIIYWNjZXB0ZWQSSQoHZmFpbHVyZRgEIAEoCzIqLm1vbmFyY2hpYy'
    '5hZ2VudF9wcm90b2NvbC52MS5GYWlsdXJlRGV0YWlsSABSB2ZhaWx1cmWIAQESNwoKZXh0ZW5z'
    'aW9ucxgFIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnNCCgoIX2ZhaW'
    'x1cmU=');

@$core.Deprecated('Use controlPlaneScopeDescriptor instead')
const ControlPlaneScope$json = {
  '1': 'ControlPlaneScope',
  '2': [
    {
      '1': 'organization',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'organization',
      '17': true
    },
    {'1': 'user', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'user', '17': true},
    {
      '1': 'default_project',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'defaultProject',
      '17': true
    },
  ],
  '8': [
    {'1': '_organization'},
    {'1': '_user'},
    {'1': '_default_project'},
  ],
};

/// Descriptor for `ControlPlaneScope`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controlPlaneScopeDescriptor = $convert.base64Decode(
    'ChFDb250cm9sUGxhbmVTY29wZRInCgxvcmdhbml6YXRpb24YASABKAlIAFIMb3JnYW5pemF0aW'
    '9uiAEBEhcKBHVzZXIYAiABKAlIAVIEdXNlcogBARIsCg9kZWZhdWx0X3Byb2plY3QYAyABKAlI'
    'AlIOZGVmYXVsdFByb2plY3SIAQFCDwoNX29yZ2FuaXphdGlvbkIHCgVfdXNlckISChBfZGVmYX'
    'VsdF9wcm9qZWN0');

@$core.Deprecated('Use runOperatorSignalsDescriptor instead')
const RunOperatorSignals$json = {
  '1': 'RunOperatorSignals',
  '2': [
    {'1': 'prompt_needed', '3': 1, '4': 1, '5': 8, '10': 'promptNeeded'},
    {
      '1': 'prompt_summary',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'promptSummary',
      '17': true
    },
    {'1': 'pause_requested', '3': 3, '4': 1, '5': 8, '10': 'pauseRequested'},
    {
      '1': 'interrupt_requested',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'interruptRequested'
    },
    {'1': 'cancel_requested', '3': 5, '4': 1, '5': 8, '10': 'cancelRequested'},
  ],
  '8': [
    {'1': '_prompt_summary'},
  ],
};

/// Descriptor for `RunOperatorSignals`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runOperatorSignalsDescriptor = $convert.base64Decode(
    'ChJSdW5PcGVyYXRvclNpZ25hbHMSIwoNcHJvbXB0X25lZWRlZBgBIAEoCFIMcHJvbXB0TmVlZG'
    'VkEioKDnByb21wdF9zdW1tYXJ5GAIgASgJSABSDXByb21wdFN1bW1hcnmIAQESJwoPcGF1c2Vf'
    'cmVxdWVzdGVkGAMgASgIUg5wYXVzZVJlcXVlc3RlZBIvChNpbnRlcnJ1cHRfcmVxdWVzdGVkGA'
    'QgASgIUhJpbnRlcnJ1cHRSZXF1ZXN0ZWQSKQoQY2FuY2VsX3JlcXVlc3RlZBgFIAEoCFIPY2Fu'
    'Y2VsUmVxdWVzdGVkQhEKD19wcm9tcHRfc3VtbWFyeQ==');

@$core.Deprecated('Use controlPlaneRunSummaryDescriptor instead')
const ControlPlaneRunSummary$json = {
  '1': 'ControlPlaneRunSummary',
  '2': [
    {'1': 'project_key', '3': 1, '4': 1, '5': 9, '10': 'projectKey'},
    {'1': 'run_id', '3': 2, '4': 1, '5': 9, '10': 'runId'},
    {
      '1': 'run_dir',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'runDir',
      '17': true
    },
    {
      '1': 'lifecycle_state',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.RunLifecycleState',
      '9': 1,
      '10': 'lifecycleState',
      '17': true
    },
    {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
    {
      '1': 'updated_label',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'updatedLabel',
      '17': true
    },
    {
      '1': 'updated_epoch',
      '3': 7,
      '4': 1,
      '5': 4,
      '9': 3,
      '10': 'updatedEpoch',
      '17': true
    },
    {
      '1': 'meaningful_status',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'meaningfulStatus',
      '17': true
    },
    {
      '1': 'meaningful_score',
      '3': 9,
      '4': 1,
      '5': 1,
      '9': 5,
      '10': 'meaningfulScore',
      '17': true
    },
    {
      '1': 'meaningful_reasons',
      '3': 10,
      '4': 3,
      '5': 9,
      '10': 'meaningfulReasons'
    },
    {
      '1': 'total_runs',
      '3': 11,
      '4': 1,
      '5': 4,
      '9': 6,
      '10': 'totalRuns',
      '17': true
    },
    {
      '1': 'total_success',
      '3': 12,
      '4': 1,
      '5': 4,
      '9': 7,
      '10': 'totalSuccess',
      '17': true
    },
    {
      '1': 'total_failed',
      '3': 13,
      '4': 1,
      '5': 4,
      '9': 8,
      '10': 'totalFailed',
      '17': true
    },
    {
      '1': 'message_count',
      '3': 14,
      '4': 1,
      '5': 4,
      '9': 9,
      '10': 'messageCount',
      '17': true
    },
    {
      '1': 'unresolved_required_ack_count',
      '3': 15,
      '4': 1,
      '5': 4,
      '9': 10,
      '10': 'unresolvedRequiredAckCount',
      '17': true
    },
    {'1': 'alert_stale', '3': 16, '4': 1, '5': 8, '10': 'alertStale'},
    {'1': 'alert_low_score', '3': 17, '4': 1, '5': 8, '10': 'alertLowScore'},
    {
      '1': 'operator_signals',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.RunOperatorSignals',
      '10': 'operatorSignals'
    },
  ],
  '8': [
    {'1': '_run_dir'},
    {'1': '_lifecycle_state'},
    {'1': '_updated_label'},
    {'1': '_updated_epoch'},
    {'1': '_meaningful_status'},
    {'1': '_meaningful_score'},
    {'1': '_total_runs'},
    {'1': '_total_success'},
    {'1': '_total_failed'},
    {'1': '_message_count'},
    {'1': '_unresolved_required_ack_count'},
  ],
};

/// Descriptor for `ControlPlaneRunSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controlPlaneRunSummaryDescriptor = $convert.base64Decode(
    'ChZDb250cm9sUGxhbmVSdW5TdW1tYXJ5Eh8KC3Byb2plY3Rfa2V5GAEgASgJUgpwcm9qZWN0S2'
    'V5EhUKBnJ1bl9pZBgCIAEoCVIFcnVuSWQSHAoHcnVuX2RpchgDIAEoCUgAUgZydW5EaXKIAQES'
    'XAoPbGlmZWN5Y2xlX3N0YXRlGAQgASgOMi4ubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLl'
    'J1bkxpZmVjeWNsZVN0YXRlSAFSDmxpZmVjeWNsZVN0YXRliAEBEhYKBnN0YXR1cxgFIAEoCVIG'
    'c3RhdHVzEigKDXVwZGF0ZWRfbGFiZWwYBiABKAlIAlIMdXBkYXRlZExhYmVsiAEBEigKDXVwZG'
    'F0ZWRfZXBvY2gYByABKARIA1IMdXBkYXRlZEVwb2NoiAEBEjAKEW1lYW5pbmdmdWxfc3RhdHVz'
    'GAggASgJSARSEG1lYW5pbmdmdWxTdGF0dXOIAQESLgoQbWVhbmluZ2Z1bF9zY29yZRgJIAEoAU'
    'gFUg9tZWFuaW5nZnVsU2NvcmWIAQESLQoSbWVhbmluZ2Z1bF9yZWFzb25zGAogAygJUhFtZWFu'
    'aW5nZnVsUmVhc29ucxIiCgp0b3RhbF9ydW5zGAsgASgESAZSCXRvdGFsUnVuc4gBARIoCg10b3'
    'RhbF9zdWNjZXNzGAwgASgESAdSDHRvdGFsU3VjY2Vzc4gBARImCgx0b3RhbF9mYWlsZWQYDSAB'
    'KARICFILdG90YWxGYWlsZWSIAQESKAoNbWVzc2FnZV9jb3VudBgOIAEoBEgJUgxtZXNzYWdlQ2'
    '91bnSIAQESRgoddW5yZXNvbHZlZF9yZXF1aXJlZF9hY2tfY291bnQYDyABKARIClIadW5yZXNv'
    'bHZlZFJlcXVpcmVkQWNrQ291bnSIAQESHwoLYWxlcnRfc3RhbGUYECABKAhSCmFsZXJ0U3RhbG'
    'USJgoPYWxlcnRfbG93X3Njb3JlGBEgASgIUg1hbGVydExvd1Njb3JlEloKEG9wZXJhdG9yX3Np'
    'Z25hbHMYEiABKAsyLy5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuUnVuT3BlcmF0b3JTaW'
    'duYWxzUg9vcGVyYXRvclNpZ25hbHNCCgoIX3J1bl9kaXJCEgoQX2xpZmVjeWNsZV9zdGF0ZUIQ'
    'Cg5fdXBkYXRlZF9sYWJlbEIQCg5fdXBkYXRlZF9lcG9jaEIUChJfbWVhbmluZ2Z1bF9zdGF0dX'
    'NCEwoRX21lYW5pbmdmdWxfc2NvcmVCDQoLX3RvdGFsX3J1bnNCEAoOX3RvdGFsX3N1Y2Nlc3NC'
    'DwoNX3RvdGFsX2ZhaWxlZEIQCg5fbWVzc2FnZV9jb3VudEIgCh5fdW5yZXNvbHZlZF9yZXF1aX'
    'JlZF9hY2tfY291bnQ=');

@$core.Deprecated('Use controlPlaneRunActivityCursorDescriptor instead')
const ControlPlaneRunActivityCursor$json = {
  '1': 'ControlPlaneRunActivityCursor',
  '2': [
    {
      '1': 'after_sequence',
      '3': 1,
      '4': 1,
      '5': 4,
      '9': 0,
      '10': 'afterSequence',
      '17': true
    },
    {
      '1': 'resume_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'resumeToken',
      '17': true
    },
  ],
  '8': [
    {'1': '_after_sequence'},
    {'1': '_resume_token'},
  ],
};

/// Descriptor for `ControlPlaneRunActivityCursor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controlPlaneRunActivityCursorDescriptor =
    $convert.base64Decode(
        'Ch1Db250cm9sUGxhbmVSdW5BY3Rpdml0eUN1cnNvchIqCg5hZnRlcl9zZXF1ZW5jZRgBIAEoBE'
        'gAUg1hZnRlclNlcXVlbmNliAEBEiYKDHJlc3VtZV90b2tlbhgCIAEoCUgBUgtyZXN1bWVUb2tl'
        'bogBAUIRCg9fYWZ0ZXJfc2VxdWVuY2VCDwoNX3Jlc3VtZV90b2tlbg==');

@$core.Deprecated('Use listControlPlaneRunsRequestDescriptor instead')
const ListControlPlaneRunsRequest$json = {
  '1': 'ListControlPlaneRunsRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'scope',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneScope',
      '10': 'scope'
    },
    {
      '1': 'project_key',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'projectKey',
      '17': true
    },
    {'1': 'limit', '3': 4, '4': 1, '5': 13, '9': 1, '10': 'limit', '17': true},
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 2,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_project_key'},
    {'1': '_limit'},
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `ListControlPlaneRunsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listControlPlaneRunsRequestDescriptor = $convert.base64Decode(
    'ChtMaXN0Q29udHJvbFBsYW5lUnVuc1JlcXVlc3QSKQoQY29udHJhY3RfdmVyc2lvbhgBIAEoCV'
    'IPY29udHJhY3RWZXJzaW9uEkQKBXNjb3BlGAIgASgLMi4ubW9uYXJjaGljLmFnZW50X3Byb3Rv'
    'Y29sLnYxLkNvbnRyb2xQbGFuZVNjb3BlUgVzY29wZRIkCgtwcm9qZWN0X2tleRgDIAEoCUgAUg'
    'pwcm9qZWN0S2V5iAEBEhkKBWxpbWl0GAQgASgNSAFSBWxpbWl0iAEBEjcKCmV4dGVuc2lvbnMY'
    'BSABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25zElAKDGF1dGhfY29udG'
    'V4dBgGIAEoCzIoLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BdXRoQ29udGV4dEgCUgth'
    'dXRoQ29udGV4dIgBAUIOCgxfcHJvamVjdF9rZXlCCAoGX2xpbWl0Qg8KDV9hdXRoX2NvbnRleH'
    'Q=');

@$core.Deprecated('Use listControlPlaneRunsResponseDescriptor instead')
const ListControlPlaneRunsResponse$json = {
  '1': 'ListControlPlaneRunsResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'runs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneRunSummary',
      '10': 'runs'
    },
    {
      '1': 'extensions',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `ListControlPlaneRunsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listControlPlaneRunsResponseDescriptor = $convert.base64Decode(
    'ChxMaXN0Q29udHJvbFBsYW5lUnVuc1Jlc3BvbnNlEikKEGNvbnRyYWN0X3ZlcnNpb24YASABKA'
    'lSD2NvbnRyYWN0VmVyc2lvbhJHCgRydW5zGAIgAygLMjMubW9uYXJjaGljLmFnZW50X3Byb3Rv'
    'Y29sLnYxLkNvbnRyb2xQbGFuZVJ1blN1bW1hcnlSBHJ1bnMSNwoKZXh0ZW5zaW9ucxgDIAEoCz'
    'IXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnM=');

@$core.Deprecated('Use getControlPlaneRunRequestDescriptor instead')
const GetControlPlaneRunRequest$json = {
  '1': 'GetControlPlaneRunRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'scope',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneScope',
      '10': 'scope'
    },
    {
      '1': 'project_key',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'projectKey',
      '17': true
    },
    {'1': 'run_id', '3': 4, '4': 1, '5': 9, '10': 'runId'},
    {
      '1': 'extensions',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 1,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_project_key'},
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `GetControlPlaneRunRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getControlPlaneRunRequestDescriptor = $convert.base64Decode(
    'ChlHZXRDb250cm9sUGxhbmVSdW5SZXF1ZXN0EikKEGNvbnRyYWN0X3ZlcnNpb24YASABKAlSD2'
    'NvbnRyYWN0VmVyc2lvbhJECgVzY29wZRgCIAEoCzIuLm1vbmFyY2hpYy5hZ2VudF9wcm90b2Nv'
    'bC52MS5Db250cm9sUGxhbmVTY29wZVIFc2NvcGUSJAoLcHJvamVjdF9rZXkYAyABKAlIAFIKcH'
    'JvamVjdEtleYgBARIVCgZydW5faWQYBCABKAlSBXJ1bklkEjcKCmV4dGVuc2lvbnMYBSABKAsy'
    'Fy5nb29nbGUucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25zElAKDGF1dGhfY29udGV4dBgGIA'
    'EoCzIoLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BdXRoQ29udGV4dEgBUgthdXRoQ29u'
    'dGV4dIgBAUIOCgxfcHJvamVjdF9rZXlCDwoNX2F1dGhfY29udGV4dA==');

@$core.Deprecated('Use getControlPlaneRunResponseDescriptor instead')
const GetControlPlaneRunResponse$json = {
  '1': 'GetControlPlaneRunResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'run',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneRunSummary',
      '10': 'run'
    },
    {
      '1': 'extensions',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `GetControlPlaneRunResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getControlPlaneRunResponseDescriptor = $convert.base64Decode(
    'ChpHZXRDb250cm9sUGxhbmVSdW5SZXNwb25zZRIpChBjb250cmFjdF92ZXJzaW9uGAEgASgJUg'
    '9jb250cmFjdFZlcnNpb24SRQoDcnVuGAIgASgLMjMubW9uYXJjaGljLmFnZW50X3Byb3RvY29s'
    'LnYxLkNvbnRyb2xQbGFuZVJ1blN1bW1hcnlSA3J1bhI3CgpleHRlbnNpb25zGAMgASgLMhcuZ2'
    '9vZ2xlLnByb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9ucw==');

@$core.Deprecated('Use getControlPlaneRunActivityPageRequestDescriptor instead')
const GetControlPlaneRunActivityPageRequest$json = {
  '1': 'GetControlPlaneRunActivityPageRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'scope',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneScope',
      '10': 'scope'
    },
    {
      '1': 'project_key',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'projectKey',
      '17': true
    },
    {'1': 'run_id', '3': 4, '4': 1, '5': 9, '10': 'runId'},
    {'1': 'limit', '3': 5, '4': 1, '5': 13, '9': 1, '10': 'limit', '17': true},
    {
      '1': 'cursor',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneRunActivityCursor',
      '10': 'cursor'
    },
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 2,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_project_key'},
    {'1': '_limit'},
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `GetControlPlaneRunActivityPageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getControlPlaneRunActivityPageRequestDescriptor = $convert.base64Decode(
    'CiVHZXRDb250cm9sUGxhbmVSdW5BY3Rpdml0eVBhZ2VSZXF1ZXN0EikKEGNvbnRyYWN0X3Zlcn'
    'Npb24YASABKAlSD2NvbnRyYWN0VmVyc2lvbhJECgVzY29wZRgCIAEoCzIuLm1vbmFyY2hpYy5h'
    'Z2VudF9wcm90b2NvbC52MS5Db250cm9sUGxhbmVTY29wZVIFc2NvcGUSJAoLcHJvamVjdF9rZX'
    'kYAyABKAlIAFIKcHJvamVjdEtleYgBARIVCgZydW5faWQYBCABKAlSBXJ1bklkEhkKBWxpbWl0'
    'GAUgASgNSAFSBWxpbWl0iAEBElIKBmN1cnNvchgGIAEoCzI6Lm1vbmFyY2hpYy5hZ2VudF9wcm'
    '90b2NvbC52MS5Db250cm9sUGxhbmVSdW5BY3Rpdml0eUN1cnNvclIGY3Vyc29yEjcKCmV4dGVu'
    'c2lvbnMYByABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25zElAKDGF1dG'
    'hfY29udGV4dBgIIAEoCzIoLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BdXRoQ29udGV4'
    'dEgCUgthdXRoQ29udGV4dIgBAUIOCgxfcHJvamVjdF9rZXlCCAoGX2xpbWl0Qg8KDV9hdXRoX2'
    'NvbnRleHQ=');

@$core
    .Deprecated('Use getControlPlaneRunActivityPageResponseDescriptor instead')
const GetControlPlaneRunActivityPageResponse$json = {
  '1': 'GetControlPlaneRunActivityPageResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'records',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.RunEventRecord',
      '10': 'records'
    },
    {
      '1': 'next_cursor',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneRunActivityCursor',
      '10': 'nextCursor'
    },
    {
      '1': 'extensions',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
};

/// Descriptor for `GetControlPlaneRunActivityPageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getControlPlaneRunActivityPageResponseDescriptor =
    $convert.base64Decode(
        'CiZHZXRDb250cm9sUGxhbmVSdW5BY3Rpdml0eVBhZ2VSZXNwb25zZRIpChBjb250cmFjdF92ZX'
        'JzaW9uGAEgASgJUg9jb250cmFjdFZlcnNpb24SRQoHcmVjb3JkcxgCIAMoCzIrLm1vbmFyY2hp'
        'Yy5hZ2VudF9wcm90b2NvbC52MS5SdW5FdmVudFJlY29yZFIHcmVjb3JkcxJbCgtuZXh0X2N1cn'
        'NvchgDIAEoCzI6Lm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5Db250cm9sUGxhbmVSdW5B'
        'Y3Rpdml0eUN1cnNvclIKbmV4dEN1cnNvchI3CgpleHRlbnNpb25zGAQgASgLMhcuZ29vZ2xlLn'
        'Byb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9ucw==');

@$core.Deprecated('Use applyControlPlaneRunActionRequestDescriptor instead')
const ApplyControlPlaneRunActionRequest$json = {
  '1': 'ApplyControlPlaneRunActionRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'scope',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneScope',
      '10': 'scope'
    },
    {'1': 'run_id', '3': 3, '4': 1, '5': 9, '10': 'runId'},
    {
      '1': 'action',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneRunAction',
      '10': 'action'
    },
    {'1': 'reason', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'reason', '17': true},
    {
      '1': 'extensions',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 1,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_reason'},
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `ApplyControlPlaneRunActionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyControlPlaneRunActionRequestDescriptor = $convert.base64Decode(
    'CiFBcHBseUNvbnRyb2xQbGFuZVJ1bkFjdGlvblJlcXVlc3QSKQoQY29udHJhY3RfdmVyc2lvbh'
    'gBIAEoCVIPY29udHJhY3RWZXJzaW9uEkQKBXNjb3BlGAIgASgLMi4ubW9uYXJjaGljLmFnZW50'
    'X3Byb3RvY29sLnYxLkNvbnRyb2xQbGFuZVNjb3BlUgVzY29wZRIVCgZydW5faWQYAyABKAlSBX'
    'J1bklkEkoKBmFjdGlvbhgEIAEoDjIyLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5Db250'
    'cm9sUGxhbmVSdW5BY3Rpb25SBmFjdGlvbhIbCgZyZWFzb24YBSABKAlIAFIGcmVhc29uiAEBEj'
    'cKCmV4dGVuc2lvbnMYBiABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgpleHRlbnNpb25z'
    'ElAKDGF1dGhfY29udGV4dBgHIAEoCzIoLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BdX'
    'RoQ29udGV4dEgBUgthdXRoQ29udGV4dIgBAUIJCgdfcmVhc29uQg8KDV9hdXRoX2NvbnRleHQ=');

@$core.Deprecated('Use applyControlPlaneRunActionResponseDescriptor instead')
const ApplyControlPlaneRunActionResponse$json = {
  '1': 'ApplyControlPlaneRunActionResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'run_id', '3': 2, '4': 1, '5': 9, '10': 'runId'},
    {
      '1': 'action',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneRunAction',
      '10': 'action'
    },
    {'1': 'accepted', '3': 4, '4': 1, '5': 8, '10': 'accepted'},
    {
      '1': 'lifecycle_state',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.RunLifecycleState',
      '9': 0,
      '10': 'lifecycleState',
      '17': true
    },
    {
      '1': 'message',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'message',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_lifecycle_state'},
    {'1': '_message'},
  ],
};

/// Descriptor for `ApplyControlPlaneRunActionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyControlPlaneRunActionResponseDescriptor = $convert.base64Decode(
    'CiJBcHBseUNvbnRyb2xQbGFuZVJ1bkFjdGlvblJlc3BvbnNlEikKEGNvbnRyYWN0X3ZlcnNpb2'
    '4YASABKAlSD2NvbnRyYWN0VmVyc2lvbhIVCgZydW5faWQYAiABKAlSBXJ1bklkEkoKBmFjdGlv'
    'bhgDIAEoDjIyLm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5Db250cm9sUGxhbmVSdW5BY3'
    'Rpb25SBmFjdGlvbhIaCghhY2NlcHRlZBgEIAEoCFIIYWNjZXB0ZWQSXAoPbGlmZWN5Y2xlX3N0'
    'YXRlGAUgASgOMi4ubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlJ1bkxpZmVjeWNsZVN0YX'
    'RlSABSDmxpZmVjeWNsZVN0YXRliAEBEh0KB21lc3NhZ2UYBiABKAlIAVIHbWVzc2FnZYgBARI3'
    'CgpleHRlbnNpb25zGAcgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9uc0'
    'ISChBfbGlmZWN5Y2xlX3N0YXRlQgoKCF9tZXNzYWdl');

@$core.Deprecated(
    'Use applyControlPlaneReviewDispositionRequestDescriptor instead')
const ApplyControlPlaneReviewDispositionRequest$json = {
  '1': 'ApplyControlPlaneReviewDispositionRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'scope',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneScope',
      '10': 'scope'
    },
    {'1': 'project_key', '3': 3, '4': 1, '5': 9, '10': 'projectKey'},
    {
      '1': 'plan_id',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'planId',
      '17': true
    },
    {'1': 'actor', '3': 5, '4': 1, '5': 9, '10': 'actor'},
    {
      '1': 'decision',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.monarchic.agent_protocol.v1.ReviewDisposition',
      '10': 'decision'
    },
    {'1': 'reason', '3': 7, '4': 1, '5': 9, '10': 'reason'},
    {
      '1': 'extensions',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 1,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_plan_id'},
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `ApplyControlPlaneReviewDispositionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyControlPlaneReviewDispositionRequestDescriptor = $convert.base64Decode(
    'CilBcHBseUNvbnRyb2xQbGFuZVJldmlld0Rpc3Bvc2l0aW9uUmVxdWVzdBIpChBjb250cmFjdF'
    '92ZXJzaW9uGAEgASgJUg9jb250cmFjdFZlcnNpb24SRAoFc2NvcGUYAiABKAsyLi5tb25hcmNo'
    'aWMuYWdlbnRfcHJvdG9jb2wudjEuQ29udHJvbFBsYW5lU2NvcGVSBXNjb3BlEh8KC3Byb2plY3'
    'Rfa2V5GAMgASgJUgpwcm9qZWN0S2V5EhwKB3BsYW5faWQYBCABKAlIAFIGcGxhbklkiAEBEhQK'
    'BWFjdG9yGAUgASgJUgVhY3RvchJKCghkZWNpc2lvbhgGIAEoDjIuLm1vbmFyY2hpYy5hZ2VudF'
    '9wcm90b2NvbC52MS5SZXZpZXdEaXNwb3NpdGlvblIIZGVjaXNpb24SFgoGcmVhc29uGAcgASgJ'
    'UgZyZWFzb24SNwoKZXh0ZW5zaW9ucxgIIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCm'
    'V4dGVuc2lvbnMSUAoMYXV0aF9jb250ZXh0GAkgASgLMigubW9uYXJjaGljLmFnZW50X3Byb3Rv'
    'Y29sLnYxLkF1dGhDb250ZXh0SAFSC2F1dGhDb250ZXh0iAEBQgoKCF9wbGFuX2lkQg8KDV9hdX'
    'RoX2NvbnRleHQ=');

@$core.Deprecated(
    'Use applyControlPlaneReviewDispositionResponseDescriptor instead')
const ApplyControlPlaneReviewDispositionResponse$json = {
  '1': 'ApplyControlPlaneReviewDispositionResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'project_key', '3': 2, '4': 1, '5': 9, '10': 'projectKey'},
    {
      '1': 'plan_id',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'planId',
      '17': true
    },
    {'1': 'accepted', '3': 4, '4': 1, '5': 8, '10': 'accepted'},
    {
      '1': 'review_decision',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ReviewDecision',
      '9': 1,
      '10': 'reviewDecision',
      '17': true
    },
    {
      '1': 'pr_lifecycle_state',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.PrLifecycleState',
      '9': 2,
      '10': 'prLifecycleState',
      '17': true
    },
    {
      '1': 'message',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'message',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_plan_id'},
    {'1': '_review_decision'},
    {'1': '_pr_lifecycle_state'},
    {'1': '_message'},
  ],
};

/// Descriptor for `ApplyControlPlaneReviewDispositionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyControlPlaneReviewDispositionResponseDescriptor = $convert.base64Decode(
    'CipBcHBseUNvbnRyb2xQbGFuZVJldmlld0Rpc3Bvc2l0aW9uUmVzcG9uc2USKQoQY29udHJhY3'
    'RfdmVyc2lvbhgBIAEoCVIPY29udHJhY3RWZXJzaW9uEh8KC3Byb2plY3Rfa2V5GAIgASgJUgpw'
    'cm9qZWN0S2V5EhwKB3BsYW5faWQYAyABKAlIAFIGcGxhbklkiAEBEhoKCGFjY2VwdGVkGAQgAS'
    'gIUghhY2NlcHRlZBJZCg9yZXZpZXdfZGVjaXNpb24YBSABKAsyKy5tb25hcmNoaWMuYWdlbnRf'
    'cHJvdG9jb2wudjEuUmV2aWV3RGVjaXNpb25IAVIOcmV2aWV3RGVjaXNpb26IAQESYAoScHJfbG'
    'lmZWN5Y2xlX3N0YXRlGAYgASgLMi0ubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlByTGlm'
    'ZWN5Y2xlU3RhdGVIAlIQcHJMaWZlY3ljbGVTdGF0ZYgBARIdCgdtZXNzYWdlGAcgASgJSANSB2'
    '1lc3NhZ2WIAQESNwoKZXh0ZW5zaW9ucxgIIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RS'
    'CmV4dGVuc2lvbnNCCgoIX3BsYW5faWRCEgoQX3Jldmlld19kZWNpc2lvbkIVChNfcHJfbGlmZW'
    'N5Y2xlX3N0YXRlQgoKCF9tZXNzYWdl');

@$core.Deprecated('Use ensureControlPlaneWorkerRequestDescriptor instead')
const EnsureControlPlaneWorkerRequest$json = {
  '1': 'EnsureControlPlaneWorkerRequest',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {
      '1': 'scope',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.ControlPlaneScope',
      '10': 'scope'
    },
    {'1': 'project_key', '3': 3, '4': 1, '5': 9, '10': 'projectKey'},
    {
      '1': 'extensions',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
    {
      '1': 'auth_context',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.AuthContext',
      '9': 0,
      '10': 'authContext',
      '17': true
    },
  ],
  '8': [
    {'1': '_auth_context'},
  ],
};

/// Descriptor for `EnsureControlPlaneWorkerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ensureControlPlaneWorkerRequestDescriptor = $convert.base64Decode(
    'Ch9FbnN1cmVDb250cm9sUGxhbmVXb3JrZXJSZXF1ZXN0EikKEGNvbnRyYWN0X3ZlcnNpb24YAS'
    'ABKAlSD2NvbnRyYWN0VmVyc2lvbhJECgVzY29wZRgCIAEoCzIuLm1vbmFyY2hpYy5hZ2VudF9w'
    'cm90b2NvbC52MS5Db250cm9sUGxhbmVTY29wZVIFc2NvcGUSHwoLcHJvamVjdF9rZXkYAyABKA'
    'lSCnByb2plY3RLZXkSNwoKZXh0ZW5zaW9ucxgEIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1'
    'Y3RSCmV4dGVuc2lvbnMSUAoMYXV0aF9jb250ZXh0GAUgASgLMigubW9uYXJjaGljLmFnZW50X3'
    'Byb3RvY29sLnYxLkF1dGhDb250ZXh0SABSC2F1dGhDb250ZXh0iAEBQg8KDV9hdXRoX2NvbnRl'
    'eHQ=');

@$core.Deprecated('Use ensureControlPlaneWorkerResponseDescriptor instead')
const EnsureControlPlaneWorkerResponse$json = {
  '1': 'EnsureControlPlaneWorkerResponse',
  '2': [
    {'1': 'contract_version', '3': 1, '4': 1, '5': 9, '10': 'contractVersion'},
    {'1': 'project_key', '3': 2, '4': 1, '5': 9, '10': 'projectKey'},
    {'1': 'accepted', '3': 3, '4': 1, '5': 8, '10': 'accepted'},
    {
      '1': 'worker_id',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'workerId',
      '17': true
    },
    {
      '1': 'message',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'message',
      '17': true
    },
    {
      '1': 'extensions',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_worker_id'},
    {'1': '_message'},
  ],
};

/// Descriptor for `EnsureControlPlaneWorkerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ensureControlPlaneWorkerResponseDescriptor = $convert.base64Decode(
    'CiBFbnN1cmVDb250cm9sUGxhbmVXb3JrZXJSZXNwb25zZRIpChBjb250cmFjdF92ZXJzaW9uGA'
    'EgASgJUg9jb250cmFjdFZlcnNpb24SHwoLcHJvamVjdF9rZXkYAiABKAlSCnByb2plY3RLZXkS'
    'GgoIYWNjZXB0ZWQYAyABKAhSCGFjY2VwdGVkEiAKCXdvcmtlcl9pZBgEIAEoCUgAUgh3b3JrZX'
    'JJZIgBARIdCgdtZXNzYWdlGAUgASgJSAFSB21lc3NhZ2WIAQESNwoKZXh0ZW5zaW9ucxgGIAEo'
    'CzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnNCDAoKX3dvcmtlcl9pZEIKCg'
    'hfbWVzc2FnZQ==');

const $core.Map<$core.String, $core.dynamic> RunnerControlServiceBase$json = {
  '1': 'RunnerControlService',
  '2': [
    {
      '1': 'RegisterRunner',
      '2': '.monarchic.agent_protocol.v1.RegisterRunnerRequest',
      '3': '.monarchic.agent_protocol.v1.RegisterRunnerResponse'
    },
    {
      '1': 'Heartbeat',
      '2': '.monarchic.agent_protocol.v1.HeartbeatRequest',
      '3': '.monarchic.agent_protocol.v1.HeartbeatResponse'
    },
    {
      '1': 'AcquireLease',
      '2': '.monarchic.agent_protocol.v1.AcquireLeaseRequest',
      '3': '.monarchic.agent_protocol.v1.AcquireLeaseResponse'
    },
    {
      '1': 'RenewLease',
      '2': '.monarchic.agent_protocol.v1.RenewLeaseRequest',
      '3': '.monarchic.agent_protocol.v1.RenewLeaseResponse'
    },
    {
      '1': 'ResumeLease',
      '2': '.monarchic.agent_protocol.v1.ResumeLeaseRequest',
      '3': '.monarchic.agent_protocol.v1.ResumeLeaseResponse'
    },
    {
      '1': 'ReportStepStarted',
      '2': '.monarchic.agent_protocol.v1.ReportStepStartedRequest',
      '3': '.monarchic.agent_protocol.v1.ReportStepStartedResponse'
    },
    {
      '1': 'ReportStepProgress',
      '2': '.monarchic.agent_protocol.v1.ReportStepProgressRequest',
      '3': '.monarchic.agent_protocol.v1.ReportStepProgressResponse'
    },
    {
      '1': 'ReportStepOutcome',
      '2': '.monarchic.agent_protocol.v1.ReportStepOutcomeRequest',
      '3': '.monarchic.agent_protocol.v1.ReportStepOutcomeResponse'
    },
    {
      '1': 'AckCancellation',
      '2': '.monarchic.agent_protocol.v1.AckCancellationRequest',
      '3': '.monarchic.agent_protocol.v1.AckCancellationResponse'
    },
  ],
};

@$core.Deprecated('Use runnerControlServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    RunnerControlServiceBase$messageJson = {
  '.monarchic.agent_protocol.v1.RegisterRunnerRequest':
      RegisterRunnerRequest$json,
  '.monarchic.agent_protocol.v1.RunnerCapabilities': RunnerCapabilities$json,
  '.google.protobuf.Struct': $0.Struct$json,
  '.google.protobuf.Struct.FieldsEntry': $0.Struct_FieldsEntry$json,
  '.google.protobuf.Value': $0.Value$json,
  '.google.protobuf.ListValue': $0.ListValue$json,
  '.monarchic.agent_protocol.v1.AuthContext': AuthContext$json,
  '.monarchic.agent_protocol.v1.PrincipalRef': PrincipalRef$json,
  '.monarchic.agent_protocol.v1.TenantRef': TenantRef$json,
  '.monarchic.agent_protocol.v1.RegisterRunnerResponse':
      RegisterRunnerResponse$json,
  '.monarchic.agent_protocol.v1.HeartbeatRequest': HeartbeatRequest$json,
  '.monarchic.agent_protocol.v1.LeaseStatus': LeaseStatus$json,
  '.monarchic.agent_protocol.v1.LeaseRef': LeaseRef$json,
  '.monarchic.agent_protocol.v1.FailureDetail': FailureDetail$json,
  '.monarchic.agent_protocol.v1.HeartbeatResponse': HeartbeatResponse$json,
  '.monarchic.agent_protocol.v1.CancellationIntent': CancellationIntent$json,
  '.monarchic.agent_protocol.v1.AcquireLeaseRequest': AcquireLeaseRequest$json,
  '.monarchic.agent_protocol.v1.AcquireLeaseResponse':
      AcquireLeaseResponse$json,
  '.monarchic.agent_protocol.v1.LeaseAssignment': LeaseAssignment$json,
  '.monarchic.agent_protocol.v1.Task': Task$json,
  '.monarchic.agent_protocol.v1.RunContext': RunContext$json,
  '.monarchic.agent_protocol.v1.ExperimentSpec': ExperimentSpec$json,
  '.monarchic.agent_protocol.v1.DatasetRef': DatasetRef$json,
  '.monarchic.agent_protocol.v1.AcceptanceCriteria': AcceptanceCriteria$json,
  '.monarchic.agent_protocol.v1.ObjectiveSpec': ObjectiveSpec$json,
  '.monarchic.agent_protocol.v1.RenewLeaseRequest': RenewLeaseRequest$json,
  '.monarchic.agent_protocol.v1.RenewLeaseResponse': RenewLeaseResponse$json,
  '.monarchic.agent_protocol.v1.ResumeLeaseRequest': ResumeLeaseRequest$json,
  '.monarchic.agent_protocol.v1.ResumeLeaseResponse': ResumeLeaseResponse$json,
  '.monarchic.agent_protocol.v1.Lease': Lease$json,
  '.monarchic.agent_protocol.v1.FencingToken': FencingToken$json,
  '.monarchic.agent_protocol.v1.ReportStepStartedRequest':
      ReportStepStartedRequest$json,
  '.monarchic.agent_protocol.v1.ReportStepStartedResponse':
      ReportStepStartedResponse$json,
  '.monarchic.agent_protocol.v1.ReportStepProgressRequest':
      ReportStepProgressRequest$json,
  '.monarchic.agent_protocol.v1.Event': Event$json,
  '.monarchic.agent_protocol.v1.Provenance': Provenance$json,
  '.monarchic.agent_protocol.v1.EvalResult': EvalResult$json,
  '.monarchic.agent_protocol.v1.FailureClass': FailureClass$json,
  '.monarchic.agent_protocol.v1.Artifact': Artifact$json,
  '.monarchic.agent_protocol.v1.ReportStepProgressResponse':
      ReportStepProgressResponse$json,
  '.monarchic.agent_protocol.v1.ReportStepOutcomeRequest':
      ReportStepOutcomeRequest$json,
  '.monarchic.agent_protocol.v1.RunOutcome': RunOutcome$json,
  '.monarchic.agent_protocol.v1.ReportStepOutcomeResponse':
      ReportStepOutcomeResponse$json,
  '.monarchic.agent_protocol.v1.AckCancellationRequest':
      AckCancellationRequest$json,
  '.monarchic.agent_protocol.v1.AckCancellationResponse':
      AckCancellationResponse$json,
};

/// Descriptor for `RunnerControlService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List runnerControlServiceDescriptor = $convert.base64Decode(
    'ChRSdW5uZXJDb250cm9sU2VydmljZRJ5Cg5SZWdpc3RlclJ1bm5lchIyLm1vbmFyY2hpYy5hZ2'
    'VudF9wcm90b2NvbC52MS5SZWdpc3RlclJ1bm5lclJlcXVlc3QaMy5tb25hcmNoaWMuYWdlbnRf'
    'cHJvdG9jb2wudjEuUmVnaXN0ZXJSdW5uZXJSZXNwb25zZRJqCglIZWFydGJlYXQSLS5tb25hcm'
    'NoaWMuYWdlbnRfcHJvdG9jb2wudjEuSGVhcnRiZWF0UmVxdWVzdBouLm1vbmFyY2hpYy5hZ2Vu'
    'dF9wcm90b2NvbC52MS5IZWFydGJlYXRSZXNwb25zZRJzCgxBY3F1aXJlTGVhc2USMC5tb25hcm'
    'NoaWMuYWdlbnRfcHJvdG9jb2wudjEuQWNxdWlyZUxlYXNlUmVxdWVzdBoxLm1vbmFyY2hpYy5h'
    'Z2VudF9wcm90b2NvbC52MS5BY3F1aXJlTGVhc2VSZXNwb25zZRJtCgpSZW5ld0xlYXNlEi4ubW'
    '9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlJlbmV3TGVhc2VSZXF1ZXN0Gi8ubW9uYXJjaGlj'
    'LmFnZW50X3Byb3RvY29sLnYxLlJlbmV3TGVhc2VSZXNwb25zZRJwCgtSZXN1bWVMZWFzZRIvLm'
    '1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5SZXN1bWVMZWFzZVJlcXVlc3QaMC5tb25hcmNo'
    'aWMuYWdlbnRfcHJvdG9jb2wudjEuUmVzdW1lTGVhc2VSZXNwb25zZRKCAQoRUmVwb3J0U3RlcF'
    'N0YXJ0ZWQSNS5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuUmVwb3J0U3RlcFN0YXJ0ZWRS'
    'ZXF1ZXN0GjYubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLlJlcG9ydFN0ZXBTdGFydGVkUm'
    'VzcG9uc2UShQEKElJlcG9ydFN0ZXBQcm9ncmVzcxI2Lm1vbmFyY2hpYy5hZ2VudF9wcm90b2Nv'
    'bC52MS5SZXBvcnRTdGVwUHJvZ3Jlc3NSZXF1ZXN0GjcubW9uYXJjaGljLmFnZW50X3Byb3RvY2'
    '9sLnYxLlJlcG9ydFN0ZXBQcm9ncmVzc1Jlc3BvbnNlEoIBChFSZXBvcnRTdGVwT3V0Y29tZRI1'
    'Lm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5SZXBvcnRTdGVwT3V0Y29tZVJlcXVlc3QaNi'
    '5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuUmVwb3J0U3RlcE91dGNvbWVSZXNwb25zZRJ8'
    'Cg9BY2tDYW5jZWxsYXRpb24SMy5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuQWNrQ2FuY2'
    'VsbGF0aW9uUmVxdWVzdBo0Lm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BY2tDYW5jZWxs'
    'YXRpb25SZXNwb25zZQ==');

const $core.Map<$core.String, $core.dynamic> ClientControlServiceBase$json = {
  '1': 'ClientControlService',
  '2': [
    {
      '1': 'ListRuns',
      '2': '.monarchic.agent_protocol.v1.ListControlPlaneRunsRequest',
      '3': '.monarchic.agent_protocol.v1.ListControlPlaneRunsResponse'
    },
    {
      '1': 'GetRun',
      '2': '.monarchic.agent_protocol.v1.GetControlPlaneRunRequest',
      '3': '.monarchic.agent_protocol.v1.GetControlPlaneRunResponse'
    },
    {
      '1': 'GetRunActivityPage',
      '2': '.monarchic.agent_protocol.v1.GetControlPlaneRunActivityPageRequest',
      '3': '.monarchic.agent_protocol.v1.GetControlPlaneRunActivityPageResponse'
    },
    {
      '1': 'ApplyRunAction',
      '2': '.monarchic.agent_protocol.v1.ApplyControlPlaneRunActionRequest',
      '3': '.monarchic.agent_protocol.v1.ApplyControlPlaneRunActionResponse'
    },
    {
      '1': 'ApplyReviewDisposition',
      '2':
          '.monarchic.agent_protocol.v1.ApplyControlPlaneReviewDispositionRequest',
      '3':
          '.monarchic.agent_protocol.v1.ApplyControlPlaneReviewDispositionResponse'
    },
    {
      '1': 'EnsureWorker',
      '2': '.monarchic.agent_protocol.v1.EnsureControlPlaneWorkerRequest',
      '3': '.monarchic.agent_protocol.v1.EnsureControlPlaneWorkerResponse'
    },
  ],
};

@$core.Deprecated('Use clientControlServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    ClientControlServiceBase$messageJson = {
  '.monarchic.agent_protocol.v1.ListControlPlaneRunsRequest':
      ListControlPlaneRunsRequest$json,
  '.monarchic.agent_protocol.v1.ControlPlaneScope': ControlPlaneScope$json,
  '.google.protobuf.Struct': $0.Struct$json,
  '.google.protobuf.Struct.FieldsEntry': $0.Struct_FieldsEntry$json,
  '.google.protobuf.Value': $0.Value$json,
  '.google.protobuf.ListValue': $0.ListValue$json,
  '.monarchic.agent_protocol.v1.AuthContext': AuthContext$json,
  '.monarchic.agent_protocol.v1.PrincipalRef': PrincipalRef$json,
  '.monarchic.agent_protocol.v1.TenantRef': TenantRef$json,
  '.monarchic.agent_protocol.v1.ListControlPlaneRunsResponse':
      ListControlPlaneRunsResponse$json,
  '.monarchic.agent_protocol.v1.ControlPlaneRunSummary':
      ControlPlaneRunSummary$json,
  '.monarchic.agent_protocol.v1.RunOperatorSignals': RunOperatorSignals$json,
  '.monarchic.agent_protocol.v1.GetControlPlaneRunRequest':
      GetControlPlaneRunRequest$json,
  '.monarchic.agent_protocol.v1.GetControlPlaneRunResponse':
      GetControlPlaneRunResponse$json,
  '.monarchic.agent_protocol.v1.GetControlPlaneRunActivityPageRequest':
      GetControlPlaneRunActivityPageRequest$json,
  '.monarchic.agent_protocol.v1.ControlPlaneRunActivityCursor':
      ControlPlaneRunActivityCursor$json,
  '.monarchic.agent_protocol.v1.GetControlPlaneRunActivityPageResponse':
      GetControlPlaneRunActivityPageResponse$json,
  '.monarchic.agent_protocol.v1.RunEventRecord': RunEventRecord$json,
  '.monarchic.agent_protocol.v1.ApplyControlPlaneRunActionRequest':
      ApplyControlPlaneRunActionRequest$json,
  '.monarchic.agent_protocol.v1.ApplyControlPlaneRunActionResponse':
      ApplyControlPlaneRunActionResponse$json,
  '.monarchic.agent_protocol.v1.ApplyControlPlaneReviewDispositionRequest':
      ApplyControlPlaneReviewDispositionRequest$json,
  '.monarchic.agent_protocol.v1.ApplyControlPlaneReviewDispositionResponse':
      ApplyControlPlaneReviewDispositionResponse$json,
  '.monarchic.agent_protocol.v1.ReviewDecision': ReviewDecision$json,
  '.monarchic.agent_protocol.v1.PrLifecycleState': PrLifecycleState$json,
  '.monarchic.agent_protocol.v1.RerunScope': RerunScope$json,
  '.monarchic.agent_protocol.v1.RerunExecutionResult':
      RerunExecutionResult$json,
  '.monarchic.agent_protocol.v1.VerificationReceipt': VerificationReceipt$json,
  '.monarchic.agent_protocol.v1.VerificationCheck': VerificationCheck$json,
  '.monarchic.agent_protocol.v1.BlockedOutcome': BlockedOutcome$json,
  '.monarchic.agent_protocol.v1.ArtifactDescriptor': ArtifactDescriptor$json,
  '.monarchic.agent_protocol.v1.EnsureControlPlaneWorkerRequest':
      EnsureControlPlaneWorkerRequest$json,
  '.monarchic.agent_protocol.v1.EnsureControlPlaneWorkerResponse':
      EnsureControlPlaneWorkerResponse$json,
};

/// Descriptor for `ClientControlService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List clientControlServiceDescriptor = $convert.base64Decode(
    'ChRDbGllbnRDb250cm9sU2VydmljZRJ/CghMaXN0UnVucxI4Lm1vbmFyY2hpYy5hZ2VudF9wcm'
    '90b2NvbC52MS5MaXN0Q29udHJvbFBsYW5lUnVuc1JlcXVlc3QaOS5tb25hcmNoaWMuYWdlbnRf'
    'cHJvdG9jb2wudjEuTGlzdENvbnRyb2xQbGFuZVJ1bnNSZXNwb25zZRJ5CgZHZXRSdW4SNi5tb2'
    '5hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuR2V0Q29udHJvbFBsYW5lUnVuUmVxdWVzdBo3Lm1v'
    'bmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5HZXRDb250cm9sUGxhbmVSdW5SZXNwb25zZRKdAQ'
    'oSR2V0UnVuQWN0aXZpdHlQYWdlEkIubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkdldENv'
    'bnRyb2xQbGFuZVJ1bkFjdGl2aXR5UGFnZVJlcXVlc3QaQy5tb25hcmNoaWMuYWdlbnRfcHJvdG'
    '9jb2wudjEuR2V0Q29udHJvbFBsYW5lUnVuQWN0aXZpdHlQYWdlUmVzcG9uc2USkQEKDkFwcGx5'
    'UnVuQWN0aW9uEj4ubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkFwcGx5Q29udHJvbFBsYW'
    '5lUnVuQWN0aW9uUmVxdWVzdBo/Lm1vbmFyY2hpYy5hZ2VudF9wcm90b2NvbC52MS5BcHBseUNv'
    'bnRyb2xQbGFuZVJ1bkFjdGlvblJlc3BvbnNlEqkBChZBcHBseVJldmlld0Rpc3Bvc2l0aW9uEk'
    'YubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkFwcGx5Q29udHJvbFBsYW5lUmV2aWV3RGlz'
    'cG9zaXRpb25SZXF1ZXN0GkcubW9uYXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkFwcGx5Q29udH'
    'JvbFBsYW5lUmV2aWV3RGlzcG9zaXRpb25SZXNwb25zZRKLAQoMRW5zdXJlV29ya2VyEjwubW9u'
    'YXJjaGljLmFnZW50X3Byb3RvY29sLnYxLkVuc3VyZUNvbnRyb2xQbGFuZVdvcmtlclJlcXVlc3'
    'QaPS5tb25hcmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuRW5zdXJlQ29udHJvbFBsYW5lV29ya2Vy'
    'UmVzcG9uc2U=');
