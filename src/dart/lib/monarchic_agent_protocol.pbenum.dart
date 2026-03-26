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
  static const AgentRole PUBLISHER =
      AgentRole._(8, _omitEnumNames ? '' : 'PUBLISHER');

  static const $core.List<AgentRole> values = <AgentRole>[
    AGENT_ROLE_UNSPECIFIED,
    PRODUCT_OWNER,
    PROJECT_MANAGER,
    DEV,
    QA,
    REVIEWER,
    SECURITY,
    OPS,
    PUBLISHER,
  ];

  static final $core.List<AgentRole?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static AgentRole? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AgentRole._(super.value, super.name);
}

class OutcomeDecision extends $pb.ProtobufEnum {
  static const OutcomeDecision OUTCOME_DECISION_UNSPECIFIED = OutcomeDecision._(
      0, _omitEnumNames ? '' : 'OUTCOME_DECISION_UNSPECIFIED');
  static const OutcomeDecision ACCEPT =
      OutcomeDecision._(1, _omitEnumNames ? '' : 'ACCEPT');
  static const OutcomeDecision ITERATE =
      OutcomeDecision._(2, _omitEnumNames ? '' : 'ITERATE');
  static const OutcomeDecision REJECT =
      OutcomeDecision._(3, _omitEnumNames ? '' : 'REJECT');
  static const OutcomeDecision ESCALATE =
      OutcomeDecision._(4, _omitEnumNames ? '' : 'ESCALATE');

  static const $core.List<OutcomeDecision> values = <OutcomeDecision>[
    OUTCOME_DECISION_UNSPECIFIED,
    ACCEPT,
    ITERATE,
    REJECT,
    ESCALATE,
  ];

  static final $core.List<OutcomeDecision?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static OutcomeDecision? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const OutcomeDecision._(super.value, super.name);
}

class PlanStatus extends $pb.ProtobufEnum {
  static const PlanStatus PLAN_STATUS_UNSPECIFIED =
      PlanStatus._(0, _omitEnumNames ? '' : 'PLAN_STATUS_UNSPECIFIED');
  static const PlanStatus DRAFT =
      PlanStatus._(1, _omitEnumNames ? '' : 'DRAFT');
  static const PlanStatus PLANNED =
      PlanStatus._(2, _omitEnumNames ? '' : 'PLANNED');
  static const PlanStatus EXECUTING =
      PlanStatus._(3, _omitEnumNames ? '' : 'EXECUTING');
  static const PlanStatus COMPLETE =
      PlanStatus._(4, _omitEnumNames ? '' : 'COMPLETE');
  static const PlanStatus BOUNDED =
      PlanStatus._(5, _omitEnumNames ? '' : 'BOUNDED');
  static const PlanStatus FAILED =
      PlanStatus._(6, _omitEnumNames ? '' : 'FAILED');
  static const PlanStatus CANCELLED =
      PlanStatus._(7, _omitEnumNames ? '' : 'CANCELLED');
  static const PlanStatus UNKNOWN =
      PlanStatus._(8, _omitEnumNames ? '' : 'UNKNOWN');

  static const $core.List<PlanStatus> values = <PlanStatus>[
    PLAN_STATUS_UNSPECIFIED,
    DRAFT,
    PLANNED,
    EXECUTING,
    COMPLETE,
    BOUNDED,
    FAILED,
    CANCELLED,
    UNKNOWN,
  ];

  static final $core.List<PlanStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static PlanStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PlanStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
