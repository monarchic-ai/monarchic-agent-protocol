// This is a generated file - do not edit.
//
// Generated from monarchic_agent_protocol.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
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

class FailureClass extends $pb.GeneratedMessage {
  factory FailureClass({
    $core.String? category,
    $core.String? code,
    $core.bool? retryable,
    $core.String? detail,
    $core.String? scope,
    $core.String? source,
    $core.String? nextAction,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (category != null) result.category = category;
    if (code != null) result.code = code;
    if (retryable != null) result.retryable = retryable;
    if (detail != null) result.detail = detail;
    if (scope != null) result.scope = scope;
    if (source != null) result.source = source;
    if (nextAction != null) result.nextAction = nextAction;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  FailureClass._();

  factory FailureClass.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FailureClass.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FailureClass',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'category')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOB(3, _omitFieldNames ? '' : 'retryable')
    ..aOS(4, _omitFieldNames ? '' : 'detail')
    ..aOS(5, _omitFieldNames ? '' : 'scope')
    ..aOS(6, _omitFieldNames ? '' : 'source')
    ..aOS(7, _omitFieldNames ? '' : 'nextAction')
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FailureClass clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FailureClass copyWith(void Function(FailureClass) updates) =>
      super.copyWith((message) => updates(message as FailureClass))
          as FailureClass;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FailureClass create() => FailureClass._();
  @$core.override
  FailureClass createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FailureClass getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FailureClass>(create);
  static FailureClass? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get category => $_getSZ(0);
  @$pb.TagNumber(1)
  set category($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get retryable => $_getBF(2);
  @$pb.TagNumber(3)
  set retryable($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRetryable() => $_has(2);
  @$pb.TagNumber(3)
  void clearRetryable() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get detail => $_getSZ(3);
  @$pb.TagNumber(4)
  set detail($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDetail() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetail() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get scope => $_getSZ(4);
  @$pb.TagNumber(5)
  set scope($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasScope() => $_has(4);
  @$pb.TagNumber(5)
  void clearScope() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get source => $_getSZ(5);
  @$pb.TagNumber(6)
  set source($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSource() => $_has(5);
  @$pb.TagNumber(6)
  void clearSource() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get nextAction => $_getSZ(6);
  @$pb.TagNumber(7)
  set nextAction($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNextAction() => $_has(6);
  @$pb.TagNumber(7)
  void clearNextAction() => $_clearField(7);

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

class RoleProvenance extends $pb.GeneratedMessage {
  factory RoleProvenance({
    $core.String? roleName,
    $core.String? templateHash,
    $core.String? renderHash,
  }) {
    final result = create();
    if (roleName != null) result.roleName = roleName;
    if (templateHash != null) result.templateHash = templateHash;
    if (renderHash != null) result.renderHash = renderHash;
    return result;
  }

  RoleProvenance._();

  factory RoleProvenance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RoleProvenance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RoleProvenance',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'roleName')
    ..aOS(2, _omitFieldNames ? '' : 'templateHash')
    ..aOS(3, _omitFieldNames ? '' : 'renderHash')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoleProvenance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoleProvenance copyWith(void Function(RoleProvenance) updates) =>
      super.copyWith((message) => updates(message as RoleProvenance))
          as RoleProvenance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoleProvenance create() => RoleProvenance._();
  @$core.override
  RoleProvenance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RoleProvenance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RoleProvenance>(create);
  static RoleProvenance? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roleName => $_getSZ(0);
  @$pb.TagNumber(1)
  set roleName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoleName() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoleName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get templateHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set templateHash($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTemplateHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemplateHash() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get renderHash => $_getSZ(2);
  @$pb.TagNumber(3)
  set renderHash($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRenderHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearRenderHash() => $_clearField(3);
}

class PlanProvenance extends $pb.GeneratedMessage {
  factory PlanProvenance({
    $core.String? generatedBy,
    $core.String? policyProfile,
    $fixnum.Int64? generatedAtMs,
    RoleProvenance? role,
  }) {
    final result = create();
    if (generatedBy != null) result.generatedBy = generatedBy;
    if (policyProfile != null) result.policyProfile = policyProfile;
    if (generatedAtMs != null) result.generatedAtMs = generatedAtMs;
    if (role != null) result.role = role;
    return result;
  }

  PlanProvenance._();

  factory PlanProvenance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PlanProvenance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PlanProvenance',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'generatedBy')
    ..aOS(2, _omitFieldNames ? '' : 'policyProfile')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'generatedAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RoleProvenance>(4, _omitFieldNames ? '' : 'role',
        subBuilder: RoleProvenance.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlanProvenance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlanProvenance copyWith(void Function(PlanProvenance) updates) =>
      super.copyWith((message) => updates(message as PlanProvenance))
          as PlanProvenance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlanProvenance create() => PlanProvenance._();
  @$core.override
  PlanProvenance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PlanProvenance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PlanProvenance>(create);
  static PlanProvenance? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get generatedBy => $_getSZ(0);
  @$pb.TagNumber(1)
  set generatedBy($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGeneratedBy() => $_has(0);
  @$pb.TagNumber(1)
  void clearGeneratedBy() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get policyProfile => $_getSZ(1);
  @$pb.TagNumber(2)
  set policyProfile($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPolicyProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearPolicyProfile() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get generatedAtMs => $_getI64(2);
  @$pb.TagNumber(3)
  set generatedAtMs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGeneratedAtMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearGeneratedAtMs() => $_clearField(3);

  @$pb.TagNumber(4)
  RoleProvenance get role => $_getN(3);
  @$pb.TagNumber(4)
  set role(RoleProvenance value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRole() => $_has(3);
  @$pb.TagNumber(4)
  void clearRole() => $_clearField(4);
  @$pb.TagNumber(4)
  RoleProvenance ensureRole() => $_ensure(3);
}

class FailureDetail extends $pb.GeneratedMessage {
  factory FailureDetail({
    $core.String? class_1,
    $core.String? code,
    $core.String? message,
    $0.Struct? details,
  }) {
    final result = create();
    if (class_1 != null) result.class_1 = class_1;
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    if (details != null) result.details = details;
    return result;
  }

  FailureDetail._();

  factory FailureDetail.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FailureDetail.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FailureDetail',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'class')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Struct>(4, _omitFieldNames ? '' : 'details',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FailureDetail clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FailureDetail copyWith(void Function(FailureDetail) updates) =>
      super.copyWith((message) => updates(message as FailureDetail))
          as FailureDetail;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FailureDetail create() => FailureDetail._();
  @$core.override
  FailureDetail createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FailureDetail getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FailureDetail>(create);
  static FailureDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get class_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set class_1($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClass_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearClass_1() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.Struct get details => $_getN(3);
  @$pb.TagNumber(4)
  set details($0.Struct value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDetails() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetails() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Struct ensureDetails() => $_ensure(3);
}

class PlanStep extends $pb.GeneratedMessage {
  factory PlanStep({
    $core.String? stepId,
    $core.String? description,
    $core.Iterable<$core.String>? dependsOn,
    $0.Struct? taskTemplate,
    FailureDetail? failure,
  }) {
    final result = create();
    if (stepId != null) result.stepId = stepId;
    if (description != null) result.description = description;
    if (dependsOn != null) result.dependsOn.addAll(dependsOn);
    if (taskTemplate != null) result.taskTemplate = taskTemplate;
    if (failure != null) result.failure = failure;
    return result;
  }

  PlanStep._();

  factory PlanStep.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PlanStep.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PlanStep',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stepId')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..pPS(3, _omitFieldNames ? '' : 'dependsOn')
    ..aOM<$0.Struct>(4, _omitFieldNames ? '' : 'taskTemplate',
        subBuilder: $0.Struct.create)
    ..aOM<FailureDetail>(5, _omitFieldNames ? '' : 'failure',
        subBuilder: FailureDetail.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlanStep clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlanStep copyWith(void Function(PlanStep) updates) =>
      super.copyWith((message) => updates(message as PlanStep)) as PlanStep;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlanStep create() => PlanStep._();
  @$core.override
  PlanStep createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PlanStep getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlanStep>(create);
  static PlanStep? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stepId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stepId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStepId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStepId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get dependsOn => $_getList(2);

  @$pb.TagNumber(4)
  $0.Struct get taskTemplate => $_getN(3);
  @$pb.TagNumber(4)
  set taskTemplate($0.Struct value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTaskTemplate() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskTemplate() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Struct ensureTaskTemplate() => $_ensure(3);

  @$pb.TagNumber(5)
  FailureDetail get failure => $_getN(4);
  @$pb.TagNumber(5)
  set failure(FailureDetail value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFailure() => $_has(4);
  @$pb.TagNumber(5)
  void clearFailure() => $_clearField(5);
  @$pb.TagNumber(5)
  FailureDetail ensureFailure() => $_ensure(4);
}

class Plan extends $pb.GeneratedMessage {
  factory Plan({
    $core.String? contractVersion,
    $core.String? planId,
    $core.String? runId,
    $core.String? objective,
    PlanStatus? status,
    $fixnum.Int64? createdAtMs,
    $fixnum.Int64? updatedAtMs,
    PlanProvenance? provenance,
    $core.Iterable<PlanStep>? steps,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (planId != null) result.planId = planId;
    if (runId != null) result.runId = runId;
    if (objective != null) result.objective = objective;
    if (status != null) result.status = status;
    if (createdAtMs != null) result.createdAtMs = createdAtMs;
    if (updatedAtMs != null) result.updatedAtMs = updatedAtMs;
    if (provenance != null) result.provenance = provenance;
    if (steps != null) result.steps.addAll(steps);
    return result;
  }

  Plan._();

  factory Plan.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Plan.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Plan',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'planId')
    ..aOS(3, _omitFieldNames ? '' : 'runId')
    ..aOS(4, _omitFieldNames ? '' : 'objective')
    ..aE<PlanStatus>(5, _omitFieldNames ? '' : 'status',
        enumValues: PlanStatus.values)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'createdAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'updatedAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<PlanProvenance>(8, _omitFieldNames ? '' : 'provenance',
        subBuilder: PlanProvenance.create)
    ..pPM<PlanStep>(9, _omitFieldNames ? '' : 'steps',
        subBuilder: PlanStep.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Plan clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Plan copyWith(void Function(Plan) updates) =>
      super.copyWith((message) => updates(message as Plan)) as Plan;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Plan create() => Plan._();
  @$core.override
  Plan createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Plan getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Plan>(create);
  static Plan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get planId => $_getSZ(1);
  @$pb.TagNumber(2)
  set planId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPlanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlanId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get runId => $_getSZ(2);
  @$pb.TagNumber(3)
  set runId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRunId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRunId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get objective => $_getSZ(3);
  @$pb.TagNumber(4)
  set objective($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasObjective() => $_has(3);
  @$pb.TagNumber(4)
  void clearObjective() => $_clearField(4);

  @$pb.TagNumber(5)
  PlanStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(PlanStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdAtMs => $_getI64(5);
  @$pb.TagNumber(6)
  set createdAtMs($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedAtMs() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAtMs() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updatedAtMs => $_getI64(6);
  @$pb.TagNumber(7)
  set updatedAtMs($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAtMs() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAtMs() => $_clearField(7);

  @$pb.TagNumber(8)
  PlanProvenance get provenance => $_getN(7);
  @$pb.TagNumber(8)
  set provenance(PlanProvenance value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasProvenance() => $_has(7);
  @$pb.TagNumber(8)
  void clearProvenance() => $_clearField(8);
  @$pb.TagNumber(8)
  PlanProvenance ensureProvenance() => $_ensure(7);

  @$pb.TagNumber(9)
  $pb.PbList<PlanStep> get steps => $_getList(8);
}

class ExecutionReceipt extends $pb.GeneratedMessage {
  factory ExecutionReceipt({
    $core.String? contractVersion,
    $core.String? runId,
    $core.String? planId,
    $core.String? planHash,
    $core.Iterable<$core.String>? taskHashes,
    $core.Iterable<$core.String>? artifactHashes,
    $core.String? outcomeHash,
    PlanStatus? status,
    FailureDetail? failure,
    $fixnum.Int64? generatedAtMs,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runId != null) result.runId = runId;
    if (planId != null) result.planId = planId;
    if (planHash != null) result.planHash = planHash;
    if (taskHashes != null) result.taskHashes.addAll(taskHashes);
    if (artifactHashes != null) result.artifactHashes.addAll(artifactHashes);
    if (outcomeHash != null) result.outcomeHash = outcomeHash;
    if (status != null) result.status = status;
    if (failure != null) result.failure = failure;
    if (generatedAtMs != null) result.generatedAtMs = generatedAtMs;
    return result;
  }

  ExecutionReceipt._();

  factory ExecutionReceipt.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecutionReceipt.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecutionReceipt',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'runId')
    ..aOS(3, _omitFieldNames ? '' : 'planId')
    ..aOS(4, _omitFieldNames ? '' : 'planHash')
    ..pPS(5, _omitFieldNames ? '' : 'taskHashes')
    ..pPS(6, _omitFieldNames ? '' : 'artifactHashes')
    ..aOS(7, _omitFieldNames ? '' : 'outcomeHash')
    ..aE<PlanStatus>(8, _omitFieldNames ? '' : 'status',
        enumValues: PlanStatus.values)
    ..aOM<FailureDetail>(9, _omitFieldNames ? '' : 'failure',
        subBuilder: FailureDetail.create)
    ..a<$fixnum.Int64>(
        10, _omitFieldNames ? '' : 'generatedAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecutionReceipt clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecutionReceipt copyWith(void Function(ExecutionReceipt) updates) =>
      super.copyWith((message) => updates(message as ExecutionReceipt))
          as ExecutionReceipt;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecutionReceipt create() => ExecutionReceipt._();
  @$core.override
  ExecutionReceipt createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecutionReceipt getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecutionReceipt>(create);
  static ExecutionReceipt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runId => $_getSZ(1);
  @$pb.TagNumber(2)
  set runId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get planId => $_getSZ(2);
  @$pb.TagNumber(3)
  set planId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPlanId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlanId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get planHash => $_getSZ(3);
  @$pb.TagNumber(4)
  set planHash($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPlanHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlanHash() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get taskHashes => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get artifactHashes => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get outcomeHash => $_getSZ(6);
  @$pb.TagNumber(7)
  set outcomeHash($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasOutcomeHash() => $_has(6);
  @$pb.TagNumber(7)
  void clearOutcomeHash() => $_clearField(7);

  @$pb.TagNumber(8)
  PlanStatus get status => $_getN(7);
  @$pb.TagNumber(8)
  set status(PlanStatus value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  FailureDetail get failure => $_getN(8);
  @$pb.TagNumber(9)
  set failure(FailureDetail value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasFailure() => $_has(8);
  @$pb.TagNumber(9)
  void clearFailure() => $_clearField(9);
  @$pb.TagNumber(9)
  FailureDetail ensureFailure() => $_ensure(8);

  @$pb.TagNumber(10)
  $fixnum.Int64 get generatedAtMs => $_getI64(9);
  @$pb.TagNumber(10)
  set generatedAtMs($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasGeneratedAtMs() => $_has(9);
  @$pb.TagNumber(10)
  void clearGeneratedAtMs() => $_clearField(10);
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
    ..aOM<ObjectiveSpec>(11, _omitFieldNames ? '' : 'objectiveSpec',
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
  ObjectiveSpec get objectiveSpec => $_getN(10);
  @$pb.TagNumber(11)
  set objectiveSpec(ObjectiveSpec value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasObjectiveSpec() => $_has(10);
  @$pb.TagNumber(11)
  void clearObjectiveSpec() => $_clearField(11);
  @$pb.TagNumber(11)
  ObjectiveSpec ensureObjectiveSpec() => $_ensure(10);
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
    FailureClass? failureClass,
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
    if (failureClass != null) result.failureClass = failureClass;
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
    ..aOM<FailureClass>(10, _omitFieldNames ? '' : 'failureClass',
        subBuilder: FailureClass.create)
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

  @$pb.TagNumber(10)
  FailureClass get failureClass => $_getN(9);
  @$pb.TagNumber(10)
  set failureClass(FailureClass value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFailureClass() => $_has(9);
  @$pb.TagNumber(10)
  void clearFailureClass() => $_clearField(10);
  @$pb.TagNumber(10)
  FailureClass ensureFailureClass() => $_ensure(9);
}

class GateResult extends $pb.GeneratedMessage {
  factory GateResult({
    $core.String? version,
    $core.String? gate,
    $core.String? status,
    $core.String? reason,
    $0.Struct? evidence,
    $0.Struct? extensions,
    FailureClass? failureClass,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (gate != null) result.gate = gate;
    if (status != null) result.status = status;
    if (reason != null) result.reason = reason;
    if (evidence != null) result.evidence = evidence;
    if (extensions != null) result.extensions = extensions;
    if (failureClass != null) result.failureClass = failureClass;
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
    ..aOM<FailureClass>(7, _omitFieldNames ? '' : 'failureClass',
        subBuilder: FailureClass.create)
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

  @$pb.TagNumber(7)
  FailureClass get failureClass => $_getN(6);
  @$pb.TagNumber(7)
  set failureClass(FailureClass value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFailureClass() => $_has(6);
  @$pb.TagNumber(7)
  void clearFailureClass() => $_clearField(7);
  @$pb.TagNumber(7)
  FailureClass ensureFailureClass() => $_ensure(6);
}

class RunOutcome extends $pb.GeneratedMessage {
  factory RunOutcome({
    $core.String? version,
    $core.String? taskId,
    $core.String? runId,
    $core.String? objectiveMetric,
    $core.double? objectiveScore,
    OutcomeDecision? objectiveDecision,
    $core.double? estimatedCostUsd,
    $core.double? budgetLimitUsd,
    OutcomeDecision? costDecision,
    $core.String? riskLevel,
    $core.String? riskSummary,
    OutcomeDecision? riskDecision,
    OutcomeDecision? finalDecision,
    $core.String? summary,
    $0.Struct? evidence,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (taskId != null) result.taskId = taskId;
    if (runId != null) result.runId = runId;
    if (objectiveMetric != null) result.objectiveMetric = objectiveMetric;
    if (objectiveScore != null) result.objectiveScore = objectiveScore;
    if (objectiveDecision != null) result.objectiveDecision = objectiveDecision;
    if (estimatedCostUsd != null) result.estimatedCostUsd = estimatedCostUsd;
    if (budgetLimitUsd != null) result.budgetLimitUsd = budgetLimitUsd;
    if (costDecision != null) result.costDecision = costDecision;
    if (riskLevel != null) result.riskLevel = riskLevel;
    if (riskSummary != null) result.riskSummary = riskSummary;
    if (riskDecision != null) result.riskDecision = riskDecision;
    if (finalDecision != null) result.finalDecision = finalDecision;
    if (summary != null) result.summary = summary;
    if (evidence != null) result.evidence = evidence;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  RunOutcome._();

  factory RunOutcome.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunOutcome.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunOutcome',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'taskId')
    ..aOS(3, _omitFieldNames ? '' : 'runId')
    ..aOS(4, _omitFieldNames ? '' : 'objectiveMetric')
    ..aD(5, _omitFieldNames ? '' : 'objectiveScore')
    ..aE<OutcomeDecision>(6, _omitFieldNames ? '' : 'objectiveDecision',
        enumValues: OutcomeDecision.values)
    ..aD(7, _omitFieldNames ? '' : 'estimatedCostUsd')
    ..aD(8, _omitFieldNames ? '' : 'budgetLimitUsd')
    ..aE<OutcomeDecision>(9, _omitFieldNames ? '' : 'costDecision',
        enumValues: OutcomeDecision.values)
    ..aOS(10, _omitFieldNames ? '' : 'riskLevel')
    ..aOS(11, _omitFieldNames ? '' : 'riskSummary')
    ..aE<OutcomeDecision>(12, _omitFieldNames ? '' : 'riskDecision',
        enumValues: OutcomeDecision.values)
    ..aE<OutcomeDecision>(13, _omitFieldNames ? '' : 'finalDecision',
        enumValues: OutcomeDecision.values)
    ..aOS(14, _omitFieldNames ? '' : 'summary')
    ..aOM<$0.Struct>(15, _omitFieldNames ? '' : 'evidence',
        subBuilder: $0.Struct.create)
    ..aOM<$0.Struct>(16, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunOutcome clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunOutcome copyWith(void Function(RunOutcome) updates) =>
      super.copyWith((message) => updates(message as RunOutcome)) as RunOutcome;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunOutcome create() => RunOutcome._();
  @$core.override
  RunOutcome createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunOutcome getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunOutcome>(create);
  static RunOutcome? _defaultInstance;

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
  $core.String get runId => $_getSZ(2);
  @$pb.TagNumber(3)
  set runId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRunId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRunId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get objectiveMetric => $_getSZ(3);
  @$pb.TagNumber(4)
  set objectiveMetric($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasObjectiveMetric() => $_has(3);
  @$pb.TagNumber(4)
  void clearObjectiveMetric() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get objectiveScore => $_getN(4);
  @$pb.TagNumber(5)
  set objectiveScore($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasObjectiveScore() => $_has(4);
  @$pb.TagNumber(5)
  void clearObjectiveScore() => $_clearField(5);

  @$pb.TagNumber(6)
  OutcomeDecision get objectiveDecision => $_getN(5);
  @$pb.TagNumber(6)
  set objectiveDecision(OutcomeDecision value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasObjectiveDecision() => $_has(5);
  @$pb.TagNumber(6)
  void clearObjectiveDecision() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get estimatedCostUsd => $_getN(6);
  @$pb.TagNumber(7)
  set estimatedCostUsd($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasEstimatedCostUsd() => $_has(6);
  @$pb.TagNumber(7)
  void clearEstimatedCostUsd() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get budgetLimitUsd => $_getN(7);
  @$pb.TagNumber(8)
  set budgetLimitUsd($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBudgetLimitUsd() => $_has(7);
  @$pb.TagNumber(8)
  void clearBudgetLimitUsd() => $_clearField(8);

  @$pb.TagNumber(9)
  OutcomeDecision get costDecision => $_getN(8);
  @$pb.TagNumber(9)
  set costDecision(OutcomeDecision value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCostDecision() => $_has(8);
  @$pb.TagNumber(9)
  void clearCostDecision() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get riskLevel => $_getSZ(9);
  @$pb.TagNumber(10)
  set riskLevel($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRiskLevel() => $_has(9);
  @$pb.TagNumber(10)
  void clearRiskLevel() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get riskSummary => $_getSZ(10);
  @$pb.TagNumber(11)
  set riskSummary($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRiskSummary() => $_has(10);
  @$pb.TagNumber(11)
  void clearRiskSummary() => $_clearField(11);

  @$pb.TagNumber(12)
  OutcomeDecision get riskDecision => $_getN(11);
  @$pb.TagNumber(12)
  set riskDecision(OutcomeDecision value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasRiskDecision() => $_has(11);
  @$pb.TagNumber(12)
  void clearRiskDecision() => $_clearField(12);

  @$pb.TagNumber(13)
  OutcomeDecision get finalDecision => $_getN(12);
  @$pb.TagNumber(13)
  set finalDecision(OutcomeDecision value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasFinalDecision() => $_has(12);
  @$pb.TagNumber(13)
  void clearFinalDecision() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get summary => $_getSZ(13);
  @$pb.TagNumber(14)
  set summary($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasSummary() => $_has(13);
  @$pb.TagNumber(14)
  void clearSummary() => $_clearField(14);

  @$pb.TagNumber(15)
  $0.Struct get evidence => $_getN(14);
  @$pb.TagNumber(15)
  set evidence($0.Struct value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasEvidence() => $_has(14);
  @$pb.TagNumber(15)
  void clearEvidence() => $_clearField(15);
  @$pb.TagNumber(15)
  $0.Struct ensureEvidence() => $_ensure(14);

  @$pb.TagNumber(16)
  $0.Struct get extensions => $_getN(15);
  @$pb.TagNumber(16)
  set extensions($0.Struct value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasExtensions() => $_has(15);
  @$pb.TagNumber(16)
  void clearExtensions() => $_clearField(16);
  @$pb.TagNumber(16)
  $0.Struct ensureExtensions() => $_ensure(15);
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

/// RunnerCapabilities declares the stable machine-facing features a runner can
/// advertise when joining the control plane.
class RunnerCapabilities extends $pb.GeneratedMessage {
  factory RunnerCapabilities({
    $core.String? platform,
    $core.String? runtime,
    $core.Iterable<AgentRole>? supportedRoles,
    $core.Iterable<$core.String>? supportedTaskVersions,
    $core.Iterable<$core.String>? labels,
    $core.bool? supportsInteractivePty,
    $core.bool? supportsResume,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (platform != null) result.platform = platform;
    if (runtime != null) result.runtime = runtime;
    if (supportedRoles != null) result.supportedRoles.addAll(supportedRoles);
    if (supportedTaskVersions != null)
      result.supportedTaskVersions.addAll(supportedTaskVersions);
    if (labels != null) result.labels.addAll(labels);
    if (supportsInteractivePty != null)
      result.supportsInteractivePty = supportsInteractivePty;
    if (supportsResume != null) result.supportsResume = supportsResume;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  RunnerCapabilities._();

  factory RunnerCapabilities.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunnerCapabilities.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunnerCapabilities',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'platform')
    ..aOS(2, _omitFieldNames ? '' : 'runtime')
    ..pc<AgentRole>(
        3, _omitFieldNames ? '' : 'supportedRoles', $pb.PbFieldType.KE,
        valueOf: AgentRole.valueOf,
        enumValues: AgentRole.values,
        defaultEnumValue: AgentRole.AGENT_ROLE_UNSPECIFIED)
    ..pPS(4, _omitFieldNames ? '' : 'supportedTaskVersions')
    ..pPS(5, _omitFieldNames ? '' : 'labels')
    ..aOB(6, _omitFieldNames ? '' : 'supportsInteractivePty')
    ..aOB(7, _omitFieldNames ? '' : 'supportsResume')
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunnerCapabilities clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunnerCapabilities copyWith(void Function(RunnerCapabilities) updates) =>
      super.copyWith((message) => updates(message as RunnerCapabilities))
          as RunnerCapabilities;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunnerCapabilities create() => RunnerCapabilities._();
  @$core.override
  RunnerCapabilities createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunnerCapabilities getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunnerCapabilities>(create);
  static RunnerCapabilities? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get platform => $_getSZ(0);
  @$pb.TagNumber(1)
  set platform($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPlatform() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlatform() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runtime => $_getSZ(1);
  @$pb.TagNumber(2)
  set runtime($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRuntime() => $_has(1);
  @$pb.TagNumber(2)
  void clearRuntime() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<AgentRole> get supportedRoles => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get supportedTaskVersions => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get labels => $_getList(4);

  @$pb.TagNumber(6)
  $core.bool get supportsInteractivePty => $_getBF(5);
  @$pb.TagNumber(6)
  set supportsInteractivePty($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSupportsInteractivePty() => $_has(5);
  @$pb.TagNumber(6)
  void clearSupportsInteractivePty() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get supportsResume => $_getBF(6);
  @$pb.TagNumber(7)
  set supportsResume($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSupportsResume() => $_has(6);
  @$pb.TagNumber(7)
  void clearSupportsResume() => $_clearField(7);

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

/// LeaseRef is the canonical identity for a runner-owned execution lease. The
/// fencing_token must change whenever orchestrator ownership changes.
class LeaseRef extends $pb.GeneratedMessage {
  factory LeaseRef({
    $core.String? leaseId,
    $core.String? fencingToken,
    $core.String? runId,
    $core.String? planId,
    $core.String? stepId,
    $core.String? taskId,
  }) {
    final result = create();
    if (leaseId != null) result.leaseId = leaseId;
    if (fencingToken != null) result.fencingToken = fencingToken;
    if (runId != null) result.runId = runId;
    if (planId != null) result.planId = planId;
    if (stepId != null) result.stepId = stepId;
    if (taskId != null) result.taskId = taskId;
    return result;
  }

  LeaseRef._();

  factory LeaseRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LeaseRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'leaseId')
    ..aOS(2, _omitFieldNames ? '' : 'fencingToken')
    ..aOS(3, _omitFieldNames ? '' : 'runId')
    ..aOS(4, _omitFieldNames ? '' : 'planId')
    ..aOS(5, _omitFieldNames ? '' : 'stepId')
    ..aOS(6, _omitFieldNames ? '' : 'taskId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LeaseRef clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LeaseRef copyWith(void Function(LeaseRef) updates) =>
      super.copyWith((message) => updates(message as LeaseRef)) as LeaseRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseRef create() => LeaseRef._();
  @$core.override
  LeaseRef createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LeaseRef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseRef>(create);
  static LeaseRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get leaseId => $_getSZ(0);
  @$pb.TagNumber(1)
  set leaseId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLeaseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeaseId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get fencingToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set fencingToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFencingToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearFencingToken() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get runId => $_getSZ(2);
  @$pb.TagNumber(3)
  set runId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRunId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRunId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get planId => $_getSZ(3);
  @$pb.TagNumber(4)
  set planId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPlanId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlanId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get stepId => $_getSZ(4);
  @$pb.TagNumber(5)
  set stepId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStepId() => $_has(4);
  @$pb.TagNumber(5)
  void clearStepId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get taskId => $_getSZ(5);
  @$pb.TagNumber(6)
  set taskId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTaskId() => $_has(5);
  @$pb.TagNumber(6)
  void clearTaskId() => $_clearField(6);
}

class LeaseStatus extends $pb.GeneratedMessage {
  factory LeaseStatus({
    LeaseRef? lease,
    $core.String? state,
    $fixnum.Int64? updatedAtMs,
    FailureDetail? failure,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (lease != null) result.lease = lease;
    if (state != null) result.state = state;
    if (updatedAtMs != null) result.updatedAtMs = updatedAtMs;
    if (failure != null) result.failure = failure;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  LeaseStatus._();

  factory LeaseStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LeaseStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOM<LeaseRef>(1, _omitFieldNames ? '' : 'lease',
        subBuilder: LeaseRef.create)
    ..aOS(2, _omitFieldNames ? '' : 'state')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'updatedAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<FailureDetail>(4, _omitFieldNames ? '' : 'failure',
        subBuilder: FailureDetail.create)
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LeaseStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LeaseStatus copyWith(void Function(LeaseStatus) updates) =>
      super.copyWith((message) => updates(message as LeaseStatus))
          as LeaseStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseStatus create() => LeaseStatus._();
  @$core.override
  LeaseStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LeaseStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseStatus>(create);
  static LeaseStatus? _defaultInstance;

  @$pb.TagNumber(1)
  LeaseRef get lease => $_getN(0);
  @$pb.TagNumber(1)
  set lease(LeaseRef value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLease() => $_has(0);
  @$pb.TagNumber(1)
  void clearLease() => $_clearField(1);
  @$pb.TagNumber(1)
  LeaseRef ensureLease() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get state => $_getSZ(1);
  @$pb.TagNumber(2)
  set state($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get updatedAtMs => $_getI64(2);
  @$pb.TagNumber(3)
  set updatedAtMs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAtMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAtMs() => $_clearField(3);

  @$pb.TagNumber(4)
  FailureDetail get failure => $_getN(3);
  @$pb.TagNumber(4)
  set failure(FailureDetail value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFailure() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailure() => $_clearField(4);
  @$pb.TagNumber(4)
  FailureDetail ensureFailure() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Struct get extensions => $_getN(4);
  @$pb.TagNumber(5)
  set extensions($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensions() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureExtensions() => $_ensure(4);
}

class CancellationIntent extends $pb.GeneratedMessage {
  factory CancellationIntent({
    LeaseRef? lease,
    $core.String? reason,
    $fixnum.Int64? requestedAtMs,
    $core.bool? force,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (lease != null) result.lease = lease;
    if (reason != null) result.reason = reason;
    if (requestedAtMs != null) result.requestedAtMs = requestedAtMs;
    if (force != null) result.force = force;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  CancellationIntent._();

  factory CancellationIntent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CancellationIntent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CancellationIntent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOM<LeaseRef>(1, _omitFieldNames ? '' : 'lease',
        subBuilder: LeaseRef.create)
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'requestedAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, _omitFieldNames ? '' : 'force')
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancellationIntent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancellationIntent copyWith(void Function(CancellationIntent) updates) =>
      super.copyWith((message) => updates(message as CancellationIntent))
          as CancellationIntent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancellationIntent create() => CancellationIntent._();
  @$core.override
  CancellationIntent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CancellationIntent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CancellationIntent>(create);
  static CancellationIntent? _defaultInstance;

  @$pb.TagNumber(1)
  LeaseRef get lease => $_getN(0);
  @$pb.TagNumber(1)
  set lease(LeaseRef value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLease() => $_has(0);
  @$pb.TagNumber(1)
  void clearLease() => $_clearField(1);
  @$pb.TagNumber(1)
  LeaseRef ensureLease() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get requestedAtMs => $_getI64(2);
  @$pb.TagNumber(3)
  set requestedAtMs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRequestedAtMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestedAtMs() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get force => $_getBF(3);
  @$pb.TagNumber(4)
  set force($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasForce() => $_has(3);
  @$pb.TagNumber(4)
  void clearForce() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Struct get extensions => $_getN(4);
  @$pb.TagNumber(5)
  set extensions($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensions() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureExtensions() => $_ensure(4);
}

class LeaseAssignment extends $pb.GeneratedMessage {
  factory LeaseAssignment({
    LeaseRef? lease,
    Task? task,
    $fixnum.Int64? issuedAtMs,
    $fixnum.Int64? leaseTtlMs,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (lease != null) result.lease = lease;
    if (task != null) result.task = task;
    if (issuedAtMs != null) result.issuedAtMs = issuedAtMs;
    if (leaseTtlMs != null) result.leaseTtlMs = leaseTtlMs;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  LeaseAssignment._();

  factory LeaseAssignment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LeaseAssignment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseAssignment',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOM<LeaseRef>(1, _omitFieldNames ? '' : 'lease',
        subBuilder: LeaseRef.create)
    ..aOM<Task>(2, _omitFieldNames ? '' : 'task', subBuilder: Task.create)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'issuedAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'leaseTtlMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LeaseAssignment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LeaseAssignment copyWith(void Function(LeaseAssignment) updates) =>
      super.copyWith((message) => updates(message as LeaseAssignment))
          as LeaseAssignment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseAssignment create() => LeaseAssignment._();
  @$core.override
  LeaseAssignment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LeaseAssignment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseAssignment>(create);
  static LeaseAssignment? _defaultInstance;

  @$pb.TagNumber(1)
  LeaseRef get lease => $_getN(0);
  @$pb.TagNumber(1)
  set lease(LeaseRef value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLease() => $_has(0);
  @$pb.TagNumber(1)
  void clearLease() => $_clearField(1);
  @$pb.TagNumber(1)
  LeaseRef ensureLease() => $_ensure(0);

  @$pb.TagNumber(2)
  Task get task => $_getN(1);
  @$pb.TagNumber(2)
  set task(Task value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTask() => $_has(1);
  @$pb.TagNumber(2)
  void clearTask() => $_clearField(2);
  @$pb.TagNumber(2)
  Task ensureTask() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get issuedAtMs => $_getI64(2);
  @$pb.TagNumber(3)
  set issuedAtMs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIssuedAtMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearIssuedAtMs() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get leaseTtlMs => $_getI64(3);
  @$pb.TagNumber(4)
  set leaseTtlMs($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLeaseTtlMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearLeaseTtlMs() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Struct get extensions => $_getN(4);
  @$pb.TagNumber(5)
  set extensions($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensions() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureExtensions() => $_ensure(4);
}

class RegisterRunnerRequest extends $pb.GeneratedMessage {
  factory RegisterRunnerRequest({
    $core.String? contractVersion,
    $core.String? runnerId,
    RunnerCapabilities? capabilities,
    $core.int? maxParallelLeases,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (capabilities != null) result.capabilities = capabilities;
    if (maxParallelLeases != null) result.maxParallelLeases = maxParallelLeases;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  RegisterRunnerRequest._();

  factory RegisterRunnerRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterRunnerRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterRunnerRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'runnerId')
    ..aOM<RunnerCapabilities>(3, _omitFieldNames ? '' : 'capabilities',
        subBuilder: RunnerCapabilities.create)
    ..aI(4, _omitFieldNames ? '' : 'maxParallelLeases',
        fieldType: $pb.PbFieldType.OU3)
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterRunnerRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterRunnerRequest copyWith(
          void Function(RegisterRunnerRequest) updates) =>
      super.copyWith((message) => updates(message as RegisterRunnerRequest))
          as RegisterRunnerRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterRunnerRequest create() => RegisterRunnerRequest._();
  @$core.override
  RegisterRunnerRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterRunnerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterRunnerRequest>(create);
  static RegisterRunnerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runnerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set runnerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunnerId() => $_clearField(2);

  @$pb.TagNumber(3)
  RunnerCapabilities get capabilities => $_getN(2);
  @$pb.TagNumber(3)
  set capabilities(RunnerCapabilities value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCapabilities() => $_has(2);
  @$pb.TagNumber(3)
  void clearCapabilities() => $_clearField(3);
  @$pb.TagNumber(3)
  RunnerCapabilities ensureCapabilities() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get maxParallelLeases => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxParallelLeases($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMaxParallelLeases() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxParallelLeases() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Struct get extensions => $_getN(4);
  @$pb.TagNumber(5)
  set extensions($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensions() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureExtensions() => $_ensure(4);
}

class RegisterRunnerResponse extends $pb.GeneratedMessage {
  factory RegisterRunnerResponse({
    $core.String? contractVersion,
    $core.String? orchestratorId,
    $core.String? sessionId,
    $fixnum.Int64? heartbeatIntervalMs,
    $fixnum.Int64? leasePollIntervalMs,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (orchestratorId != null) result.orchestratorId = orchestratorId;
    if (sessionId != null) result.sessionId = sessionId;
    if (heartbeatIntervalMs != null)
      result.heartbeatIntervalMs = heartbeatIntervalMs;
    if (leasePollIntervalMs != null)
      result.leasePollIntervalMs = leasePollIntervalMs;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  RegisterRunnerResponse._();

  factory RegisterRunnerResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterRunnerResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterRunnerResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'orchestratorId')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'heartbeatIntervalMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'leasePollIntervalMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.Struct>(6, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterRunnerResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterRunnerResponse copyWith(
          void Function(RegisterRunnerResponse) updates) =>
      super.copyWith((message) => updates(message as RegisterRunnerResponse))
          as RegisterRunnerResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterRunnerResponse create() => RegisterRunnerResponse._();
  @$core.override
  RegisterRunnerResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterRunnerResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterRunnerResponse>(create);
  static RegisterRunnerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get orchestratorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orchestratorId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrchestratorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrchestratorId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get heartbeatIntervalMs => $_getI64(3);
  @$pb.TagNumber(4)
  set heartbeatIntervalMs($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHeartbeatIntervalMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeartbeatIntervalMs() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get leasePollIntervalMs => $_getI64(4);
  @$pb.TagNumber(5)
  set leasePollIntervalMs($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLeasePollIntervalMs() => $_has(4);
  @$pb.TagNumber(5)
  void clearLeasePollIntervalMs() => $_clearField(5);

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

class HeartbeatRequest extends $pb.GeneratedMessage {
  factory HeartbeatRequest({
    $core.String? contractVersion,
    $core.String? runnerId,
    $core.String? sessionId,
    $core.Iterable<LeaseStatus>? activeLeases,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (activeLeases != null) result.activeLeases.addAll(activeLeases);
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  HeartbeatRequest._();

  factory HeartbeatRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeartbeatRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeartbeatRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'runnerId')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..pPM<LeaseStatus>(4, _omitFieldNames ? '' : 'activeLeases',
        subBuilder: LeaseStatus.create)
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartbeatRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartbeatRequest copyWith(void Function(HeartbeatRequest) updates) =>
      super.copyWith((message) => updates(message as HeartbeatRequest))
          as HeartbeatRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeartbeatRequest create() => HeartbeatRequest._();
  @$core.override
  HeartbeatRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HeartbeatRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeartbeatRequest>(create);
  static HeartbeatRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runnerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set runnerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunnerId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<LeaseStatus> get activeLeases => $_getList(3);

  @$pb.TagNumber(5)
  $0.Struct get extensions => $_getN(4);
  @$pb.TagNumber(5)
  set extensions($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensions() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureExtensions() => $_ensure(4);
}

class HeartbeatResponse extends $pb.GeneratedMessage {
  factory HeartbeatResponse({
    $core.String? contractVersion,
    $core.String? orchestratorId,
    $fixnum.Int64? nextHeartbeatMs,
    $core.Iterable<CancellationIntent>? cancellations,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (orchestratorId != null) result.orchestratorId = orchestratorId;
    if (nextHeartbeatMs != null) result.nextHeartbeatMs = nextHeartbeatMs;
    if (cancellations != null) result.cancellations.addAll(cancellations);
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  HeartbeatResponse._();

  factory HeartbeatResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeartbeatResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeartbeatResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'orchestratorId')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'nextHeartbeatMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<CancellationIntent>(4, _omitFieldNames ? '' : 'cancellations',
        subBuilder: CancellationIntent.create)
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartbeatResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartbeatResponse copyWith(void Function(HeartbeatResponse) updates) =>
      super.copyWith((message) => updates(message as HeartbeatResponse))
          as HeartbeatResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeartbeatResponse create() => HeartbeatResponse._();
  @$core.override
  HeartbeatResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HeartbeatResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeartbeatResponse>(create);
  static HeartbeatResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get orchestratorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orchestratorId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrchestratorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrchestratorId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get nextHeartbeatMs => $_getI64(2);
  @$pb.TagNumber(3)
  set nextHeartbeatMs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNextHeartbeatMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearNextHeartbeatMs() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<CancellationIntent> get cancellations => $_getList(3);

  @$pb.TagNumber(5)
  $0.Struct get extensions => $_getN(4);
  @$pb.TagNumber(5)
  set extensions($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensions() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureExtensions() => $_ensure(4);
}

class AcquireLeaseRequest extends $pb.GeneratedMessage {
  factory AcquireLeaseRequest({
    $core.String? contractVersion,
    $core.String? runnerId,
    $core.String? sessionId,
    $core.int? availableSlots,
    $core.Iterable<$core.String>? activeLeaseIds,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (availableSlots != null) result.availableSlots = availableSlots;
    if (activeLeaseIds != null) result.activeLeaseIds.addAll(activeLeaseIds);
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  AcquireLeaseRequest._();

  factory AcquireLeaseRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AcquireLeaseRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AcquireLeaseRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'runnerId')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..aI(4, _omitFieldNames ? '' : 'availableSlots',
        fieldType: $pb.PbFieldType.OU3)
    ..pPS(5, _omitFieldNames ? '' : 'activeLeaseIds')
    ..aOM<$0.Struct>(6, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AcquireLeaseRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AcquireLeaseRequest copyWith(void Function(AcquireLeaseRequest) updates) =>
      super.copyWith((message) => updates(message as AcquireLeaseRequest))
          as AcquireLeaseRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcquireLeaseRequest create() => AcquireLeaseRequest._();
  @$core.override
  AcquireLeaseRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AcquireLeaseRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AcquireLeaseRequest>(create);
  static AcquireLeaseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runnerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set runnerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunnerId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get availableSlots => $_getIZ(3);
  @$pb.TagNumber(4)
  set availableSlots($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAvailableSlots() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvailableSlots() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get activeLeaseIds => $_getList(4);

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

class AcquireLeaseResponse extends $pb.GeneratedMessage {
  factory AcquireLeaseResponse({
    $core.String? contractVersion,
    $core.String? orchestratorId,
    LeaseAssignment? assignment,
    $fixnum.Int64? retryAfterMs,
    $core.Iterable<CancellationIntent>? cancellations,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (orchestratorId != null) result.orchestratorId = orchestratorId;
    if (assignment != null) result.assignment = assignment;
    if (retryAfterMs != null) result.retryAfterMs = retryAfterMs;
    if (cancellations != null) result.cancellations.addAll(cancellations);
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  AcquireLeaseResponse._();

  factory AcquireLeaseResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AcquireLeaseResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AcquireLeaseResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'orchestratorId')
    ..aOM<LeaseAssignment>(3, _omitFieldNames ? '' : 'assignment',
        subBuilder: LeaseAssignment.create)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'retryAfterMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<CancellationIntent>(5, _omitFieldNames ? '' : 'cancellations',
        subBuilder: CancellationIntent.create)
    ..aOM<$0.Struct>(6, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AcquireLeaseResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AcquireLeaseResponse copyWith(void Function(AcquireLeaseResponse) updates) =>
      super.copyWith((message) => updates(message as AcquireLeaseResponse))
          as AcquireLeaseResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcquireLeaseResponse create() => AcquireLeaseResponse._();
  @$core.override
  AcquireLeaseResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AcquireLeaseResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AcquireLeaseResponse>(create);
  static AcquireLeaseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get orchestratorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orchestratorId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrchestratorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrchestratorId() => $_clearField(2);

  @$pb.TagNumber(3)
  LeaseAssignment get assignment => $_getN(2);
  @$pb.TagNumber(3)
  set assignment(LeaseAssignment value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAssignment() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssignment() => $_clearField(3);
  @$pb.TagNumber(3)
  LeaseAssignment ensureAssignment() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get retryAfterMs => $_getI64(3);
  @$pb.TagNumber(4)
  set retryAfterMs($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRetryAfterMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearRetryAfterMs() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<CancellationIntent> get cancellations => $_getList(4);

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

class RenewLeaseRequest extends $pb.GeneratedMessage {
  factory RenewLeaseRequest({
    $core.String? contractVersion,
    $core.String? runnerId,
    $core.String? sessionId,
    LeaseRef? lease,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (lease != null) result.lease = lease;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  RenewLeaseRequest._();

  factory RenewLeaseRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RenewLeaseRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RenewLeaseRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'runnerId')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..aOM<LeaseRef>(4, _omitFieldNames ? '' : 'lease',
        subBuilder: LeaseRef.create)
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenewLeaseRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenewLeaseRequest copyWith(void Function(RenewLeaseRequest) updates) =>
      super.copyWith((message) => updates(message as RenewLeaseRequest))
          as RenewLeaseRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RenewLeaseRequest create() => RenewLeaseRequest._();
  @$core.override
  RenewLeaseRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RenewLeaseRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RenewLeaseRequest>(create);
  static RenewLeaseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runnerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set runnerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunnerId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  LeaseRef get lease => $_getN(3);
  @$pb.TagNumber(4)
  set lease(LeaseRef value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLease() => $_has(3);
  @$pb.TagNumber(4)
  void clearLease() => $_clearField(4);
  @$pb.TagNumber(4)
  LeaseRef ensureLease() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Struct get extensions => $_getN(4);
  @$pb.TagNumber(5)
  set extensions($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensions() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureExtensions() => $_ensure(4);
}

class RenewLeaseResponse extends $pb.GeneratedMessage {
  factory RenewLeaseResponse({
    $core.String? contractVersion,
    $core.String? orchestratorId,
    $core.bool? accepted,
    $fixnum.Int64? leaseTtlMs,
    $core.Iterable<CancellationIntent>? cancellations,
    FailureDetail? failure,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (orchestratorId != null) result.orchestratorId = orchestratorId;
    if (accepted != null) result.accepted = accepted;
    if (leaseTtlMs != null) result.leaseTtlMs = leaseTtlMs;
    if (cancellations != null) result.cancellations.addAll(cancellations);
    if (failure != null) result.failure = failure;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  RenewLeaseResponse._();

  factory RenewLeaseResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RenewLeaseResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RenewLeaseResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'orchestratorId')
    ..aOB(3, _omitFieldNames ? '' : 'accepted')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'leaseTtlMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<CancellationIntent>(5, _omitFieldNames ? '' : 'cancellations',
        subBuilder: CancellationIntent.create)
    ..aOM<FailureDetail>(6, _omitFieldNames ? '' : 'failure',
        subBuilder: FailureDetail.create)
    ..aOM<$0.Struct>(7, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenewLeaseResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenewLeaseResponse copyWith(void Function(RenewLeaseResponse) updates) =>
      super.copyWith((message) => updates(message as RenewLeaseResponse))
          as RenewLeaseResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RenewLeaseResponse create() => RenewLeaseResponse._();
  @$core.override
  RenewLeaseResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RenewLeaseResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RenewLeaseResponse>(create);
  static RenewLeaseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get orchestratorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orchestratorId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrchestratorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrchestratorId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get accepted => $_getBF(2);
  @$pb.TagNumber(3)
  set accepted($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccepted() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccepted() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get leaseTtlMs => $_getI64(3);
  @$pb.TagNumber(4)
  set leaseTtlMs($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLeaseTtlMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearLeaseTtlMs() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<CancellationIntent> get cancellations => $_getList(4);

  @$pb.TagNumber(6)
  FailureDetail get failure => $_getN(5);
  @$pb.TagNumber(6)
  set failure(FailureDetail value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasFailure() => $_has(5);
  @$pb.TagNumber(6)
  void clearFailure() => $_clearField(6);
  @$pb.TagNumber(6)
  FailureDetail ensureFailure() => $_ensure(5);

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

class ReportStepStartedRequest extends $pb.GeneratedMessage {
  factory ReportStepStartedRequest({
    $core.String? contractVersion,
    $core.String? runnerId,
    $core.String? sessionId,
    LeaseRef? lease,
    $core.String? startedAt,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (lease != null) result.lease = lease;
    if (startedAt != null) result.startedAt = startedAt;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ReportStepStartedRequest._();

  factory ReportStepStartedRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportStepStartedRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportStepStartedRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'runnerId')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..aOM<LeaseRef>(4, _omitFieldNames ? '' : 'lease',
        subBuilder: LeaseRef.create)
    ..aOS(5, _omitFieldNames ? '' : 'startedAt')
    ..aOM<$0.Struct>(6, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepStartedRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepStartedRequest copyWith(
          void Function(ReportStepStartedRequest) updates) =>
      super.copyWith((message) => updates(message as ReportStepStartedRequest))
          as ReportStepStartedRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportStepStartedRequest create() => ReportStepStartedRequest._();
  @$core.override
  ReportStepStartedRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReportStepStartedRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportStepStartedRequest>(create);
  static ReportStepStartedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runnerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set runnerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunnerId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  LeaseRef get lease => $_getN(3);
  @$pb.TagNumber(4)
  set lease(LeaseRef value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLease() => $_has(3);
  @$pb.TagNumber(4)
  void clearLease() => $_clearField(4);
  @$pb.TagNumber(4)
  LeaseRef ensureLease() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get startedAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set startedAt($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStartedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartedAt() => $_clearField(5);

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

class ReportStepStartedResponse extends $pb.GeneratedMessage {
  factory ReportStepStartedResponse({
    $core.String? contractVersion,
    $core.String? orchestratorId,
    $core.bool? accepted,
    FailureDetail? failure,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (orchestratorId != null) result.orchestratorId = orchestratorId;
    if (accepted != null) result.accepted = accepted;
    if (failure != null) result.failure = failure;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ReportStepStartedResponse._();

  factory ReportStepStartedResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportStepStartedResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportStepStartedResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'orchestratorId')
    ..aOB(3, _omitFieldNames ? '' : 'accepted')
    ..aOM<FailureDetail>(4, _omitFieldNames ? '' : 'failure',
        subBuilder: FailureDetail.create)
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepStartedResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepStartedResponse copyWith(
          void Function(ReportStepStartedResponse) updates) =>
      super.copyWith((message) => updates(message as ReportStepStartedResponse))
          as ReportStepStartedResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportStepStartedResponse create() => ReportStepStartedResponse._();
  @$core.override
  ReportStepStartedResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReportStepStartedResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportStepStartedResponse>(create);
  static ReportStepStartedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get orchestratorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orchestratorId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrchestratorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrchestratorId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get accepted => $_getBF(2);
  @$pb.TagNumber(3)
  set accepted($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccepted() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccepted() => $_clearField(3);

  @$pb.TagNumber(4)
  FailureDetail get failure => $_getN(3);
  @$pb.TagNumber(4)
  set failure(FailureDetail value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFailure() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailure() => $_clearField(4);
  @$pb.TagNumber(4)
  FailureDetail ensureFailure() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Struct get extensions => $_getN(4);
  @$pb.TagNumber(5)
  set extensions($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensions() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureExtensions() => $_ensure(4);
}

class ReportStepProgressRequest extends $pb.GeneratedMessage {
  factory ReportStepProgressRequest({
    $core.String? contractVersion,
    $core.String? runnerId,
    $core.String? sessionId,
    LeaseRef? lease,
    $core.Iterable<Event>? events,
    $core.Iterable<Artifact>? artifacts,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (lease != null) result.lease = lease;
    if (events != null) result.events.addAll(events);
    if (artifacts != null) result.artifacts.addAll(artifacts);
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ReportStepProgressRequest._();

  factory ReportStepProgressRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportStepProgressRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportStepProgressRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'runnerId')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..aOM<LeaseRef>(4, _omitFieldNames ? '' : 'lease',
        subBuilder: LeaseRef.create)
    ..pPM<Event>(5, _omitFieldNames ? '' : 'events', subBuilder: Event.create)
    ..pPM<Artifact>(6, _omitFieldNames ? '' : 'artifacts',
        subBuilder: Artifact.create)
    ..aOM<$0.Struct>(7, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepProgressRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepProgressRequest copyWith(
          void Function(ReportStepProgressRequest) updates) =>
      super.copyWith((message) => updates(message as ReportStepProgressRequest))
          as ReportStepProgressRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportStepProgressRequest create() => ReportStepProgressRequest._();
  @$core.override
  ReportStepProgressRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReportStepProgressRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportStepProgressRequest>(create);
  static ReportStepProgressRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runnerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set runnerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunnerId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  LeaseRef get lease => $_getN(3);
  @$pb.TagNumber(4)
  set lease(LeaseRef value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLease() => $_has(3);
  @$pb.TagNumber(4)
  void clearLease() => $_clearField(4);
  @$pb.TagNumber(4)
  LeaseRef ensureLease() => $_ensure(3);

  @$pb.TagNumber(5)
  $pb.PbList<Event> get events => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<Artifact> get artifacts => $_getList(5);

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

class ReportStepProgressResponse extends $pb.GeneratedMessage {
  factory ReportStepProgressResponse({
    $core.String? contractVersion,
    $core.String? orchestratorId,
    $core.bool? accepted,
    $core.Iterable<CancellationIntent>? cancellations,
    FailureDetail? failure,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (orchestratorId != null) result.orchestratorId = orchestratorId;
    if (accepted != null) result.accepted = accepted;
    if (cancellations != null) result.cancellations.addAll(cancellations);
    if (failure != null) result.failure = failure;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ReportStepProgressResponse._();

  factory ReportStepProgressResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportStepProgressResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportStepProgressResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'orchestratorId')
    ..aOB(3, _omitFieldNames ? '' : 'accepted')
    ..pPM<CancellationIntent>(4, _omitFieldNames ? '' : 'cancellations',
        subBuilder: CancellationIntent.create)
    ..aOM<FailureDetail>(5, _omitFieldNames ? '' : 'failure',
        subBuilder: FailureDetail.create)
    ..aOM<$0.Struct>(6, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepProgressResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepProgressResponse copyWith(
          void Function(ReportStepProgressResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ReportStepProgressResponse))
          as ReportStepProgressResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportStepProgressResponse create() => ReportStepProgressResponse._();
  @$core.override
  ReportStepProgressResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReportStepProgressResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportStepProgressResponse>(create);
  static ReportStepProgressResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get orchestratorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orchestratorId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrchestratorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrchestratorId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get accepted => $_getBF(2);
  @$pb.TagNumber(3)
  set accepted($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccepted() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccepted() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<CancellationIntent> get cancellations => $_getList(3);

  @$pb.TagNumber(5)
  FailureDetail get failure => $_getN(4);
  @$pb.TagNumber(5)
  set failure(FailureDetail value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFailure() => $_has(4);
  @$pb.TagNumber(5)
  void clearFailure() => $_clearField(5);
  @$pb.TagNumber(5)
  FailureDetail ensureFailure() => $_ensure(4);

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

class ReportStepOutcomeRequest extends $pb.GeneratedMessage {
  factory ReportStepOutcomeRequest({
    $core.String? contractVersion,
    $core.String? runnerId,
    $core.String? sessionId,
    LeaseRef? lease,
    PlanStatus? status,
    $core.Iterable<Event>? events,
    $core.Iterable<Artifact>? artifacts,
    RunOutcome? runOutcome,
    FailureDetail? failure,
    $core.String? finishedAt,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (lease != null) result.lease = lease;
    if (status != null) result.status = status;
    if (events != null) result.events.addAll(events);
    if (artifacts != null) result.artifacts.addAll(artifacts);
    if (runOutcome != null) result.runOutcome = runOutcome;
    if (failure != null) result.failure = failure;
    if (finishedAt != null) result.finishedAt = finishedAt;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ReportStepOutcomeRequest._();

  factory ReportStepOutcomeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportStepOutcomeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportStepOutcomeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'runnerId')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..aOM<LeaseRef>(4, _omitFieldNames ? '' : 'lease',
        subBuilder: LeaseRef.create)
    ..aE<PlanStatus>(5, _omitFieldNames ? '' : 'status',
        enumValues: PlanStatus.values)
    ..pPM<Event>(6, _omitFieldNames ? '' : 'events', subBuilder: Event.create)
    ..pPM<Artifact>(7, _omitFieldNames ? '' : 'artifacts',
        subBuilder: Artifact.create)
    ..aOM<RunOutcome>(8, _omitFieldNames ? '' : 'runOutcome',
        subBuilder: RunOutcome.create)
    ..aOM<FailureDetail>(9, _omitFieldNames ? '' : 'failure',
        subBuilder: FailureDetail.create)
    ..aOS(10, _omitFieldNames ? '' : 'finishedAt')
    ..aOM<$0.Struct>(11, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepOutcomeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepOutcomeRequest copyWith(
          void Function(ReportStepOutcomeRequest) updates) =>
      super.copyWith((message) => updates(message as ReportStepOutcomeRequest))
          as ReportStepOutcomeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportStepOutcomeRequest create() => ReportStepOutcomeRequest._();
  @$core.override
  ReportStepOutcomeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReportStepOutcomeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportStepOutcomeRequest>(create);
  static ReportStepOutcomeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runnerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set runnerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunnerId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  LeaseRef get lease => $_getN(3);
  @$pb.TagNumber(4)
  set lease(LeaseRef value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLease() => $_has(3);
  @$pb.TagNumber(4)
  void clearLease() => $_clearField(4);
  @$pb.TagNumber(4)
  LeaseRef ensureLease() => $_ensure(3);

  @$pb.TagNumber(5)
  PlanStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(PlanStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<Event> get events => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<Artifact> get artifacts => $_getList(6);

  @$pb.TagNumber(8)
  RunOutcome get runOutcome => $_getN(7);
  @$pb.TagNumber(8)
  set runOutcome(RunOutcome value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRunOutcome() => $_has(7);
  @$pb.TagNumber(8)
  void clearRunOutcome() => $_clearField(8);
  @$pb.TagNumber(8)
  RunOutcome ensureRunOutcome() => $_ensure(7);

  @$pb.TagNumber(9)
  FailureDetail get failure => $_getN(8);
  @$pb.TagNumber(9)
  set failure(FailureDetail value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasFailure() => $_has(8);
  @$pb.TagNumber(9)
  void clearFailure() => $_clearField(9);
  @$pb.TagNumber(9)
  FailureDetail ensureFailure() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get finishedAt => $_getSZ(9);
  @$pb.TagNumber(10)
  set finishedAt($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFinishedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearFinishedAt() => $_clearField(10);

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

class ReportStepOutcomeResponse extends $pb.GeneratedMessage {
  factory ReportStepOutcomeResponse({
    $core.String? contractVersion,
    $core.String? orchestratorId,
    $core.bool? accepted,
    FailureDetail? failure,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (orchestratorId != null) result.orchestratorId = orchestratorId;
    if (accepted != null) result.accepted = accepted;
    if (failure != null) result.failure = failure;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ReportStepOutcomeResponse._();

  factory ReportStepOutcomeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportStepOutcomeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportStepOutcomeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'orchestratorId')
    ..aOB(3, _omitFieldNames ? '' : 'accepted')
    ..aOM<FailureDetail>(4, _omitFieldNames ? '' : 'failure',
        subBuilder: FailureDetail.create)
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepOutcomeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportStepOutcomeResponse copyWith(
          void Function(ReportStepOutcomeResponse) updates) =>
      super.copyWith((message) => updates(message as ReportStepOutcomeResponse))
          as ReportStepOutcomeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportStepOutcomeResponse create() => ReportStepOutcomeResponse._();
  @$core.override
  ReportStepOutcomeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReportStepOutcomeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportStepOutcomeResponse>(create);
  static ReportStepOutcomeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get orchestratorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orchestratorId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrchestratorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrchestratorId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get accepted => $_getBF(2);
  @$pb.TagNumber(3)
  set accepted($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccepted() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccepted() => $_clearField(3);

  @$pb.TagNumber(4)
  FailureDetail get failure => $_getN(3);
  @$pb.TagNumber(4)
  set failure(FailureDetail value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFailure() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailure() => $_clearField(4);
  @$pb.TagNumber(4)
  FailureDetail ensureFailure() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Struct get extensions => $_getN(4);
  @$pb.TagNumber(5)
  set extensions($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensions() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureExtensions() => $_ensure(4);
}

class AckCancellationRequest extends $pb.GeneratedMessage {
  factory AckCancellationRequest({
    $core.String? contractVersion,
    $core.String? runnerId,
    $core.String? sessionId,
    LeaseRef? lease,
    $core.String? status,
    $core.String? message,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (lease != null) result.lease = lease;
    if (status != null) result.status = status;
    if (message != null) result.message = message;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  AckCancellationRequest._();

  factory AckCancellationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AckCancellationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AckCancellationRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'runnerId')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..aOM<LeaseRef>(4, _omitFieldNames ? '' : 'lease',
        subBuilder: LeaseRef.create)
    ..aOS(5, _omitFieldNames ? '' : 'status')
    ..aOS(6, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Struct>(7, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AckCancellationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AckCancellationRequest copyWith(
          void Function(AckCancellationRequest) updates) =>
      super.copyWith((message) => updates(message as AckCancellationRequest))
          as AckCancellationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AckCancellationRequest create() => AckCancellationRequest._();
  @$core.override
  AckCancellationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AckCancellationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AckCancellationRequest>(create);
  static AckCancellationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runnerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set runnerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunnerId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  LeaseRef get lease => $_getN(3);
  @$pb.TagNumber(4)
  set lease(LeaseRef value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLease() => $_has(3);
  @$pb.TagNumber(4)
  void clearLease() => $_clearField(4);
  @$pb.TagNumber(4)
  LeaseRef ensureLease() => $_ensure(3);

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
}

class AckCancellationResponse extends $pb.GeneratedMessage {
  factory AckCancellationResponse({
    $core.String? contractVersion,
    $core.String? orchestratorId,
    $core.bool? accepted,
    FailureDetail? failure,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (orchestratorId != null) result.orchestratorId = orchestratorId;
    if (accepted != null) result.accepted = accepted;
    if (failure != null) result.failure = failure;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  AckCancellationResponse._();

  factory AckCancellationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AckCancellationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AckCancellationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'orchestratorId')
    ..aOB(3, _omitFieldNames ? '' : 'accepted')
    ..aOM<FailureDetail>(4, _omitFieldNames ? '' : 'failure',
        subBuilder: FailureDetail.create)
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AckCancellationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AckCancellationResponse copyWith(
          void Function(AckCancellationResponse) updates) =>
      super.copyWith((message) => updates(message as AckCancellationResponse))
          as AckCancellationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AckCancellationResponse create() => AckCancellationResponse._();
  @$core.override
  AckCancellationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AckCancellationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AckCancellationResponse>(create);
  static AckCancellationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get orchestratorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orchestratorId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrchestratorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrchestratorId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get accepted => $_getBF(2);
  @$pb.TagNumber(3)
  set accepted($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccepted() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccepted() => $_clearField(3);

  @$pb.TagNumber(4)
  FailureDetail get failure => $_getN(3);
  @$pb.TagNumber(4)
  set failure(FailureDetail value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFailure() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailure() => $_clearField(4);
  @$pb.TagNumber(4)
  FailureDetail ensureFailure() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Struct get extensions => $_getN(4);
  @$pb.TagNumber(5)
  set extensions($0.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensions() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Struct ensureExtensions() => $_ensure(4);
}

/// RunnerControlService is the canonical machine-to-machine control-plane
/// contract. It is transport-oriented and intentionally protobuf-only; JSON
/// schema support in this repository remains limited to portable object payloads.
class RunnerControlServiceApi {
  final $pb.RpcClient _client;

  RunnerControlServiceApi(this._client);

  $async.Future<RegisterRunnerResponse> registerRunner(
          $pb.ClientContext? ctx, RegisterRunnerRequest request) =>
      _client.invoke<RegisterRunnerResponse>(ctx, 'RunnerControlService',
          'RegisterRunner', request, RegisterRunnerResponse());
  $async.Future<HeartbeatResponse> heartbeat(
          $pb.ClientContext? ctx, HeartbeatRequest request) =>
      _client.invoke<HeartbeatResponse>(ctx, 'RunnerControlService',
          'Heartbeat', request, HeartbeatResponse());
  $async.Future<AcquireLeaseResponse> acquireLease(
          $pb.ClientContext? ctx, AcquireLeaseRequest request) =>
      _client.invoke<AcquireLeaseResponse>(ctx, 'RunnerControlService',
          'AcquireLease', request, AcquireLeaseResponse());
  $async.Future<RenewLeaseResponse> renewLease(
          $pb.ClientContext? ctx, RenewLeaseRequest request) =>
      _client.invoke<RenewLeaseResponse>(ctx, 'RunnerControlService',
          'RenewLease', request, RenewLeaseResponse());
  $async.Future<ReportStepStartedResponse> reportStepStarted(
          $pb.ClientContext? ctx, ReportStepStartedRequest request) =>
      _client.invoke<ReportStepStartedResponse>(ctx, 'RunnerControlService',
          'ReportStepStarted', request, ReportStepStartedResponse());
  $async.Future<ReportStepProgressResponse> reportStepProgress(
          $pb.ClientContext? ctx, ReportStepProgressRequest request) =>
      _client.invoke<ReportStepProgressResponse>(ctx, 'RunnerControlService',
          'ReportStepProgress', request, ReportStepProgressResponse());
  $async.Future<ReportStepOutcomeResponse> reportStepOutcome(
          $pb.ClientContext? ctx, ReportStepOutcomeRequest request) =>
      _client.invoke<ReportStepOutcomeResponse>(ctx, 'RunnerControlService',
          'ReportStepOutcome', request, ReportStepOutcomeResponse());
  $async.Future<AckCancellationResponse> ackCancellation(
          $pb.ClientContext? ctx, AckCancellationRequest request) =>
      _client.invoke<AckCancellationResponse>(ctx, 'RunnerControlService',
          'AckCancellation', request, AckCancellationResponse());
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
