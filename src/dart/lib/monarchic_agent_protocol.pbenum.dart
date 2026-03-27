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
  static const AgentRole RESEARCHER =
      AgentRole._(9, _omitEnumNames ? '' : 'RESEARCHER');
  static const AgentRole VERIFICATION =
      AgentRole._(10, _omitEnumNames ? '' : 'VERIFICATION');

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
    RESEARCHER,
    VERIFICATION,
  ];

  static final $core.List<AgentRole?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 10);
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

class IntentClass extends $pb.ProtobufEnum {
  static const IntentClass INTENT_CLASS_UNSPECIFIED =
      IntentClass._(0, _omitEnumNames ? '' : 'INTENT_CLASS_UNSPECIFIED');
  static const IntentClass INTENT_CLASS_INSPECT =
      IntentClass._(1, _omitEnumNames ? '' : 'INTENT_CLASS_INSPECT');
  static const IntentClass INTENT_CLASS_VALIDATE =
      IntentClass._(2, _omitEnumNames ? '' : 'INTENT_CLASS_VALIDATE');
  static const IntentClass INTENT_CLASS_EXECUTE =
      IntentClass._(3, _omitEnumNames ? '' : 'INTENT_CLASS_EXECUTE');
  static const IntentClass INTENT_CLASS_VERIFY =
      IntentClass._(4, _omitEnumNames ? '' : 'INTENT_CLASS_VERIFY');

  static const $core.List<IntentClass> values = <IntentClass>[
    INTENT_CLASS_UNSPECIFIED,
    INTENT_CLASS_INSPECT,
    INTENT_CLASS_VALIDATE,
    INTENT_CLASS_EXECUTE,
    INTENT_CLASS_VERIFY,
  ];

  static final $core.List<IntentClass?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static IntentClass? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const IntentClass._(super.value, super.name);
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

class ArtifactKind extends $pb.ProtobufEnum {
  static const ArtifactKind ARTIFACT_KIND_UNSPECIFIED =
      ArtifactKind._(0, _omitEnumNames ? '' : 'ARTIFACT_KIND_UNSPECIFIED');
  static const ArtifactKind ARTIFACT_KIND_PLAN =
      ArtifactKind._(1, _omitEnumNames ? '' : 'ARTIFACT_KIND_PLAN');
  static const ArtifactKind ARTIFACT_KIND_EXECUTION_RECEIPT = ArtifactKind._(
      2, _omitEnumNames ? '' : 'ARTIFACT_KIND_EXECUTION_RECEIPT');
  static const ArtifactKind ARTIFACT_KIND_VERIFICATION_RECEIPT = ArtifactKind._(
      3, _omitEnumNames ? '' : 'ARTIFACT_KIND_VERIFICATION_RECEIPT');
  static const ArtifactKind ARTIFACT_KIND_EVENT_LOG =
      ArtifactKind._(4, _omitEnumNames ? '' : 'ARTIFACT_KIND_EVENT_LOG');
  static const ArtifactKind ARTIFACT_KIND_DIGEST_MANIFEST =
      ArtifactKind._(5, _omitEnumNames ? '' : 'ARTIFACT_KIND_DIGEST_MANIFEST');
  static const ArtifactKind ARTIFACT_KIND_PROOF_MANIFEST =
      ArtifactKind._(6, _omitEnumNames ? '' : 'ARTIFACT_KIND_PROOF_MANIFEST');
  static const ArtifactKind ARTIFACT_KIND_PATCH =
      ArtifactKind._(7, _omitEnumNames ? '' : 'ARTIFACT_KIND_PATCH');
  static const ArtifactKind ARTIFACT_KIND_TEST_REPORT =
      ArtifactKind._(8, _omitEnumNames ? '' : 'ARTIFACT_KIND_TEST_REPORT');
  static const ArtifactKind ARTIFACT_KIND_BUILD_LOG =
      ArtifactKind._(9, _omitEnumNames ? '' : 'ARTIFACT_KIND_BUILD_LOG');
  static const ArtifactKind ARTIFACT_KIND_BUNDLE =
      ArtifactKind._(10, _omitEnumNames ? '' : 'ARTIFACT_KIND_BUNDLE');
  static const ArtifactKind ARTIFACT_KIND_CUSTOM =
      ArtifactKind._(11, _omitEnumNames ? '' : 'ARTIFACT_KIND_CUSTOM');

  static const $core.List<ArtifactKind> values = <ArtifactKind>[
    ARTIFACT_KIND_UNSPECIFIED,
    ARTIFACT_KIND_PLAN,
    ARTIFACT_KIND_EXECUTION_RECEIPT,
    ARTIFACT_KIND_VERIFICATION_RECEIPT,
    ARTIFACT_KIND_EVENT_LOG,
    ARTIFACT_KIND_DIGEST_MANIFEST,
    ARTIFACT_KIND_PROOF_MANIFEST,
    ARTIFACT_KIND_PATCH,
    ARTIFACT_KIND_TEST_REPORT,
    ARTIFACT_KIND_BUILD_LOG,
    ARTIFACT_KIND_BUNDLE,
    ARTIFACT_KIND_CUSTOM,
  ];

  static final $core.List<ArtifactKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 11);
  static ArtifactKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ArtifactKind._(super.value, super.name);
}

