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
  ],
};

/// Descriptor for `AgentRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List agentRoleDescriptor = $convert.base64Decode(
    'CglBZ2VudFJvbGUSGgoWQUdFTlRfUk9MRV9VTlNQRUNJRklFRBAAEhEKDVBST0RVQ1RfT1dORV'
    'IQARITCg9QUk9KRUNUX01BTkFHRVIQAhIHCgNERVYQAxIGCgJRQRAEEgwKCFJFVklFV0VSEAUS'
    'DAoIU0VDVVJJVFkQBhIHCgNPUFMQBw==');

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

@$core.Deprecated('Use deliveryContractDescriptor instead')
const DeliveryContract$json = {
  '1': 'DeliveryContract',
  '2': [
    {'1': 'objective', '3': 1, '4': 1, '5': 9, '10': 'objective'},
    {
      '1': 'definition_of_done',
      '3': 2,
      '4': 3,
      '5': 9,
      '10': 'definitionOfDone'
    },
    {'1': 'required_checks', '3': 3, '4': 3, '5': 9, '10': 'requiredChecks'},
    {'1': 'risk_tier', '3': 4, '4': 1, '5': 9, '10': 'riskTier'},
    {
      '1': 'max_cycle_minutes',
      '3': 5,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'maxCycleMinutes',
      '17': true
    },
    {
      '1': 'max_agent_turns',
      '3': 6,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'maxAgentTurns',
      '17': true
    },
    {
      '1': 'pr_strategy',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'prStrategy',
      '17': true
    },
    {
      '1': 'review_policy',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'reviewPolicy',
      '17': true
    },
    {
      '1': 'rollback_strategy',
      '3': 9,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'rollbackStrategy',
      '17': true
    },
    {'1': 'notes', '3': 10, '4': 1, '5': 9, '9': 5, '10': 'notes', '17': true},
    {
      '1': 'extensions',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'extensions'
    },
  ],
  '8': [
    {'1': '_max_cycle_minutes'},
    {'1': '_max_agent_turns'},
    {'1': '_pr_strategy'},
    {'1': '_review_policy'},
    {'1': '_rollback_strategy'},
    {'1': '_notes'},
  ],
};

/// Descriptor for `DeliveryContract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deliveryContractDescriptor = $convert.base64Decode(
    'ChBEZWxpdmVyeUNvbnRyYWN0EhwKCW9iamVjdGl2ZRgBIAEoCVIJb2JqZWN0aXZlEiwKEmRlZm'
    'luaXRpb25fb2ZfZG9uZRgCIAMoCVIQZGVmaW5pdGlvbk9mRG9uZRInCg9yZXF1aXJlZF9jaGVj'
    'a3MYAyADKAlSDnJlcXVpcmVkQ2hlY2tzEhsKCXJpc2tfdGllchgEIAEoCVIIcmlza1RpZXISLw'
    'oRbWF4X2N5Y2xlX21pbnV0ZXMYBSABKA1IAFIPbWF4Q3ljbGVNaW51dGVziAEBEisKD21heF9h'
    'Z2VudF90dXJucxgGIAEoDUgBUg1tYXhBZ2VudFR1cm5ziAEBEiQKC3ByX3N0cmF0ZWd5GAcgAS'
    'gJSAJSCnByU3RyYXRlZ3mIAQESKAoNcmV2aWV3X3BvbGljeRgIIAEoCUgDUgxyZXZpZXdQb2xp'
    'Y3mIAQESMAoRcm9sbGJhY2tfc3RyYXRlZ3kYCSABKAlIBFIQcm9sbGJhY2tTdHJhdGVneYgBAR'
    'IZCgVub3RlcxgKIAEoCUgFUgVub3Rlc4gBARI3CgpleHRlbnNpb25zGAsgASgLMhcuZ29vZ2xl'
    'LnByb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9uc0IUChJfbWF4X2N5Y2xlX21pbnV0ZXNCEgoQX2'
    '1heF9hZ2VudF90dXJuc0IOCgxfcHJfc3RyYXRlZ3lCEAoOX3Jldmlld19wb2xpY3lCFAoSX3Jv'
    'bGxiYWNrX3N0cmF0ZWd5QggKBl9ub3Rlcw==');

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
      '1': 'delivery_contract',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.monarchic.agent_protocol.v1.DeliveryContract',
      '10': 'deliveryContract'
    },
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
    'VjEloKEWRlbGl2ZXJ5X2NvbnRyYWN0GAsgASgLMi0ubW9uYXJjaGljLmFnZW50X3Byb3RvY29s'
    'LnYxLkRlbGl2ZXJ5Q29udHJhY3RSEGRlbGl2ZXJ5Q29udHJhY3Q=');

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
    'cmNoaWMuYWdlbnRfcHJvdG9jb2wudjEuRXZhbFJlc3VsdFILZXZhbFJlc3VsdHNCCgoIX21lc3'
    'NhZ2U=');

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
    'oKZXh0ZW5zaW9ucxgGIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCmV4dGVuc2lvbnNC'
    'CQoHX3JlYXNvbg==');

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
