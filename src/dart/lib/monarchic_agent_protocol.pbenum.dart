// This is a generated file - do not edit.
//
// Generated from monarchic_agent_protocol.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AgentRole extends $pb.ProtobufEnum {
  static const AgentRole AGENT_ROLE_UNSPECIFIED =
      AgentRole._(0, _omitEnumNames ? '' : 'AGENT_ROLE_UNSPECIFIED');
  static const AgentRole PRODUCT_OWNER =
      AgentRole._(1, _omitEnumNames ? '' : 'PRODUCT_OWNER');
  static const AgentRole PROJECT_MANAGER =
      AgentRole._(2, _omitEnumNames ? '' : 'PROJECT_MANAGER');
  static const AgentRole DEV = AgentRole._(3, _omitEnumNames ? '' : 'DEV');
  static const AgentRole QA = AgentRole._(4, _omitEnumNames ? '' : 'QA');
  static const AgentRole REVIEWER =
      AgentRole._(5, _omitEnumNames ? '' : 'REVIEWER');
  static const AgentRole SECURITY =
      AgentRole._(6, _omitEnumNames ? '' : 'SECURITY');
  static const AgentRole OPS = AgentRole._(7, _omitEnumNames ? '' : 'OPS');

  static const $core.List<AgentRole> values = <AgentRole>[
    AGENT_ROLE_UNSPECIFIED,
    PRODUCT_OWNER,
    PROJECT_MANAGER,
    DEV,
    QA,
    REVIEWER,
    SECURITY,
    OPS,
  ];

  static final $core.List<AgentRole?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static AgentRole? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AgentRole._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