class AuthMechanism extends $pb.ProtobufEnum {
  static const AuthMechanism AUTH_MECHANISM_UNSPECIFIED =
      AuthMechanism._(0, _omitEnumNames ? '' : 'AUTH_MECHANISM_UNSPECIFIED');
  static const AuthMechanism AUTH_MECHANISM_SHARED_SECRET =
      AuthMechanism._(1, _omitEnumNames ? '' : 'AUTH_MECHANISM_SHARED_SECRET');
  static const AuthMechanism AUTH_MECHANISM_BEARER_TOKEN =
      AuthMechanism._(2, _omitEnumNames ? '' : 'AUTH_MECHANISM_BEARER_TOKEN');
  static const AuthMechanism AUTH_MECHANISM_SIGNED_TOKEN =
      AuthMechanism._(3, _omitEnumNames ? '' : 'AUTH_MECHANISM_SIGNED_TOKEN');
  static const AuthMechanism AUTH_MECHANISM_MUTUAL_TLS =
      AuthMechanism._(4, _omitEnumNames ? '' : 'AUTH_MECHANISM_MUTUAL_TLS');
  static const AuthMechanism AUTH_MECHANISM_CUSTOM =
      AuthMechanism._(5, _omitEnumNames ? '' : 'AUTH_MECHANISM_CUSTOM');

  static const $core.List<AuthMechanism> values = <AuthMechanism>[
    AUTH_MECHANISM_UNSPECIFIED,
    AUTH_MECHANISM_SHARED_SECRET,
    AUTH_MECHANISM_BEARER_TOKEN,
    AUTH_MECHANISM_SIGNED_TOKEN,
    AUTH_MECHANISM_MUTUAL_TLS,
    AUTH_MECHANISM_CUSTOM,
  ];

  static final $core.List<AuthMechanism?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static AuthMechanism? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AuthMechanism._(super.value, super.name);
}

class UsageCategory extends $pb.ProtobufEnum {
  static const UsageCategory USAGE_CATEGORY_UNSPECIFIED =
      UsageCategory._(0, _omitEnumNames ? '' : 'USAGE_CATEGORY_UNSPECIFIED');
  static const UsageCategory USAGE_CATEGORY_CONTROL_PLANE =
      UsageCategory._(1, _omitEnumNames ? '' : 'USAGE_CATEGORY_CONTROL_PLANE');
  static const UsageCategory USAGE_CATEGORY_EXECUTION =
      UsageCategory._(2, _omitEnumNames ? '' : 'USAGE_CATEGORY_EXECUTION');
  static const UsageCategory USAGE_CATEGORY_VERIFICATION =
      UsageCategory._(3, _omitEnumNames ? '' : 'USAGE_CATEGORY_VERIFICATION');
  static const UsageCategory USAGE_CATEGORY_AUDIT_EXPORT =
      UsageCategory._(4, _omitEnumNames ? '' : 'USAGE_CATEGORY_AUDIT_EXPORT');
  static const UsageCategory USAGE_CATEGORY_CUSTOM =
      UsageCategory._(5, _omitEnumNames ? '' : 'USAGE_CATEGORY_CUSTOM');

  static const $core.List<UsageCategory> values = <UsageCategory>[
    USAGE_CATEGORY_UNSPECIFIED,
    USAGE_CATEGORY_CONTROL_PLANE,
    USAGE_CATEGORY_EXECUTION,
    USAGE_CATEGORY_VERIFICATION,
    USAGE_CATEGORY_AUDIT_EXPORT,
    USAGE_CATEGORY_CUSTOM,
  ];

  static final $core.List<UsageCategory?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static UsageCategory? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const UsageCategory._(super.value, super.name);
}

class UsageUnit extends $pb.ProtobufEnum {
  static const UsageUnit USAGE_UNIT_UNSPECIFIED =
      UsageUnit._(0, _omitEnumNames ? '' : 'USAGE_UNIT_UNSPECIFIED');
  static const UsageUnit USAGE_UNIT_REQUESTS =
      UsageUnit._(1, _omitEnumNames ? '' : 'USAGE_UNIT_REQUESTS');
  static const UsageUnit USAGE_UNIT_MILLISECONDS =
      UsageUnit._(2, _omitEnumNames ? '' : 'USAGE_UNIT_MILLISECONDS');
  static const UsageUnit USAGE_UNIT_BYTES =
      UsageUnit._(3, _omitEnumNames ? '' : 'USAGE_UNIT_BYTES');
  static const UsageUnit USAGE_UNIT_TOKENS =
      UsageUnit._(4, _omitEnumNames ? '' : 'USAGE_UNIT_TOKENS');
  static const UsageUnit USAGE_UNIT_RUNS =
      UsageUnit._(5, _omitEnumNames ? '' : 'USAGE_UNIT_RUNS');
  static const UsageUnit USAGE_UNIT_CUSTOM =
      UsageUnit._(6, _omitEnumNames ? '' : 'USAGE_UNIT_CUSTOM');

  static const $core.List<UsageUnit> values = <UsageUnit>[
    USAGE_UNIT_UNSPECIFIED,
    USAGE_UNIT_REQUESTS,
    USAGE_UNIT_MILLISECONDS,
    USAGE_UNIT_BYTES,
    USAGE_UNIT_TOKENS,
    USAGE_UNIT_RUNS,
    USAGE_UNIT_CUSTOM,
  ];

  static final $core.List<UsageUnit?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static UsageUnit? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const UsageUnit._(super.value, super.name);
}

