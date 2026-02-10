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
    'Byb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9ucw==');

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
  ],
};

/// Descriptor for `Artifact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List artifactDescriptor = $convert.base64Decode(
    'CghBcnRpZmFjdBIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9uEh8KC2FydGlmYWN0X2lkGAIgAS'
    'gJUgphcnRpZmFjdElkEhIKBHR5cGUYAyABKAlSBHR5cGUSGAoHc3VtbWFyeRgEIAEoCVIHc3Vt'
    'bWFyeRISCgRwYXRoGAUgASgJUgRwYXRoEhcKB3Rhc2tfaWQYBiABKAlSBnRhc2tJZBI3CgpleH'
    'RlbnNpb25zGAcgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9ucw==');

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
    'eHRlbnNpb25zQgoKCF9tZXNzYWdl');

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
