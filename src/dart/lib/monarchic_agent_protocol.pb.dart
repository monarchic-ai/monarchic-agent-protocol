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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $0;

import 'monarchic_agent_protocol.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'monarchic_agent_protocol.pbenum.dart';

class DatasetRef extends $pb.GeneratedMessage {
  factory DatasetRef({
    $core.String? datasetId,
    $core.String? uri,
    $core.String? sha256,
    $core.String? format,
    $core.String? split,
    $fixnum.Int64? sizeBytes,
    $core.String? description,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (datasetId != null) result.datasetId = datasetId;
    if (uri != null) result.uri = uri;
    if (sha256 != null) result.sha256 = sha256;
    if (format != null) result.format = format;
    if (split != null) result.split = split;
    if (sizeBytes != null) result.sizeBytes = sizeBytes;
    if (description != null) result.description = description;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  DatasetRef._();

  factory DatasetRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DatasetRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DatasetRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'datasetId')
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..aOS(3, _omitFieldNames ? '' : 'sha256')
    ..aOS(4, _omitFieldNames ? '' : 'format')
    ..aOS(5, _omitFieldNames ? '' : 'split')
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'sizeBytes', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DatasetRef clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DatasetRef copyWith(void Function(DatasetRef) updates) =>
      super.copyWith((message) => updates(message as DatasetRef)) as DatasetRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DatasetRef create() => DatasetRef._();
  @$core.override
  DatasetRef createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DatasetRef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DatasetRef>(create);
  static DatasetRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get datasetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set datasetId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDatasetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatasetId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sha256 => $_getSZ(2);
  @$pb.TagNumber(3)
  set sha256($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSha256() => $_has(2);
  @$pb.TagNumber(3)
  void clearSha256() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get format => $_getSZ(3);
  @$pb.TagNumber(4)
  set format($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFormat() => $_has(3);
  @$pb.TagNumber(4)
  void clearFormat() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get split => $_getSZ(4);
  @$pb.TagNumber(5)
  set split($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSplit() => $_has(4);
  @$pb.TagNumber(5)
  void clearSplit() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get sizeBytes => $_getI64(5);
  @$pb.TagNumber(6)
  set sizeBytes($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSizeBytes() => $_has(5);
  @$pb.TagNumber(6)
  void clearSizeBytes() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => $_clearField(7);

  @$pb.TagNumber(8)
  $0.Struct get extensions => $_getN(7);
  @$pb.TagNumber(8)
  set extensions($0.Struct value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasExtensions() => $_has(7);
  @$pb.TagNumber(8)
  void clearExtensions() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Struct ensureExtensions() => $_ensure(7);
}

class AcceptanceCriteria extends $pb.GeneratedMessage {
  factory AcceptanceCriteria({
    $core.String? metric,
    $core.String? direction,
    $core.double? threshold,
    $core.double? minEffectSize,
    $core.double? maxVariance,
    $core.double? confidenceLevel,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (metric != null) result.metric = metric;
    if (direction != null) result.direction = direction;
    if (threshold != null) result.threshold = threshold;
    if (minEffectSize != null) result.minEffectSize = minEffectSize;
    if (maxVariance != null) result.maxVariance = maxVariance;
    if (confidenceLevel != null) result.confidenceLevel = confidenceLevel;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  AcceptanceCriteria._();

  factory AcceptanceCriteria.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AcceptanceCriteria.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AcceptanceCriteria',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'metric')
    ..aOS(2, _omitFieldNames ? '' : 'direction')
    ..aD(3, _omitFieldNames ? '' : 'threshold')
    ..aD(4, _omitFieldNames ? '' : 'minEffectSize')
    ..aD(5, _omitFieldNames ? '' : 'maxVariance')
    ..aD(6, _omitFieldNames ? '' : 'confidenceLevel')
    ..aOM<$0.Struct>(7, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AcceptanceCriteria clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AcceptanceCriteria copyWith(void Function(AcceptanceCriteria) updates) =>
      super.copyWith((message) => updates(message as AcceptanceCriteria))
          as AcceptanceCriteria;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcceptanceCriteria create() => AcceptanceCriteria._();
  @$core.override
  AcceptanceCriteria createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AcceptanceCriteria getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AcceptanceCriteria>(create);
  static AcceptanceCriteria? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get metric => $_getSZ(0);
  @$pb.TagNumber(1)
  set metric($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMetric() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetric() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get direction => $_getSZ(1);
  @$pb.TagNumber(2)
  set direction($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get threshold => $_getN(2);
  @$pb.TagNumber(3)
  set threshold($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasThreshold() => $_has(2);
  @$pb.TagNumber(3)
  void clearThreshold() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get minEffectSize => $_getN(3);
  @$pb.TagNumber(4)
  set minEffectSize($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMinEffectSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinEffectSize() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get maxVariance => $_getN(4);
  @$pb.TagNumber(5)
  set maxVariance($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxVariance() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxVariance() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get confidenceLevel => $_getN(5);
  @$pb.TagNumber(6)
  set confidenceLevel($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasConfidenceLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfidenceLevel() => $_clearField(6);

  @$pb.TagNumber(7)
  $0.Struct get extensions => $_getN(6);
  @$pb.TagNumber(7)
  set extensions($0.Struct value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasExtensions() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtensions() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Struct ensureExtensions() => $_ensure(6);
}

class ExperimentSpec extends $pb.GeneratedMessage {
  factory ExperimentSpec({
    $core.String? experimentId,
    $core.String? objective,
    $core.String? hypothesis,
    $core.String? modelFamily,
    $core.Iterable<$fixnum.Int64>? seeds,
    $core.Iterable<DatasetRef>? datasetRefs,
    AcceptanceCriteria? acceptance,
    $0.Struct? constraints,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (experimentId != null) result.experimentId = experimentId;
    if (objective != null) result.objective = objective;
    if (hypothesis != null) result.hypothesis = hypothesis;
    if (modelFamily != null) result.modelFamily = modelFamily;
    if (seeds != null) result.seeds.addAll(seeds);
    if (datasetRefs != null) result.datasetRefs.addAll(datasetRefs);
    if (acceptance != null) result.acceptance = acceptance;
    if (constraints != null) result.constraints = constraints;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ExperimentSpec._();

  factory ExperimentSpec.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExperimentSpec.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExperimentSpec',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'experimentId')
    ..aOS(2, _omitFieldNames ? '' : 'objective')
    ..aOS(3, _omitFieldNames ? '' : 'hypothesis')
    ..aOS(4, _omitFieldNames ? '' : 'modelFamily')
    ..p<$fixnum.Int64>(5, _omitFieldNames ? '' : 'seeds', $pb.PbFieldType.K6)
    ..pPM<DatasetRef>(6, _omitFieldNames ? '' : 'datasetRefs',
        subBuilder: DatasetRef.create)
    ..aOM<AcceptanceCriteria>(7, _omitFieldNames ? '' : 'acceptance',
        subBuilder: AcceptanceCriteria.create)
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'constraints',
        subBuilder: $0.Struct.create)
    ..aOM<$0.Struct>(9, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExperimentSpec clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExperimentSpec copyWith(void Function(ExperimentSpec) updates) =>
      super.copyWith((message) => updates(message as ExperimentSpec))
          as ExperimentSpec;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExperimentSpec create() => ExperimentSpec._();
  @$core.override
  ExperimentSpec createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExperimentSpec getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExperimentSpec>(create);
  static ExperimentSpec? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get experimentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set experimentId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExperimentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearExperimentId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get objective => $_getSZ(1);
  @$pb.TagNumber(2)
  set objective($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasObjective() => $_has(1);
  @$pb.TagNumber(2)
  void clearObjective() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get hypothesis => $_getSZ(2);
  @$pb.TagNumber(3)
  set hypothesis($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHypothesis() => $_has(2);
  @$pb.TagNumber(3)
  void clearHypothesis() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get modelFamily => $_getSZ(3);
  @$pb.TagNumber(4)
  set modelFamily($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasModelFamily() => $_has(3);
  @$pb.TagNumber(4)
  void clearModelFamily() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$fixnum.Int64> get seeds => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<DatasetRef> get datasetRefs => $_getList(5);

  @$pb.TagNumber(7)
  AcceptanceCriteria get acceptance => $_getN(6);
  @$pb.TagNumber(7)
  set acceptance(AcceptanceCriteria value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAcceptance() => $_has(6);
  @$pb.TagNumber(7)
  void clearAcceptance() => $_clearField(7);
  @$pb.TagNumber(7)
  AcceptanceCriteria ensureAcceptance() => $_ensure(6);

  @$pb.TagNumber(8)
  $0.Struct get constraints => $_getN(7);
  @$pb.TagNumber(8)
  set constraints($0.Struct value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasConstraints() => $_has(7);
  @$pb.TagNumber(8)
  void clearConstraints() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Struct ensureConstraints() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.Struct get extensions => $_getN(8);
  @$pb.TagNumber(9)
  set extensions($0.Struct value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasExtensions() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtensions() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.Struct ensureExtensions() => $_ensure(8);
}

class DeliveryContract extends $pb.GeneratedMessage {
  factory DeliveryContract({
    $core.String? objective,
    $core.Iterable<$core.String>? definitionOfDone,
    $core.Iterable<$core.String>? requiredChecks,
    $core.String? riskTier,
    $core.int? maxCycleMinutes,
    $core.int? maxAgentTurns,
    $core.String? prStrategy,
    $core.String? reviewPolicy,
    $core.String? rollbackStrategy,
    $core.String? notes,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (objective != null) result.objective = objective;
    if (definitionOfDone != null)
      result.definitionOfDone.addAll(definitionOfDone);
    if (requiredChecks != null) result.requiredChecks.addAll(requiredChecks);
    if (riskTier != null) result.riskTier = riskTier;
    if (maxCycleMinutes != null) result.maxCycleMinutes = maxCycleMinutes;
    if (maxAgentTurns != null) result.maxAgentTurns = maxAgentTurns;
    if (prStrategy != null) result.prStrategy = prStrategy;
    if (reviewPolicy != null) result.reviewPolicy = reviewPolicy;
    if (rollbackStrategy != null) result.rollbackStrategy = rollbackStrategy;
    if (notes != null) result.notes = notes;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  DeliveryContract._();

  factory DeliveryContract.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeliveryContract.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeliveryContract',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'objective')
    ..pPS(2, _omitFieldNames ? '' : 'definitionOfDone')
    ..pPS(3, _omitFieldNames ? '' : 'requiredChecks')
    ..aOS(4, _omitFieldNames ? '' : 'riskTier')
    ..aI(5, _omitFieldNames ? '' : 'maxCycleMinutes',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'maxAgentTurns',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'prStrategy')
    ..aOS(8, _omitFieldNames ? '' : 'reviewPolicy')
    ..aOS(9, _omitFieldNames ? '' : 'rollbackStrategy')
    ..aOS(10, _omitFieldNames ? '' : 'notes')
    ..aOM<$0.Struct>(11, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeliveryContract clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeliveryContract copyWith(void Function(DeliveryContract) updates) =>
      super.copyWith((message) => updates(message as DeliveryContract))
          as DeliveryContract;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeliveryContract create() => DeliveryContract._();
  @$core.override
  DeliveryContract createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeliveryContract getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeliveryContract>(create);
  static DeliveryContract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get objective => $_getSZ(0);
  @$pb.TagNumber(1)
  set objective($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasObjective() => $_has(0);
  @$pb.TagNumber(1)
  void clearObjective() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get definitionOfDone => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get requiredChecks => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get riskTier => $_getSZ(3);
  @$pb.TagNumber(4)
  set riskTier($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRiskTier() => $_has(3);
  @$pb.TagNumber(4)
  void clearRiskTier() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get maxCycleMinutes => $_getIZ(4);
  @$pb.TagNumber(5)
  set maxCycleMinutes($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxCycleMinutes() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxCycleMinutes() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get maxAgentTurns => $_getIZ(5);
  @$pb.TagNumber(6)
  set maxAgentTurns($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMaxAgentTurns() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxAgentTurns() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get prStrategy => $_getSZ(6);
  @$pb.TagNumber(7)
  set prStrategy($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPrStrategy() => $_has(6);
  @$pb.TagNumber(7)
  void clearPrStrategy() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get reviewPolicy => $_getSZ(7);
  @$pb.TagNumber(8)
  set reviewPolicy($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasReviewPolicy() => $_has(7);
  @$pb.TagNumber(8)
  void clearReviewPolicy() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get rollbackStrategy => $_getSZ(8);
  @$pb.TagNumber(9)
  set rollbackStrategy($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasRollbackStrategy() => $_has(8);
  @$pb.TagNumber(9)
  void clearRollbackStrategy() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get notes => $_getSZ(9);
  @$pb.TagNumber(10)
  set notes($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasNotes() => $_has(9);
  @$pb.TagNumber(10)
  void clearNotes() => $_clearField(10);

  @$pb.TagNumber(11)
  $0.Struct get extensions => $_getN(10);
  @$pb.TagNumber(11)
  set extensions($0.Struct value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasExtensions() => $_has(10);
  @$pb.TagNumber(11)
  void clearExtensions() => $_clearField(11);
  @$pb.TagNumber(11)
  $0.Struct ensureExtensions() => $_ensure(10);
}

class ObjectiveSpec extends $pb.GeneratedMessage {
  factory ObjectiveSpec({
    $core.String? metricKey,
    $core.String? direction,
    $core.double? target,
    $core.double? minDelta,
    $core.double? tolerance,
    $core.String? reportFile,
    $core.String? reportTaskId,
    $core.double? weight,
    $core.String? description,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (metricKey != null) result.metricKey = metricKey;
    if (direction != null) result.direction = direction;
    if (target != null) result.target = target;
    if (minDelta != null) result.minDelta = minDelta;
    if (tolerance != null) result.tolerance = tolerance;
    if (reportFile != null) result.reportFile = reportFile;
    if (reportTaskId != null) result.reportTaskId = reportTaskId;
    if (weight != null) result.weight = weight;
    if (description != null) result.description = description;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ObjectiveSpec._();

  factory ObjectiveSpec.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ObjectiveSpec.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ObjectiveSpec',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'metricKey')
    ..aOS(2, _omitFieldNames ? '' : 'direction')
    ..aD(3, _omitFieldNames ? '' : 'target')
    ..aD(4, _omitFieldNames ? '' : 'minDelta')
    ..aD(5, _omitFieldNames ? '' : 'tolerance')
    ..aOS(6, _omitFieldNames ? '' : 'reportFile')
    ..aOS(7, _omitFieldNames ? '' : 'reportTaskId')
    ..aD(8, _omitFieldNames ? '' : 'weight')
    ..aOS(9, _omitFieldNames ? '' : 'description')
    ..aOM<$0.Struct>(10, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObjectiveSpec clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObjectiveSpec copyWith(void Function(ObjectiveSpec) updates) =>
      super.copyWith((message) => updates(message as ObjectiveSpec))
          as ObjectiveSpec;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectiveSpec create() => ObjectiveSpec._();
  @$core.override
  ObjectiveSpec createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ObjectiveSpec getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ObjectiveSpec>(create);
  static ObjectiveSpec? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get metricKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set metricKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMetricKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetricKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get direction => $_getSZ(1);
  @$pb.TagNumber(2)
  set direction($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get target => $_getN(2);
  @$pb.TagNumber(3)
  set target($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearTarget() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get minDelta => $_getN(3);
  @$pb.TagNumber(4)
  set minDelta($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMinDelta() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinDelta() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get tolerance => $_getN(4);
  @$pb.TagNumber(5)
  set tolerance($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTolerance() => $_has(4);
  @$pb.TagNumber(5)
  void clearTolerance() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get reportFile => $_getSZ(5);
  @$pb.TagNumber(6)
  set reportFile($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasReportFile() => $_has(5);
  @$pb.TagNumber(6)
  void clearReportFile() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get reportTaskId => $_getSZ(6);
  @$pb.TagNumber(7)
  set reportTaskId($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasReportTaskId() => $_has(6);
  @$pb.TagNumber(7)
  void clearReportTaskId() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get weight => $_getN(7);
  @$pb.TagNumber(8)
  set weight($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWeight() => $_has(7);
  @$pb.TagNumber(8)
  void clearWeight() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get description => $_getSZ(8);
  @$pb.TagNumber(9)
  set description($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasDescription() => $_has(8);
  @$pb.TagNumber(9)
  void clearDescription() => $_clearField(9);

  @$pb.TagNumber(10)
  $0.Struct get extensions => $_getN(9);
  @$pb.TagNumber(10)
  set extensions($0.Struct value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasExtensions() => $_has(9);
  @$pb.TagNumber(10)
  void clearExtensions() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.Struct ensureExtensions() => $_ensure(9);
}

class EvalResult extends $pb.GeneratedMessage {
  factory EvalResult({
    $core.String? metric,
    $core.double? value,
    $core.double? lowerCi,
    $core.double? upperCi,
    $core.double? variance,
    $fixnum.Int64? seed,
    $core.bool? passed,
    $core.String? notes,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (metric != null) result.metric = metric;
    if (value != null) result.value = value;
    if (lowerCi != null) result.lowerCi = lowerCi;
    if (upperCi != null) result.upperCi = upperCi;
    if (variance != null) result.variance = variance;
    if (seed != null) result.seed = seed;
    if (passed != null) result.passed = passed;
    if (notes != null) result.notes = notes;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  EvalResult._();

  factory EvalResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EvalResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EvalResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'metric')
    ..aD(2, _omitFieldNames ? '' : 'value')
    ..aD(3, _omitFieldNames ? '' : 'lowerCi')
    ..aD(4, _omitFieldNames ? '' : 'upperCi')
    ..aD(5, _omitFieldNames ? '' : 'variance')
    ..aInt64(6, _omitFieldNames ? '' : 'seed')
    ..aOB(7, _omitFieldNames ? '' : 'passed')
    ..aOS(8, _omitFieldNames ? '' : 'notes')
    ..aOM<$0.Struct>(9, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EvalResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EvalResult copyWith(void Function(EvalResult) updates) =>
      super.copyWith((message) => updates(message as EvalResult)) as EvalResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvalResult create() => EvalResult._();
  @$core.override
  EvalResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EvalResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EvalResult>(create);
  static EvalResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get metric => $_getSZ(0);
  @$pb.TagNumber(1)
  set metric($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMetric() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetric() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get lowerCi => $_getN(2);
  @$pb.TagNumber(3)
  set lowerCi($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLowerCi() => $_has(2);
  @$pb.TagNumber(3)
  void clearLowerCi() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get upperCi => $_getN(3);
  @$pb.TagNumber(4)
  set upperCi($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUpperCi() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpperCi() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get variance => $_getN(4);
  @$pb.TagNumber(5)
  set variance($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVariance() => $_has(4);
  @$pb.TagNumber(5)
  void clearVariance() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get seed => $_getI64(5);
  @$pb.TagNumber(6)
  set seed($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSeed() => $_has(5);
  @$pb.TagNumber(6)
  void clearSeed() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get passed => $_getBF(6);
  @$pb.TagNumber(7)
  set passed($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPassed() => $_has(6);
  @$pb.TagNumber(7)
  void clearPassed() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get notes => $_getSZ(7);
  @$pb.TagNumber(8)
  set notes($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasNotes() => $_has(7);
  @$pb.TagNumber(8)
  void clearNotes() => $_clearField(8);

  @$pb.TagNumber(9)
  $0.Struct get extensions => $_getN(8);
  @$pb.TagNumber(9)
  set extensions($0.Struct value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasExtensions() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtensions() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.Struct ensureExtensions() => $_ensure(8);
}

class Provenance extends $pb.GeneratedMessage {
  factory Provenance({
    $core.String? promptSha256,
    $core.String? codeSha256,
    $core.Iterable<$core.String>? datasetSha256,
    $core.String? runtime,
    $core.String? model,
    $core.String? runner,
    $core.String? orchestrator,
    $core.String? taskSpecSha256,
    $core.String? pipelineSha256,
    $core.String? commandSha256,
    $core.String? createdAt,
    $core.String? sourceTaskId,
    $core.Iterable<DatasetRef>? datasetRefs,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (promptSha256 != null) result.promptSha256 = promptSha256;
    if (codeSha256 != null) result.codeSha256 = codeSha256;
    if (datasetSha256 != null) result.datasetSha256.addAll(datasetSha256);
    if (runtime != null) result.runtime = runtime;
    if (model != null) result.model = model;
    if (runner != null) result.runner = runner;
    if (orchestrator != null) result.orchestrator = orchestrator;
    if (taskSpecSha256 != null) result.taskSpecSha256 = taskSpecSha256;
    if (pipelineSha256 != null) result.pipelineSha256 = pipelineSha256;
    if (commandSha256 != null) result.commandSha256 = commandSha256;
    if (createdAt != null) result.createdAt = createdAt;
    if (sourceTaskId != null) result.sourceTaskId = sourceTaskId;
    if (datasetRefs != null) result.datasetRefs.addAll(datasetRefs);
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  Provenance._();

  factory Provenance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Provenance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Provenance',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'promptSha256')
    ..aOS(2, _omitFieldNames ? '' : 'codeSha256')
    ..pPS(3, _omitFieldNames ? '' : 'datasetSha256')
    ..aOS(4, _omitFieldNames ? '' : 'runtime')
    ..aOS(5, _omitFieldNames ? '' : 'model')
    ..aOS(6, _omitFieldNames ? '' : 'runner')
    ..aOS(7, _omitFieldNames ? '' : 'orchestrator')
    ..aOS(8, _omitFieldNames ? '' : 'taskSpecSha256')
    ..aOS(9, _omitFieldNames ? '' : 'pipelineSha256')
    ..aOS(10, _omitFieldNames ? '' : 'commandSha256')
    ..aOS(11, _omitFieldNames ? '' : 'createdAt')
    ..aOS(12, _omitFieldNames ? '' : 'sourceTaskId')
    ..pPM<DatasetRef>(13, _omitFieldNames ? '' : 'datasetRefs',
        subBuilder: DatasetRef.create)
    ..aOM<$0.Struct>(14, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Provenance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Provenance copyWith(void Function(Provenance) updates) =>
      super.copyWith((message) => updates(message as Provenance)) as Provenance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Provenance create() => Provenance._();
  @$core.override
  Provenance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Provenance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Provenance>(create);
  static Provenance? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get promptSha256 => $_getSZ(0);
  @$pb.TagNumber(1)
  set promptSha256($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPromptSha256() => $_has(0);
  @$pb.TagNumber(1)
  void clearPromptSha256() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get codeSha256 => $_getSZ(1);
  @$pb.TagNumber(2)
  set codeSha256($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCodeSha256() => $_has(1);
  @$pb.TagNumber(2)
  void clearCodeSha256() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get datasetSha256 => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get runtime => $_getSZ(3);
  @$pb.TagNumber(4)
  set runtime($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRuntime() => $_has(3);
  @$pb.TagNumber(4)
  void clearRuntime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get model => $_getSZ(4);
  @$pb.TagNumber(5)
  set model($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasModel() => $_has(4);
  @$pb.TagNumber(5)
  void clearModel() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get runner => $_getSZ(5);
  @$pb.TagNumber(6)
  set runner($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRunner() => $_has(5);
  @$pb.TagNumber(6)
  void clearRunner() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get orchestrator => $_getSZ(6);
  @$pb.TagNumber(7)
  set orchestrator($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasOrchestrator() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrchestrator() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get taskSpecSha256 => $_getSZ(7);
  @$pb.TagNumber(8)
  set taskSpecSha256($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTaskSpecSha256() => $_has(7);
  @$pb.TagNumber(8)
  void clearTaskSpecSha256() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get pipelineSha256 => $_getSZ(8);
  @$pb.TagNumber(9)
  set pipelineSha256($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasPipelineSha256() => $_has(8);
  @$pb.TagNumber(9)
  void clearPipelineSha256() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get commandSha256 => $_getSZ(9);
  @$pb.TagNumber(10)
  set commandSha256($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCommandSha256() => $_has(9);
  @$pb.TagNumber(10)
  void clearCommandSha256() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get createdAt => $_getSZ(10);
  @$pb.TagNumber(11)
  set createdAt($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatedAt() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get sourceTaskId => $_getSZ(11);
  @$pb.TagNumber(12)
  set sourceTaskId($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasSourceTaskId() => $_has(11);
  @$pb.TagNumber(12)
  void clearSourceTaskId() => $_clearField(12);

  @$pb.TagNumber(13)
  $pb.PbList<DatasetRef> get datasetRefs => $_getList(12);

  @$pb.TagNumber(14)
  $0.Struct get extensions => $_getN(13);
  @$pb.TagNumber(14)
  set extensions($0.Struct value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasExtensions() => $_has(13);
  @$pb.TagNumber(14)
  void clearExtensions() => $_clearField(14);
  @$pb.TagNumber(14)
  $0.Struct ensureExtensions() => $_ensure(13);
}

class Task extends $pb.GeneratedMessage {
  factory Task({
    $core.String? version,
    $core.String? taskId,
    AgentRole? role,
    $core.String? goal,
    $0.Struct? inputs,
    $0.Struct? constraints,
    $core.Iterable<$core.String>? gatesRequired,
    RunContext? runContext,
    $0.Struct? extensions,
    ExperimentSpec? experimentSpec,
    DeliveryContract? deliveryContract,
    ObjectiveSpec? objectiveSpec,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (taskId != null) result.taskId = taskId;
    if (role != null) result.role = role;
    if (goal != null) result.goal = goal;
    if (inputs != null) result.inputs = inputs;
    if (constraints != null) result.constraints = constraints;
    if (gatesRequired != null) result.gatesRequired.addAll(gatesRequired);
    if (runContext != null) result.runContext = runContext;
    if (extensions != null) result.extensions = extensions;
    if (experimentSpec != null) result.experimentSpec = experimentSpec;
    if (deliveryContract != null) result.deliveryContract = deliveryContract;
    if (objectiveSpec != null) result.objectiveSpec = objectiveSpec;
    return result;
  }

  Task._();

  factory Task.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Task.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Task',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'taskId')
    ..aE<AgentRole>(3, _omitFieldNames ? '' : 'role',
        enumValues: AgentRole.values)
    ..aOS(4, _omitFieldNames ? '' : 'goal')
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'inputs',
        subBuilder: $0.Struct.create)
    ..aOM<$0.Struct>(6, _omitFieldNames ? '' : 'constraints',
        subBuilder: $0.Struct.create)
    ..pPS(7, _omitFieldNames ? '' : 'gatesRequired')
    ..aOM<RunContext>(8, _omitFieldNames ? '' : 'runContext',
        subBuilder: RunContext.create)
    ..aOM<$0.Struct>(9, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..aOM<ExperimentSpec>(10, _omitFieldNames ? '' : 'experimentSpec',
        subBuilder: ExperimentSpec.create)
    ..aOM<DeliveryContract>(11, _omitFieldNames ? '' : 'deliveryContract',
        subBuilder: DeliveryContract.create)
    ..aOM<ObjectiveSpec>(12, _omitFieldNames ? '' : 'objectiveSpec',
        subBuilder: ObjectiveSpec.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Task clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Task copyWith(void Function(Task) updates) =>
      super.copyWith((message) => updates(message as Task)) as Task;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task create() => Task._();
  @$core.override
  Task createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Task getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task>(create);
  static Task? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskId() => $_clearField(2);

  @$pb.TagNumber(3)
  AgentRole get role => $_getN(2);
  @$pb.TagNumber(3)
  set role(AgentRole value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get goal => $_getSZ(3);
  @$pb.TagNumber(4)
  set goal($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGoal() => $_has(3);
  @$pb.TagNumber(4)
  void clearGoal() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Struct get inputs => $_getN(4);
  @$pb.TagNumber(5)
  set inputs($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasInputs() => $_has(4);
  @$pb.TagNumber(5)
  void clearInputs() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureInputs() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.Struct get constraints => $_getN(5);
  @$pb.TagNumber(6)
  set constraints($0.Struct value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasConstraints() => $_has(5);
  @$pb.TagNumber(6)
  void clearConstraints() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Struct ensureConstraints() => $_ensure(5);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get gatesRequired => $_getList(6);

  @$pb.TagNumber(8)
  RunContext get runContext => $_getN(7);
  @$pb.TagNumber(8)
  set runContext(RunContext value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRunContext() => $_has(7);
  @$pb.TagNumber(8)
  void clearRunContext() => $_clearField(8);
  @$pb.TagNumber(8)
  RunContext ensureRunContext() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.Struct get extensions => $_getN(8);
  @$pb.TagNumber(9)
  set extensions($0.Struct value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasExtensions() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtensions() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.Struct ensureExtensions() => $_ensure(8);

  @$pb.TagNumber(10)
  ExperimentSpec get experimentSpec => $_getN(9);
  @$pb.TagNumber(10)
  set experimentSpec(ExperimentSpec value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasExperimentSpec() => $_has(9);
  @$pb.TagNumber(10)
  void clearExperimentSpec() => $_clearField(10);
  @$pb.TagNumber(10)
  ExperimentSpec ensureExperimentSpec() => $_ensure(9);

  @$pb.TagNumber(11)
  DeliveryContract get deliveryContract => $_getN(10);
  @$pb.TagNumber(11)
  set deliveryContract(DeliveryContract value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasDeliveryContract() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeliveryContract() => $_clearField(11);
  @$pb.TagNumber(11)
  DeliveryContract ensureDeliveryContract() => $_ensure(10);

  @$pb.TagNumber(12)
  ObjectiveSpec get objectiveSpec => $_getN(11);
  @$pb.TagNumber(12)
  set objectiveSpec(ObjectiveSpec value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasObjectiveSpec() => $_has(11);
  @$pb.TagNumber(12)
  void clearObjectiveSpec() => $_clearField(12);
  @$pb.TagNumber(12)
  ObjectiveSpec ensureObjectiveSpec() => $_ensure(11);
}

class Artifact extends $pb.GeneratedMessage {
  factory Artifact({
    $core.String? version,
    $core.String? artifactId,
    $core.String? type,
    $core.String? summary,
    $core.String? path,
    $core.String? taskId,
    $0.Struct? extensions,
    Provenance? provenance,
    $core.Iterable<DatasetRef>? datasetRefs,
    $core.Iterable<EvalResult>? evalResults,
    ExperimentSpec? experimentSpec,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (artifactId != null) result.artifactId = artifactId;
    if (type != null) result.type = type;
    if (summary != null) result.summary = summary;
    if (path != null) result.path = path;
    if (taskId != null) result.taskId = taskId;
    if (extensions != null) result.extensions = extensions;
    if (provenance != null) result.provenance = provenance;
    if (datasetRefs != null) result.datasetRefs.addAll(datasetRefs);
    if (evalResults != null) result.evalResults.addAll(evalResults);
    if (experimentSpec != null) result.experimentSpec = experimentSpec;
    return result;
  }

  Artifact._();

  factory Artifact.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Artifact.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Artifact',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'artifactId')
    ..aOS(3, _omitFieldNames ? '' : 'type')
    ..aOS(4, _omitFieldNames ? '' : 'summary')
    ..aOS(5, _omitFieldNames ? '' : 'path')
    ..aOS(6, _omitFieldNames ? '' : 'taskId')
    ..aOM<$0.Struct>(7, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..aOM<Provenance>(8, _omitFieldNames ? '' : 'provenance',
        subBuilder: Provenance.create)
    ..pPM<DatasetRef>(9, _omitFieldNames ? '' : 'datasetRefs',
        subBuilder: DatasetRef.create)
    ..pPM<EvalResult>(10, _omitFieldNames ? '' : 'evalResults',
        subBuilder: EvalResult.create)
    ..aOM<ExperimentSpec>(11, _omitFieldNames ? '' : 'experimentSpec',
        subBuilder: ExperimentSpec.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Artifact clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Artifact copyWith(void Function(Artifact) updates) =>
      super.copyWith((message) => updates(message as Artifact)) as Artifact;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Artifact create() => Artifact._();
  @$core.override
  Artifact createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Artifact getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Artifact>(create);
  static Artifact? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get artifactId => $_getSZ(1);
  @$pb.TagNumber(2)
  set artifactId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasArtifactId() => $_has(1);
  @$pb.TagNumber(2)
  void clearArtifactId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get summary => $_getSZ(3);
  @$pb.TagNumber(4)
  set summary($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSummary() => $_has(3);
  @$pb.TagNumber(4)
  void clearSummary() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get path => $_getSZ(4);
  @$pb.TagNumber(5)
  set path($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPath() => $_has(4);
  @$pb.TagNumber(5)
  void clearPath() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get taskId => $_getSZ(5);
  @$pb.TagNumber(6)
  set taskId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTaskId() => $_has(5);
  @$pb.TagNumber(6)
  void clearTaskId() => $_clearField(6);

  @$pb.TagNumber(7)
  $0.Struct get extensions => $_getN(6);
  @$pb.TagNumber(7)
  set extensions($0.Struct value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasExtensions() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtensions() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Struct ensureExtensions() => $_ensure(6);

  @$pb.TagNumber(8)
  Provenance get provenance => $_getN(7);
  @$pb.TagNumber(8)
  set provenance(Provenance value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasProvenance() => $_has(7);
  @$pb.TagNumber(8)
  void clearProvenance() => $_clearField(8);
  @$pb.TagNumber(8)
  Provenance ensureProvenance() => $_ensure(7);

  @$pb.TagNumber(9)
  $pb.PbList<DatasetRef> get datasetRefs => $_getList(8);

  @$pb.TagNumber(10)
  $pb.PbList<EvalResult> get evalResults => $_getList(9);

  @$pb.TagNumber(11)
  ExperimentSpec get experimentSpec => $_getN(10);
  @$pb.TagNumber(11)
  set experimentSpec(ExperimentSpec value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasExperimentSpec() => $_has(10);
  @$pb.TagNumber(11)
  void clearExperimentSpec() => $_clearField(11);
  @$pb.TagNumber(11)
  ExperimentSpec ensureExperimentSpec() => $_ensure(10);
}

class Event extends $pb.GeneratedMessage {
  factory Event({
    $core.String? version,
    $core.String? eventType,
    $core.String? timestamp,
    $core.String? taskId,
    $core.String? status,
    $core.String? message,
    $0.Struct? extensions,
    Provenance? provenance,
    $core.Iterable<EvalResult>? evalResults,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (eventType != null) result.eventType = eventType;
    if (timestamp != null) result.timestamp = timestamp;
    if (taskId != null) result.taskId = taskId;
    if (status != null) result.status = status;
    if (message != null) result.message = message;
    if (extensions != null) result.extensions = extensions;
    if (provenance != null) result.provenance = provenance;
    if (evalResults != null) result.evalResults.addAll(evalResults);
    return result;
  }

  Event._();

  factory Event.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Event.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Event',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'eventType')
    ..aOS(3, _omitFieldNames ? '' : 'timestamp')
    ..aOS(4, _omitFieldNames ? '' : 'taskId')
    ..aOS(5, _omitFieldNames ? '' : 'status')
    ..aOS(6, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Struct>(7, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..aOM<Provenance>(8, _omitFieldNames ? '' : 'provenance',
        subBuilder: Provenance.create)
    ..pPM<EvalResult>(9, _omitFieldNames ? '' : 'evalResults',
        subBuilder: EvalResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Event clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Event copyWith(void Function(Event) updates) =>
      super.copyWith((message) => updates(message as Event)) as Event;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  @$core.override
  Event createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get eventType => $_getSZ(1);
  @$pb.TagNumber(2)
  set eventType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEventType() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get timestamp => $_getSZ(2);
  @$pb.TagNumber(3)
  set timestamp($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get taskId => $_getSZ(3);
  @$pb.TagNumber(4)
  set taskId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTaskId() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get message => $_getSZ(5);
  @$pb.TagNumber(6)
  set message($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessage() => $_clearField(6);

  @$pb.TagNumber(7)
  $0.Struct get extensions => $_getN(6);
  @$pb.TagNumber(7)
  set extensions($0.Struct value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasExtensions() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtensions() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Struct ensureExtensions() => $_ensure(6);

  @$pb.TagNumber(8)
  Provenance get provenance => $_getN(7);
  @$pb.TagNumber(8)
  set provenance(Provenance value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasProvenance() => $_has(7);
  @$pb.TagNumber(8)
  void clearProvenance() => $_clearField(8);
  @$pb.TagNumber(8)
  Provenance ensureProvenance() => $_ensure(7);

  @$pb.TagNumber(9)
  $pb.PbList<EvalResult> get evalResults => $_getList(8);
}

class GateResult extends $pb.GeneratedMessage {
  factory GateResult({
    $core.String? version,
    $core.String? gate,
    $core.String? status,
    $core.String? reason,
    $0.Struct? evidence,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (gate != null) result.gate = gate;
    if (status != null) result.status = status;
    if (reason != null) result.reason = reason;
    if (evidence != null) result.evidence = evidence;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  GateResult._();

  factory GateResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GateResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GateResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'gate')
    ..aOS(3, _omitFieldNames ? '' : 'status')
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'evidence',
        subBuilder: $0.Struct.create)
    ..aOM<$0.Struct>(6, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GateResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GateResult copyWith(void Function(GateResult) updates) =>
      super.copyWith((message) => updates(message as GateResult)) as GateResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GateResult create() => GateResult._();
  @$core.override
  GateResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GateResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GateResult>(create);
  static GateResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get gate => $_getSZ(1);
  @$pb.TagNumber(2)
  set gate($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGate() => $_has(1);
  @$pb.TagNumber(2)
  void clearGate() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get status => $_getSZ(2);
  @$pb.TagNumber(3)
  set status($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Struct get evidence => $_getN(4);
  @$pb.TagNumber(5)
  set evidence($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasEvidence() => $_has(4);
  @$pb.TagNumber(5)
  void clearEvidence() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureEvidence() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.Struct get extensions => $_getN(5);
  @$pb.TagNumber(6)
  set extensions($0.Struct value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasExtensions() => $_has(5);
  @$pb.TagNumber(6)
  void clearExtensions() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Struct ensureExtensions() => $_ensure(5);
}

class RunContext extends $pb.GeneratedMessage {
  factory RunContext({
    $core.String? version,
    $core.String? repo,
    $core.String? worktree,
    $core.String? image,
    $core.String? runner,
    $core.Iterable<$core.String>? labels,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (repo != null) result.repo = repo;
    if (worktree != null) result.worktree = worktree;
    if (image != null) result.image = image;
    if (runner != null) result.runner = runner;
    if (labels != null) result.labels.addAll(labels);
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  RunContext._();

  factory RunContext.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunContext.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunContext',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'worktree')
    ..aOS(4, _omitFieldNames ? '' : 'image')
    ..aOS(5, _omitFieldNames ? '' : 'runner')
    ..pPS(6, _omitFieldNames ? '' : 'labels')
    ..aOM<$0.Struct>(7, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunContext clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunContext copyWith(void Function(RunContext) updates) =>
      super.copyWith((message) => updates(message as RunContext)) as RunContext;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunContext create() => RunContext._();
  @$core.override
  RunContext createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunContext>(create);
  static RunContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get worktree => $_getSZ(2);
  @$pb.TagNumber(3)
  set worktree($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWorktree() => $_has(2);
  @$pb.TagNumber(3)
  void clearWorktree() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get image => $_getSZ(3);
  @$pb.TagNumber(4)
  set image($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearImage() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get runner => $_getSZ(4);
  @$pb.TagNumber(5)
  set runner($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRunner() => $_has(4);
  @$pb.TagNumber(5)
  void clearRunner() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get labels => $_getList(5);

  @$pb.TagNumber(7)
  $0.Struct get extensions => $_getN(6);
  @$pb.TagNumber(7)
  set extensions($0.Struct value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasExtensions() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtensions() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Struct ensureExtensions() => $_ensure(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