class PlanStepKind extends $pb.ProtobufEnum {
  static const PlanStepKind PLAN_STEP_KIND_UNSPECIFIED =
      PlanStepKind._(0, _omitEnumNames ? '' : 'PLAN_STEP_KIND_UNSPECIFIED');
  static const PlanStepKind PLAN_STEP_KIND_ANALYSIS =
      PlanStepKind._(1, _omitEnumNames ? '' : 'PLAN_STEP_KIND_ANALYSIS');
  static const PlanStepKind PLAN_STEP_KIND_EXECUTION =
      PlanStepKind._(2, _omitEnumNames ? '' : 'PLAN_STEP_KIND_EXECUTION');
  static const PlanStepKind PLAN_STEP_KIND_VERIFICATION =
      PlanStepKind._(3, _omitEnumNames ? '' : 'PLAN_STEP_KIND_VERIFICATION');
  static const PlanStepKind PLAN_STEP_KIND_REVIEW =
      PlanStepKind._(4, _omitEnumNames ? '' : 'PLAN_STEP_KIND_REVIEW');
  static const PlanStepKind PLAN_STEP_KIND_MERGE =
      PlanStepKind._(5, _omitEnumNames ? '' : 'PLAN_STEP_KIND_MERGE');
  static const PlanStepKind PLAN_STEP_KIND_RELEASE =
      PlanStepKind._(6, _omitEnumNames ? '' : 'PLAN_STEP_KIND_RELEASE');
  static const PlanStepKind PLAN_STEP_KIND_CUSTOM =
      PlanStepKind._(7, _omitEnumNames ? '' : 'PLAN_STEP_KIND_CUSTOM');

  static const $core.List<PlanStepKind> values = <PlanStepKind>[
    PLAN_STEP_KIND_UNSPECIFIED,
    PLAN_STEP_KIND_ANALYSIS,
    PLAN_STEP_KIND_EXECUTION,
    PLAN_STEP_KIND_VERIFICATION,
    PLAN_STEP_KIND_REVIEW,
    PLAN_STEP_KIND_MERGE,
    PLAN_STEP_KIND_RELEASE,
    PLAN_STEP_KIND_CUSTOM,
  ];

  static final $core.List<PlanStepKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static PlanStepKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PlanStepKind._(super.value, super.name);
}

class ReplanStrategy extends $pb.ProtobufEnum {
  static const ReplanStrategy REPLAN_STRATEGY_UNSPECIFIED =
      ReplanStrategy._(0, _omitEnumNames ? '' : 'REPLAN_STRATEGY_UNSPECIFIED');
  static const ReplanStrategy REPLAN_STRATEGY_RETRY =
      ReplanStrategy._(1, _omitEnumNames ? '' : 'REPLAN_STRATEGY_RETRY');
  static const ReplanStrategy REPLAN_STRATEGY_REPAIR =
      ReplanStrategy._(2, _omitEnumNames ? '' : 'REPLAN_STRATEGY_REPAIR');
  static const ReplanStrategy REPLAN_STRATEGY_ESCALATE =
      ReplanStrategy._(3, _omitEnumNames ? '' : 'REPLAN_STRATEGY_ESCALATE');
  static const ReplanStrategy REPLAN_STRATEGY_BLOCK =
      ReplanStrategy._(4, _omitEnumNames ? '' : 'REPLAN_STRATEGY_BLOCK');

  static const $core.List<ReplanStrategy> values = <ReplanStrategy>[
    REPLAN_STRATEGY_UNSPECIFIED,
    REPLAN_STRATEGY_RETRY,
    REPLAN_STRATEGY_REPAIR,
    REPLAN_STRATEGY_ESCALATE,
    REPLAN_STRATEGY_BLOCK,
  ];

  static final $core.List<ReplanStrategy?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ReplanStrategy? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ReplanStrategy._(super.value, super.name);
}

class VerificationStatus extends $pb.ProtobufEnum {
  static const VerificationStatus VERIFICATION_STATUS_UNSPECIFIED =
      VerificationStatus._(
          0, _omitEnumNames ? '' : 'VERIFICATION_STATUS_UNSPECIFIED');
  static const VerificationStatus VERIFICATION_STATUS_PENDING =
      VerificationStatus._(
          1, _omitEnumNames ? '' : 'VERIFICATION_STATUS_PENDING');
  static const VerificationStatus VERIFICATION_STATUS_PASSED =
      VerificationStatus._(
          2, _omitEnumNames ? '' : 'VERIFICATION_STATUS_PASSED');
  static const VerificationStatus VERIFICATION_STATUS_FAILED =
      VerificationStatus._(
          3, _omitEnumNames ? '' : 'VERIFICATION_STATUS_FAILED');
  static const VerificationStatus VERIFICATION_STATUS_BLOCKED =
      VerificationStatus._(
          4, _omitEnumNames ? '' : 'VERIFICATION_STATUS_BLOCKED');

  static const $core.List<VerificationStatus> values = <VerificationStatus>[
    VERIFICATION_STATUS_UNSPECIFIED,
    VERIFICATION_STATUS_PENDING,
    VERIFICATION_STATUS_PASSED,
    VERIFICATION_STATUS_FAILED,
    VERIFICATION_STATUS_BLOCKED,
  ];

  static final $core.List<VerificationStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static VerificationStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const VerificationStatus._(super.value, super.name);
}

class VerificationCheckStatus extends $pb.ProtobufEnum {
  static const VerificationCheckStatus VERIFICATION_CHECK_STATUS_UNSPECIFIED =
      VerificationCheckStatus._(
          0, _omitEnumNames ? '' : 'VERIFICATION_CHECK_STATUS_UNSPECIFIED');
  static const VerificationCheckStatus VERIFICATION_CHECK_STATUS_PASSED =
      VerificationCheckStatus._(
          1, _omitEnumNames ? '' : 'VERIFICATION_CHECK_STATUS_PASSED');
  static const VerificationCheckStatus VERIFICATION_CHECK_STATUS_FAILED =
      VerificationCheckStatus._(
          2, _omitEnumNames ? '' : 'VERIFICATION_CHECK_STATUS_FAILED');
  static const VerificationCheckStatus VERIFICATION_CHECK_STATUS_BLOCKED =
      VerificationCheckStatus._(
          3, _omitEnumNames ? '' : 'VERIFICATION_CHECK_STATUS_BLOCKED');
  static const VerificationCheckStatus VERIFICATION_CHECK_STATUS_SKIPPED =
      VerificationCheckStatus._(
          4, _omitEnumNames ? '' : 'VERIFICATION_CHECK_STATUS_SKIPPED');

  static const $core.List<VerificationCheckStatus> values =
      <VerificationCheckStatus>[
    VERIFICATION_CHECK_STATUS_UNSPECIFIED,
    VERIFICATION_CHECK_STATUS_PASSED,
    VERIFICATION_CHECK_STATUS_FAILED,
    VERIFICATION_CHECK_STATUS_BLOCKED,
    VERIFICATION_CHECK_STATUS_SKIPPED,
  ];

  static final $core.List<VerificationCheckStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static VerificationCheckStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const VerificationCheckStatus._(super.value, super.name);
}

class BlockedOutcomeScope extends $pb.ProtobufEnum {
  static const BlockedOutcomeScope BLOCKED_OUTCOME_SCOPE_UNSPECIFIED =
      BlockedOutcomeScope._(
          0, _omitEnumNames ? '' : 'BLOCKED_OUTCOME_SCOPE_UNSPECIFIED');
  static const BlockedOutcomeScope BLOCKED_OUTCOME_SCOPE_INTENT =
      BlockedOutcomeScope._(
          1, _omitEnumNames ? '' : 'BLOCKED_OUTCOME_SCOPE_INTENT');
  static const BlockedOutcomeScope BLOCKED_OUTCOME_SCOPE_PLAN =
      BlockedOutcomeScope._(
          2, _omitEnumNames ? '' : 'BLOCKED_OUTCOME_SCOPE_PLAN');
  static const BlockedOutcomeScope BLOCKED_OUTCOME_SCOPE_STEP =
      BlockedOutcomeScope._(
          3, _omitEnumNames ? '' : 'BLOCKED_OUTCOME_SCOPE_STEP');
  static const BlockedOutcomeScope BLOCKED_OUTCOME_SCOPE_RUN =
      BlockedOutcomeScope._(
          4, _omitEnumNames ? '' : 'BLOCKED_OUTCOME_SCOPE_RUN');
  static const BlockedOutcomeScope BLOCKED_OUTCOME_SCOPE_VERIFICATION =
      BlockedOutcomeScope._(
          5, _omitEnumNames ? '' : 'BLOCKED_OUTCOME_SCOPE_VERIFICATION');
  static const BlockedOutcomeScope BLOCKED_OUTCOME_SCOPE_MERGE =
      BlockedOutcomeScope._(
          6, _omitEnumNames ? '' : 'BLOCKED_OUTCOME_SCOPE_MERGE');
  static const BlockedOutcomeScope BLOCKED_OUTCOME_SCOPE_RELEASE =
      BlockedOutcomeScope._(
          7, _omitEnumNames ? '' : 'BLOCKED_OUTCOME_SCOPE_RELEASE');

  static const $core.List<BlockedOutcomeScope> values = <BlockedOutcomeScope>[
    BLOCKED_OUTCOME_SCOPE_UNSPECIFIED,
    BLOCKED_OUTCOME_SCOPE_INTENT,
    BLOCKED_OUTCOME_SCOPE_PLAN,
    BLOCKED_OUTCOME_SCOPE_STEP,
    BLOCKED_OUTCOME_SCOPE_RUN,
    BLOCKED_OUTCOME_SCOPE_VERIFICATION,
    BLOCKED_OUTCOME_SCOPE_MERGE,
    BLOCKED_OUTCOME_SCOPE_RELEASE,
  ];

  static final $core.List<BlockedOutcomeScope?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static BlockedOutcomeScope? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BlockedOutcomeScope._(super.value, super.name);
}

class ReviewDecisionScope extends $pb.ProtobufEnum {
  static const ReviewDecisionScope REVIEW_DECISION_SCOPE_UNSPECIFIED =
      ReviewDecisionScope._(
          0, _omitEnumNames ? '' : 'REVIEW_DECISION_SCOPE_UNSPECIFIED');
  static const ReviewDecisionScope REVIEW_DECISION_SCOPE_PLAN =
      ReviewDecisionScope._(
          1, _omitEnumNames ? '' : 'REVIEW_DECISION_SCOPE_PLAN');
  static const ReviewDecisionScope REVIEW_DECISION_SCOPE_STEP =
      ReviewDecisionScope._(
          2, _omitEnumNames ? '' : 'REVIEW_DECISION_SCOPE_STEP');
  static const ReviewDecisionScope REVIEW_DECISION_SCOPE_PULL_REQUEST =
      ReviewDecisionScope._(
          3, _omitEnumNames ? '' : 'REVIEW_DECISION_SCOPE_PULL_REQUEST');
  static const ReviewDecisionScope REVIEW_DECISION_SCOPE_VERIFICATION =
      ReviewDecisionScope._(
          4, _omitEnumNames ? '' : 'REVIEW_DECISION_SCOPE_VERIFICATION');
  static const ReviewDecisionScope REVIEW_DECISION_SCOPE_RELEASE =
      ReviewDecisionScope._(
          5, _omitEnumNames ? '' : 'REVIEW_DECISION_SCOPE_RELEASE');

  static const $core.List<ReviewDecisionScope> values = <ReviewDecisionScope>[
    REVIEW_DECISION_SCOPE_UNSPECIFIED,
    REVIEW_DECISION_SCOPE_PLAN,
    REVIEW_DECISION_SCOPE_STEP,
    REVIEW_DECISION_SCOPE_PULL_REQUEST,
    REVIEW_DECISION_SCOPE_VERIFICATION,
    REVIEW_DECISION_SCOPE_RELEASE,
  ];

  static final $core.List<ReviewDecisionScope?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static ReviewDecisionScope? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ReviewDecisionScope._(super.value, super.name);
}

class ReviewDisposition extends $pb.ProtobufEnum {
  static const ReviewDisposition REVIEW_DISPOSITION_UNSPECIFIED =
      ReviewDisposition._(
          0, _omitEnumNames ? '' : 'REVIEW_DISPOSITION_UNSPECIFIED');
  static const ReviewDisposition REVIEW_DISPOSITION_APPROVE =
      ReviewDisposition._(
          1, _omitEnumNames ? '' : 'REVIEW_DISPOSITION_APPROVE');
  static const ReviewDisposition REVIEW_DISPOSITION_REQUEST_CHANGES =
      ReviewDisposition._(
          2, _omitEnumNames ? '' : 'REVIEW_DISPOSITION_REQUEST_CHANGES');
  static const ReviewDisposition REVIEW_DISPOSITION_REJECT =
      ReviewDisposition._(3, _omitEnumNames ? '' : 'REVIEW_DISPOSITION_REJECT');
  static const ReviewDisposition REVIEW_DISPOSITION_DEFER =
      ReviewDisposition._(4, _omitEnumNames ? '' : 'REVIEW_DISPOSITION_DEFER');

  static const $core.List<ReviewDisposition> values = <ReviewDisposition>[
    REVIEW_DISPOSITION_UNSPECIFIED,
    REVIEW_DISPOSITION_APPROVE,
    REVIEW_DISPOSITION_REQUEST_CHANGES,
    REVIEW_DISPOSITION_REJECT,
    REVIEW_DISPOSITION_DEFER,
  ];

  static final $core.List<ReviewDisposition?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ReviewDisposition? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ReviewDisposition._(super.value, super.name);
}

class RerunTrigger extends $pb.ProtobufEnum {
  static const RerunTrigger RERUN_TRIGGER_UNSPECIFIED =
      RerunTrigger._(0, _omitEnumNames ? '' : 'RERUN_TRIGGER_UNSPECIFIED');
  static const RerunTrigger RERUN_TRIGGER_REVIEW_DECISION =
      RerunTrigger._(1, _omitEnumNames ? '' : 'RERUN_TRIGGER_REVIEW_DECISION');
  static const RerunTrigger RERUN_TRIGGER_MANUAL =
      RerunTrigger._(2, _omitEnumNames ? '' : 'RERUN_TRIGGER_MANUAL');

  static const $core.List<RerunTrigger> values = <RerunTrigger>[
    RERUN_TRIGGER_UNSPECIFIED,
    RERUN_TRIGGER_REVIEW_DECISION,
    RERUN_TRIGGER_MANUAL,
  ];

  static final $core.List<RerunTrigger?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static RerunTrigger? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RerunTrigger._(super.value, super.name);
}

class RerunSelectionStrategy extends $pb.ProtobufEnum {
  static const RerunSelectionStrategy RERUN_SELECTION_STRATEGY_UNSPECIFIED =
      RerunSelectionStrategy._(
          0, _omitEnumNames ? '' : 'RERUN_SELECTION_STRATEGY_UNSPECIFIED');
  static const RerunSelectionStrategy RERUN_SELECTION_STRATEGY_TASK_IDS =
      RerunSelectionStrategy._(
          1, _omitEnumNames ? '' : 'RERUN_SELECTION_STRATEGY_TASK_IDS');
  static const RerunSelectionStrategy RERUN_SELECTION_STRATEGY_STEP_IDS =
      RerunSelectionStrategy._(
          2, _omitEnumNames ? '' : 'RERUN_SELECTION_STRATEGY_STEP_IDS');
  static const RerunSelectionStrategy RERUN_SELECTION_STRATEGY_PATHS =
      RerunSelectionStrategy._(
          3, _omitEnumNames ? '' : 'RERUN_SELECTION_STRATEGY_PATHS');

  static const $core.List<RerunSelectionStrategy> values =
      <RerunSelectionStrategy>[
    RERUN_SELECTION_STRATEGY_UNSPECIFIED,
    RERUN_SELECTION_STRATEGY_TASK_IDS,
    RERUN_SELECTION_STRATEGY_STEP_IDS,
    RERUN_SELECTION_STRATEGY_PATHS,
  ];

  static final $core.List<RerunSelectionStrategy?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static RerunSelectionStrategy? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RerunSelectionStrategy._(super.value, super.name);
}

class RerunExecutionStatus extends $pb.ProtobufEnum {
  static const RerunExecutionStatus RERUN_EXECUTION_STATUS_UNSPECIFIED =
      RerunExecutionStatus._(
          0, _omitEnumNames ? '' : 'RERUN_EXECUTION_STATUS_UNSPECIFIED');
  static const RerunExecutionStatus RERUN_EXECUTION_STATUS_PENDING =
      RerunExecutionStatus._(
          1, _omitEnumNames ? '' : 'RERUN_EXECUTION_STATUS_PENDING');
  static const RerunExecutionStatus RERUN_EXECUTION_STATUS_SUCCEEDED =
      RerunExecutionStatus._(
          2, _omitEnumNames ? '' : 'RERUN_EXECUTION_STATUS_SUCCEEDED');
  static const RerunExecutionStatus RERUN_EXECUTION_STATUS_FAILED =
      RerunExecutionStatus._(
          3, _omitEnumNames ? '' : 'RERUN_EXECUTION_STATUS_FAILED');
  static const RerunExecutionStatus RERUN_EXECUTION_STATUS_PARTIAL =
      RerunExecutionStatus._(
          4, _omitEnumNames ? '' : 'RERUN_EXECUTION_STATUS_PARTIAL');

  static const $core.List<RerunExecutionStatus> values = <RerunExecutionStatus>[
    RERUN_EXECUTION_STATUS_UNSPECIFIED,
    RERUN_EXECUTION_STATUS_PENDING,
    RERUN_EXECUTION_STATUS_SUCCEEDED,
    RERUN_EXECUTION_STATUS_FAILED,
    RERUN_EXECUTION_STATUS_PARTIAL,
  ];

  static final $core.List<RerunExecutionStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static RerunExecutionStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RerunExecutionStatus._(super.value, super.name);
}

class RunEventStream extends $pb.ProtobufEnum {
  static const RunEventStream RUN_EVENT_STREAM_UNSPECIFIED =
      RunEventStream._(0, _omitEnumNames ? '' : 'RUN_EVENT_STREAM_UNSPECIFIED');
  static const RunEventStream RUN_EVENT_STREAM_EXECUTION =
      RunEventStream._(1, _omitEnumNames ? '' : 'RUN_EVENT_STREAM_EXECUTION');
  static const RunEventStream RUN_EVENT_STREAM_RECOVERY =
      RunEventStream._(2, _omitEnumNames ? '' : 'RUN_EVENT_STREAM_RECOVERY');
  static const RunEventStream RUN_EVENT_STREAM_REVIEW =
      RunEventStream._(3, _omitEnumNames ? '' : 'RUN_EVENT_STREAM_REVIEW');
  static const RunEventStream RUN_EVENT_STREAM_VERIFICATION = RunEventStream._(
      4, _omitEnumNames ? '' : 'RUN_EVENT_STREAM_VERIFICATION');
  static const RunEventStream RUN_EVENT_STREAM_LIFECYCLE =
      RunEventStream._(5, _omitEnumNames ? '' : 'RUN_EVENT_STREAM_LIFECYCLE');
  static const RunEventStream RUN_EVENT_STREAM_CUSTOM =
      RunEventStream._(6, _omitEnumNames ? '' : 'RUN_EVENT_STREAM_CUSTOM');

  static const $core.List<RunEventStream> values = <RunEventStream>[
    RUN_EVENT_STREAM_UNSPECIFIED,
    RUN_EVENT_STREAM_EXECUTION,
    RUN_EVENT_STREAM_RECOVERY,
    RUN_EVENT_STREAM_REVIEW,
    RUN_EVENT_STREAM_VERIFICATION,
    RUN_EVENT_STREAM_LIFECYCLE,
    RUN_EVENT_STREAM_CUSTOM,
  ];

  static final $core.List<RunEventStream?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static RunEventStream? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RunEventStream._(super.value, super.name);
}

class LeaseLifecycleState extends $pb.ProtobufEnum {
  static const LeaseLifecycleState LEASE_LIFECYCLE_STATE_UNSPECIFIED =
      LeaseLifecycleState._(
          0, _omitEnumNames ? '' : 'LEASE_LIFECYCLE_STATE_UNSPECIFIED');
  static const LeaseLifecycleState LEASE_ISSUED =
      LeaseLifecycleState._(1, _omitEnumNames ? '' : 'LEASE_ISSUED');
  static const LeaseLifecycleState LEASE_ACTIVE =
      LeaseLifecycleState._(2, _omitEnumNames ? '' : 'LEASE_ACTIVE');
  static const LeaseLifecycleState LEASE_RELEASED =
      LeaseLifecycleState._(3, _omitEnumNames ? '' : 'LEASE_RELEASED');
  static const LeaseLifecycleState LEASE_EXPIRED =
      LeaseLifecycleState._(4, _omitEnumNames ? '' : 'LEASE_EXPIRED');
  static const LeaseLifecycleState LEASE_CANCELLED =
      LeaseLifecycleState._(5, _omitEnumNames ? '' : 'LEASE_CANCELLED');
  static const LeaseLifecycleState LEASE_REJECTED =
      LeaseLifecycleState._(6, _omitEnumNames ? '' : 'LEASE_REJECTED');

  static const $core.List<LeaseLifecycleState> values = <LeaseLifecycleState>[
    LEASE_LIFECYCLE_STATE_UNSPECIFIED,
    LEASE_ISSUED,
    LEASE_ACTIVE,
    LEASE_RELEASED,
    LEASE_EXPIRED,
    LEASE_CANCELLED,
    LEASE_REJECTED,
  ];

  static final $core.List<LeaseLifecycleState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static LeaseLifecycleState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LeaseLifecycleState._(super.value, super.name);
}

class RunLifecycleState extends $pb.ProtobufEnum {
  static const RunLifecycleState RUN_LIFECYCLE_STATE_UNSPECIFIED =
      RunLifecycleState._(
          0, _omitEnumNames ? '' : 'RUN_LIFECYCLE_STATE_UNSPECIFIED');
  static const RunLifecycleState RUN_PENDING =
      RunLifecycleState._(1, _omitEnumNames ? '' : 'RUN_PENDING');
  static const RunLifecycleState RUN_EXECUTING =
      RunLifecycleState._(2, _omitEnumNames ? '' : 'RUN_EXECUTING');
  static const RunLifecycleState RUN_PAUSED =
      RunLifecycleState._(3, _omitEnumNames ? '' : 'RUN_PAUSED');
  static const RunLifecycleState RUN_CANCELLING =
      RunLifecycleState._(4, _omitEnumNames ? '' : 'RUN_CANCELLING');
  static const RunLifecycleState RUN_CANCELLED =
      RunLifecycleState._(5, _omitEnumNames ? '' : 'RUN_CANCELLED');
  static const RunLifecycleState RUN_FAILED =
      RunLifecycleState._(6, _omitEnumNames ? '' : 'RUN_FAILED');
  static const RunLifecycleState RUN_COMPLETE =
      RunLifecycleState._(7, _omitEnumNames ? '' : 'RUN_COMPLETE');
  static const RunLifecycleState RUN_BLOCKED =
      RunLifecycleState._(8, _omitEnumNames ? '' : 'RUN_BLOCKED');

  static const $core.List<RunLifecycleState> values = <RunLifecycleState>[
    RUN_LIFECYCLE_STATE_UNSPECIFIED,
    RUN_PENDING,
    RUN_EXECUTING,
    RUN_PAUSED,
    RUN_CANCELLING,
    RUN_CANCELLED,
    RUN_FAILED,
    RUN_COMPLETE,
    RUN_BLOCKED,
  ];

  static final $core.List<RunLifecycleState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static RunLifecycleState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RunLifecycleState._(super.value, super.name);
}

class StepLifecycleState extends $pb.ProtobufEnum {
  static const StepLifecycleState STEP_LIFECYCLE_STATE_UNSPECIFIED =
      StepLifecycleState._(
          0, _omitEnumNames ? '' : 'STEP_LIFECYCLE_STATE_UNSPECIFIED');
  static const StepLifecycleState STEP_PENDING =
      StepLifecycleState._(1, _omitEnumNames ? '' : 'STEP_PENDING');
  static const StepLifecycleState STEP_READY =
      StepLifecycleState._(2, _omitEnumNames ? '' : 'STEP_READY');
  static const StepLifecycleState STEP_LEASED =
      StepLifecycleState._(3, _omitEnumNames ? '' : 'STEP_LEASED');
  static const StepLifecycleState STEP_RUNNING =
      StepLifecycleState._(4, _omitEnumNames ? '' : 'STEP_RUNNING');
  static const StepLifecycleState STEP_COMPLETE =
      StepLifecycleState._(5, _omitEnumNames ? '' : 'STEP_COMPLETE');
  static const StepLifecycleState STEP_FAILED =
      StepLifecycleState._(6, _omitEnumNames ? '' : 'STEP_FAILED');
  static const StepLifecycleState STEP_CANCELLED =
      StepLifecycleState._(7, _omitEnumNames ? '' : 'STEP_CANCELLED');
  static const StepLifecycleState STEP_BLOCKED =
      StepLifecycleState._(8, _omitEnumNames ? '' : 'STEP_BLOCKED');

  static const $core.List<StepLifecycleState> values = <StepLifecycleState>[
    STEP_LIFECYCLE_STATE_UNSPECIFIED,
    STEP_PENDING,
    STEP_READY,
    STEP_LEASED,
    STEP_RUNNING,
    STEP_COMPLETE,
    STEP_FAILED,
    STEP_CANCELLED,
    STEP_BLOCKED,
  ];

  static final $core.List<StepLifecycleState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static StepLifecycleState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StepLifecycleState._(super.value, super.name);
}

class LeaseRejectionReason extends $pb.ProtobufEnum {
  static const LeaseRejectionReason LEASE_REJECTION_REASON_UNSPECIFIED =
      LeaseRejectionReason._(
          0, _omitEnumNames ? '' : 'LEASE_REJECTION_REASON_UNSPECIFIED');
  static const LeaseRejectionReason LEASE_REJECTION_STALE_FENCING_TOKEN =
      LeaseRejectionReason._(
          1, _omitEnumNames ? '' : 'LEASE_REJECTION_STALE_FENCING_TOKEN');
  static const LeaseRejectionReason LEASE_REJECTION_EXPIRED =
      LeaseRejectionReason._(
          2, _omitEnumNames ? '' : 'LEASE_REJECTION_EXPIRED');
  static const LeaseRejectionReason LEASE_REJECTION_SESSION_MISMATCH =
      LeaseRejectionReason._(
          3, _omitEnumNames ? '' : 'LEASE_REJECTION_SESSION_MISMATCH');
  static const LeaseRejectionReason LEASE_REJECTION_UNKNOWN_LEASE =
      LeaseRejectionReason._(
          4, _omitEnumNames ? '' : 'LEASE_REJECTION_UNKNOWN_LEASE');
  static const LeaseRejectionReason LEASE_REJECTION_STEP_ALREADY_TERMINAL =
      LeaseRejectionReason._(
          5, _omitEnumNames ? '' : 'LEASE_REJECTION_STEP_ALREADY_TERMINAL');
  static const LeaseRejectionReason LEASE_REJECTION_RUN_NOT_EXECUTABLE =
      LeaseRejectionReason._(
          6, _omitEnumNames ? '' : 'LEASE_REJECTION_RUN_NOT_EXECUTABLE');
  static const LeaseRejectionReason LEASE_REJECTION_DEPENDENCY_BLOCKED =
      LeaseRejectionReason._(
          7, _omitEnumNames ? '' : 'LEASE_REJECTION_DEPENDENCY_BLOCKED');
  static const LeaseRejectionReason LEASE_REJECTION_LEASE_SUPERSEDED =
      LeaseRejectionReason._(
          8, _omitEnumNames ? '' : 'LEASE_REJECTION_LEASE_SUPERSEDED');

  static const $core.List<LeaseRejectionReason> values = <LeaseRejectionReason>[
    LEASE_REJECTION_REASON_UNSPECIFIED,
    LEASE_REJECTION_STALE_FENCING_TOKEN,
    LEASE_REJECTION_EXPIRED,
    LEASE_REJECTION_SESSION_MISMATCH,
    LEASE_REJECTION_UNKNOWN_LEASE,
    LEASE_REJECTION_STEP_ALREADY_TERMINAL,
    LEASE_REJECTION_RUN_NOT_EXECUTABLE,
    LEASE_REJECTION_DEPENDENCY_BLOCKED,
    LEASE_REJECTION_LEASE_SUPERSEDED,
  ];

  static final $core.List<LeaseRejectionReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static LeaseRejectionReason? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LeaseRejectionReason._(super.value, super.name);
}

class RecoveryEventKind extends $pb.ProtobufEnum {
  static const RecoveryEventKind RECOVERY_EVENT_KIND_UNSPECIFIED =
      RecoveryEventKind._(
          0, _omitEnumNames ? '' : 'RECOVERY_EVENT_KIND_UNSPECIFIED');
  static const RecoveryEventKind RECOVERY_EVENT_ORCHESTRATOR_STARTED =
      RecoveryEventKind._(
          1, _omitEnumNames ? '' : 'RECOVERY_EVENT_ORCHESTRATOR_STARTED');
  static const RecoveryEventKind RECOVERY_EVENT_STATE_RELOADED =
      RecoveryEventKind._(
          2, _omitEnumNames ? '' : 'RECOVERY_EVENT_STATE_RELOADED');
  static const RecoveryEventKind RECOVERY_EVENT_LEASE_RESTORED =
      RecoveryEventKind._(
          3, _omitEnumNames ? '' : 'RECOVERY_EVENT_LEASE_RESTORED');
  static const RecoveryEventKind RECOVERY_EVENT_LEASE_REJECTED =
      RecoveryEventKind._(
          4, _omitEnumNames ? '' : 'RECOVERY_EVENT_LEASE_REJECTED');
  static const RecoveryEventKind RECOVERY_EVENT_STEP_REQUEUED =
      RecoveryEventKind._(
          5, _omitEnumNames ? '' : 'RECOVERY_EVENT_STEP_REQUEUED');
  static const RecoveryEventKind RECOVERY_EVENT_STEP_BLOCKED =
      RecoveryEventKind._(
          6, _omitEnumNames ? '' : 'RECOVERY_EVENT_STEP_BLOCKED');
  static const RecoveryEventKind RECOVERY_EVENT_RUN_RECOVERED =
      RecoveryEventKind._(
          7, _omitEnumNames ? '' : 'RECOVERY_EVENT_RUN_RECOVERED');
  static const RecoveryEventKind RECOVERY_EVENT_CANCELLATION_REQUESTED =
      RecoveryEventKind._(
          8, _omitEnumNames ? '' : 'RECOVERY_EVENT_CANCELLATION_REQUESTED');
  static const RecoveryEventKind RECOVERY_EVENT_CANCELLATION_ACKNOWLEDGED =
      RecoveryEventKind._(
          9, _omitEnumNames ? '' : 'RECOVERY_EVENT_CANCELLATION_ACKNOWLEDGED');

  static const $core.List<RecoveryEventKind> values = <RecoveryEventKind>[
    RECOVERY_EVENT_KIND_UNSPECIFIED,
    RECOVERY_EVENT_ORCHESTRATOR_STARTED,
    RECOVERY_EVENT_STATE_RELOADED,
    RECOVERY_EVENT_LEASE_RESTORED,
    RECOVERY_EVENT_LEASE_REJECTED,
    RECOVERY_EVENT_STEP_REQUEUED,
    RECOVERY_EVENT_STEP_BLOCKED,
    RECOVERY_EVENT_RUN_RECOVERED,
    RECOVERY_EVENT_CANCELLATION_REQUESTED,
    RECOVERY_EVENT_CANCELLATION_ACKNOWLEDGED,
  ];

  static final $core.List<RecoveryEventKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static RecoveryEventKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RecoveryEventKind._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
