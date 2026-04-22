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

class Intent extends $pb.GeneratedMessage {
  factory Intent({
    $core.String? intentId,
    $fixnum.Int64? submittedAt,
    $core.String? submitter,
    $core.String? policyVersion,
    $core.String? targetRepo,
    $core.String? targetRef,
    $core.String? goal,
    $0.Struct? constraints,
    $core.String? contextDigest,
    IntentClass? intentClass,
  }) {
    final result = create();
    if (intentId != null) result.intentId = intentId;
    if (submittedAt != null) result.submittedAt = submittedAt;
    if (submitter != null) result.submitter = submitter;
    if (policyVersion != null) result.policyVersion = policyVersion;
    if (targetRepo != null) result.targetRepo = targetRepo;
    if (targetRef != null) result.targetRef = targetRef;
    if (goal != null) result.goal = goal;
    if (constraints != null) result.constraints = constraints;
    if (contextDigest != null) result.contextDigest = contextDigest;
    if (intentClass != null) result.intentClass = intentClass;
    return result;
  }

  Intent._();

  factory Intent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Intent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Intent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'intentId')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'submittedAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'submitter')
    ..aOS(4, _omitFieldNames ? '' : 'policyVersion')
    ..aOS(5, _omitFieldNames ? '' : 'targetRepo')
    ..aOS(6, _omitFieldNames ? '' : 'targetRef')
    ..aOS(7, _omitFieldNames ? '' : 'goal')
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'constraints',
        subBuilder: $0.Struct.create)
    ..aOS(9, _omitFieldNames ? '' : 'contextDigest')
    ..aE<IntentClass>(10, _omitFieldNames ? '' : 'intentClass',
        enumValues: IntentClass.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Intent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Intent copyWith(void Function(Intent) updates) =>
      super.copyWith((message) => updates(message as Intent)) as Intent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Intent create() => Intent._();
  @$core.override
  Intent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Intent getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Intent>(create);
  static Intent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get intentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set intentId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIntentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearIntentId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get submittedAt => $_getI64(1);
  @$pb.TagNumber(2)
  set submittedAt($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubmittedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubmittedAt() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get submitter => $_getSZ(2);
  @$pb.TagNumber(3)
  set submitter($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSubmitter() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubmitter() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get policyVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set policyVersion($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPolicyVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearPolicyVersion() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get targetRepo => $_getSZ(4);
  @$pb.TagNumber(5)
  set targetRepo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTargetRepo() => $_has(4);
  @$pb.TagNumber(5)
  void clearTargetRepo() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get targetRef => $_getSZ(5);
  @$pb.TagNumber(6)
  set targetRef($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTargetRef() => $_has(5);
  @$pb.TagNumber(6)
  void clearTargetRef() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get goal => $_getSZ(6);
  @$pb.TagNumber(7)
  set goal($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasGoal() => $_has(6);
  @$pb.TagNumber(7)
  void clearGoal() => $_clearField(7);

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
  $core.String get contextDigest => $_getSZ(8);
  @$pb.TagNumber(9)
  set contextDigest($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasContextDigest() => $_has(8);
  @$pb.TagNumber(9)
  void clearContextDigest() => $_clearField(9);

  @$pb.TagNumber(10)
  IntentClass get intentClass => $_getN(9);
  @$pb.TagNumber(10)
  set intentClass(IntentClass value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasIntentClass() => $_has(9);
  @$pb.TagNumber(10)
  void clearIntentClass() => $_clearField(10);
}

class BootstrapIntent extends $pb.GeneratedMessage {
  factory BootstrapIntent({
    $core.String? contractVersion,
    $core.String? bootstrapIntentId,
    $core.String? projectKey,
    $core.Iterable<$core.String>? targetRepos,
    $core.String? pipelineTemplateId,
    $core.String? campaignGoal,
    $core.String? notes,
    $core.String? priorityProfile,
    $fixnum.Int64? createdAtMs,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (bootstrapIntentId != null) result.bootstrapIntentId = bootstrapIntentId;
    if (projectKey != null) result.projectKey = projectKey;
    if (targetRepos != null) result.targetRepos.addAll(targetRepos);
    if (pipelineTemplateId != null)
      result.pipelineTemplateId = pipelineTemplateId;
    if (campaignGoal != null) result.campaignGoal = campaignGoal;
    if (notes != null) result.notes = notes;
    if (priorityProfile != null) result.priorityProfile = priorityProfile;
    if (createdAtMs != null) result.createdAtMs = createdAtMs;
    return result;
  }

  BootstrapIntent._();

  factory BootstrapIntent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BootstrapIntent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BootstrapIntent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'bootstrapIntentId')
    ..aOS(3, _omitFieldNames ? '' : 'projectKey')
    ..pPS(4, _omitFieldNames ? '' : 'targetRepos')
    ..aOS(5, _omitFieldNames ? '' : 'pipelineTemplateId')
    ..aOS(6, _omitFieldNames ? '' : 'campaignGoal')
    ..aOS(7, _omitFieldNames ? '' : 'notes')
    ..aOS(8, _omitFieldNames ? '' : 'priorityProfile')
    ..a<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'createdAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapIntent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapIntent copyWith(void Function(BootstrapIntent) updates) =>
      super.copyWith((message) => updates(message as BootstrapIntent))
          as BootstrapIntent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootstrapIntent create() => BootstrapIntent._();
  @$core.override
  BootstrapIntent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BootstrapIntent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BootstrapIntent>(create);
  static BootstrapIntent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get bootstrapIntentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set bootstrapIntentId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBootstrapIntentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBootstrapIntentId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get projectKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set projectKey($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProjectKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectKey() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get targetRepos => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get pipelineTemplateId => $_getSZ(4);
  @$pb.TagNumber(5)
  set pipelineTemplateId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPipelineTemplateId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPipelineTemplateId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get campaignGoal => $_getSZ(5);
  @$pb.TagNumber(6)
  set campaignGoal($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCampaignGoal() => $_has(5);
  @$pb.TagNumber(6)
  void clearCampaignGoal() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get notes => $_getSZ(6);
  @$pb.TagNumber(7)
  set notes($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNotes() => $_has(6);
  @$pb.TagNumber(7)
  void clearNotes() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get priorityProfile => $_getSZ(7);
  @$pb.TagNumber(8)
  set priorityProfile($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPriorityProfile() => $_has(7);
  @$pb.TagNumber(8)
  void clearPriorityProfile() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get createdAtMs => $_getI64(8);
  @$pb.TagNumber(9)
  set createdAtMs($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCreatedAtMs() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatedAtMs() => $_clearField(9);
}

class BootstrapPlanTask extends $pb.GeneratedMessage {
  factory BootstrapPlanTask({
    $core.String? taskId,
    $core.String? displayName,
    $core.String? roleId,
    $core.String? taskMilestone,
    $core.Iterable<$core.String>? dependsOn,
    $core.String? targetRepo,
    $core.Iterable<$core.String>? requiredSkillIds,
    $core.Iterable<$core.String>? requiredMcpIds,
    $core.String? interactionMode,
    $core.String? networkMode,
    $core.bool? requiresHumanReview,
    $0.Struct? filesystemPolicy,
    $core.String? templateSlotId,
    $core.String? notes,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    if (displayName != null) result.displayName = displayName;
    if (roleId != null) result.roleId = roleId;
    if (taskMilestone != null) result.taskMilestone = taskMilestone;
    if (dependsOn != null) result.dependsOn.addAll(dependsOn);
    if (targetRepo != null) result.targetRepo = targetRepo;
    if (requiredSkillIds != null)
      result.requiredSkillIds.addAll(requiredSkillIds);
    if (requiredMcpIds != null) result.requiredMcpIds.addAll(requiredMcpIds);
    if (interactionMode != null) result.interactionMode = interactionMode;
    if (networkMode != null) result.networkMode = networkMode;
    if (requiresHumanReview != null)
      result.requiresHumanReview = requiresHumanReview;
    if (filesystemPolicy != null) result.filesystemPolicy = filesystemPolicy;
    if (templateSlotId != null) result.templateSlotId = templateSlotId;
    if (notes != null) result.notes = notes;
    return result;
  }

  BootstrapPlanTask._();

  factory BootstrapPlanTask.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BootstrapPlanTask.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BootstrapPlanTask',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'displayName')
    ..aOS(3, _omitFieldNames ? '' : 'roleId')
    ..aOS(4, _omitFieldNames ? '' : 'taskMilestone')
    ..pPS(5, _omitFieldNames ? '' : 'dependsOn')
    ..aOS(6, _omitFieldNames ? '' : 'targetRepo')
    ..pPS(7, _omitFieldNames ? '' : 'requiredSkillIds')
    ..pPS(8, _omitFieldNames ? '' : 'requiredMcpIds')
    ..aOS(9, _omitFieldNames ? '' : 'interactionMode')
    ..aOS(10, _omitFieldNames ? '' : 'networkMode')
    ..aOB(11, _omitFieldNames ? '' : 'requiresHumanReview')
    ..aOM<$0.Struct>(12, _omitFieldNames ? '' : 'filesystemPolicy',
        subBuilder: $0.Struct.create)
    ..aOS(13, _omitFieldNames ? '' : 'templateSlotId')
    ..aOS(14, _omitFieldNames ? '' : 'notes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapPlanTask clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapPlanTask copyWith(void Function(BootstrapPlanTask) updates) =>
      super.copyWith((message) => updates(message as BootstrapPlanTask))
          as BootstrapPlanTask;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootstrapPlanTask create() => BootstrapPlanTask._();
  @$core.override
  BootstrapPlanTask createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BootstrapPlanTask getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BootstrapPlanTask>(create);
  static BootstrapPlanTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get roleId => $_getSZ(2);
  @$pb.TagNumber(3)
  set roleId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRoleId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoleId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get taskMilestone => $_getSZ(3);
  @$pb.TagNumber(4)
  set taskMilestone($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTaskMilestone() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskMilestone() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get dependsOn => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get targetRepo => $_getSZ(5);
  @$pb.TagNumber(6)
  set targetRepo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTargetRepo() => $_has(5);
  @$pb.TagNumber(6)
  void clearTargetRepo() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get requiredSkillIds => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get requiredMcpIds => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get interactionMode => $_getSZ(8);
  @$pb.TagNumber(9)
  set interactionMode($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasInteractionMode() => $_has(8);
  @$pb.TagNumber(9)
  void clearInteractionMode() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get networkMode => $_getSZ(9);
  @$pb.TagNumber(10)
  set networkMode($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasNetworkMode() => $_has(9);
  @$pb.TagNumber(10)
  void clearNetworkMode() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get requiresHumanReview => $_getBF(10);
  @$pb.TagNumber(11)
  set requiresHumanReview($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRequiresHumanReview() => $_has(10);
  @$pb.TagNumber(11)
  void clearRequiresHumanReview() => $_clearField(11);

  @$pb.TagNumber(12)
  $0.Struct get filesystemPolicy => $_getN(11);
  @$pb.TagNumber(12)
  set filesystemPolicy($0.Struct value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasFilesystemPolicy() => $_has(11);
  @$pb.TagNumber(12)
  void clearFilesystemPolicy() => $_clearField(12);
  @$pb.TagNumber(12)
  $0.Struct ensureFilesystemPolicy() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get templateSlotId => $_getSZ(12);
  @$pb.TagNumber(13)
  set templateSlotId($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasTemplateSlotId() => $_has(12);
  @$pb.TagNumber(13)
  void clearTemplateSlotId() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get notes => $_getSZ(13);
  @$pb.TagNumber(14)
  set notes($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasNotes() => $_has(13);
  @$pb.TagNumber(14)
  void clearNotes() => $_clearField(14);
}

class BootstrapPlan extends $pb.GeneratedMessage {
  factory BootstrapPlan({
    $core.String? contractVersion,
    $core.String? bootstrapPlanId,
    $core.String? bootstrapIntentId,
    $core.String? projectKey,
    BootstrapPlanningMode? planningMode,
    $core.String? pipelineTemplateId,
    $core.String? campaignGoal,
    $fixnum.Int64? createdAtMs,
    $core.Iterable<BootstrapPlanTask>? tasks,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (bootstrapPlanId != null) result.bootstrapPlanId = bootstrapPlanId;
    if (bootstrapIntentId != null) result.bootstrapIntentId = bootstrapIntentId;
    if (projectKey != null) result.projectKey = projectKey;
    if (planningMode != null) result.planningMode = planningMode;
    if (pipelineTemplateId != null)
      result.pipelineTemplateId = pipelineTemplateId;
    if (campaignGoal != null) result.campaignGoal = campaignGoal;
    if (createdAtMs != null) result.createdAtMs = createdAtMs;
    if (tasks != null) result.tasks.addAll(tasks);
    return result;
  }

  BootstrapPlan._();

  factory BootstrapPlan.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BootstrapPlan.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BootstrapPlan',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'bootstrapPlanId')
    ..aOS(3, _omitFieldNames ? '' : 'bootstrapIntentId')
    ..aOS(4, _omitFieldNames ? '' : 'projectKey')
    ..aE<BootstrapPlanningMode>(5, _omitFieldNames ? '' : 'planningMode',
        enumValues: BootstrapPlanningMode.values)
    ..aOS(6, _omitFieldNames ? '' : 'pipelineTemplateId')
    ..aOS(7, _omitFieldNames ? '' : 'campaignGoal')
    ..a<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'createdAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<BootstrapPlanTask>(9, _omitFieldNames ? '' : 'tasks',
        subBuilder: BootstrapPlanTask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapPlan clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapPlan copyWith(void Function(BootstrapPlan) updates) =>
      super.copyWith((message) => updates(message as BootstrapPlan))
          as BootstrapPlan;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootstrapPlan create() => BootstrapPlan._();
  @$core.override
  BootstrapPlan createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BootstrapPlan getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BootstrapPlan>(create);
  static BootstrapPlan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get bootstrapPlanId => $_getSZ(1);
  @$pb.TagNumber(2)
  set bootstrapPlanId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBootstrapPlanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBootstrapPlanId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get bootstrapIntentId => $_getSZ(2);
  @$pb.TagNumber(3)
  set bootstrapIntentId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBootstrapIntentId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBootstrapIntentId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get projectKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set projectKey($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasProjectKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearProjectKey() => $_clearField(4);

  @$pb.TagNumber(5)
  BootstrapPlanningMode get planningMode => $_getN(4);
  @$pb.TagNumber(5)
  set planningMode(BootstrapPlanningMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPlanningMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearPlanningMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get pipelineTemplateId => $_getSZ(5);
  @$pb.TagNumber(6)
  set pipelineTemplateId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPipelineTemplateId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPipelineTemplateId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get campaignGoal => $_getSZ(6);
  @$pb.TagNumber(7)
  set campaignGoal($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCampaignGoal() => $_has(6);
  @$pb.TagNumber(7)
  void clearCampaignGoal() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get createdAtMs => $_getI64(7);
  @$pb.TagNumber(8)
  set createdAtMs($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCreatedAtMs() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedAtMs() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<BootstrapPlanTask> get tasks => $_getList(8);
}

class BootstrapFilesystemPolicy extends $pb.GeneratedMessage {
  factory BootstrapFilesystemPolicy({
    $core.Iterable<$core.String>? read,
    $core.Iterable<$core.String>? write,
    $core.Iterable<$core.String>? execute,
  }) {
    final result = create();
    if (read != null) result.read.addAll(read);
    if (write != null) result.write.addAll(write);
    if (execute != null) result.execute.addAll(execute);
    return result;
  }

  BootstrapFilesystemPolicy._();

  factory BootstrapFilesystemPolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BootstrapFilesystemPolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BootstrapFilesystemPolicy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'read')
    ..pPS(2, _omitFieldNames ? '' : 'write')
    ..pPS(3, _omitFieldNames ? '' : 'execute')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapFilesystemPolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapFilesystemPolicy copyWith(
          void Function(BootstrapFilesystemPolicy) updates) =>
      super.copyWith((message) => updates(message as BootstrapFilesystemPolicy))
          as BootstrapFilesystemPolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootstrapFilesystemPolicy create() => BootstrapFilesystemPolicy._();
  @$core.override
  BootstrapFilesystemPolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BootstrapFilesystemPolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BootstrapFilesystemPolicy>(create);
  static BootstrapFilesystemPolicy? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get read => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get write => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get execute => $_getList(2);
}

class BootstrapSkillBinding extends $pb.GeneratedMessage {
  factory BootstrapSkillBinding({
    $core.String? id,
    $core.bool? required,
    $core.String? purpose,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (required != null) result.required = required;
    if (purpose != null) result.purpose = purpose;
    return result;
  }

  BootstrapSkillBinding._();

  factory BootstrapSkillBinding.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BootstrapSkillBinding.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BootstrapSkillBinding',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'required')
    ..aOS(3, _omitFieldNames ? '' : 'purpose')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapSkillBinding clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapSkillBinding copyWith(
          void Function(BootstrapSkillBinding) updates) =>
      super.copyWith((message) => updates(message as BootstrapSkillBinding))
          as BootstrapSkillBinding;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootstrapSkillBinding create() => BootstrapSkillBinding._();
  @$core.override
  BootstrapSkillBinding createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BootstrapSkillBinding getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BootstrapSkillBinding>(create);
  static BootstrapSkillBinding? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get required => $_getBF(1);
  @$pb.TagNumber(2)
  set required($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRequired() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequired() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get purpose => $_getSZ(2);
  @$pb.TagNumber(3)
  set purpose($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPurpose() => $_has(2);
  @$pb.TagNumber(3)
  void clearPurpose() => $_clearField(3);
}

class BootstrapTemplateSlotContext extends $pb.GeneratedMessage {
  factory BootstrapTemplateSlotContext({
    $core.String? slotId,
    $core.String? displayName,
    $core.String? role,
    $core.String? interactionMode,
    $core.String? networkMode,
    $core.bool? requiresHumanReview,
    BootstrapFilesystemPolicy? filesystemPolicy,
    $core.Iterable<BootstrapSkillBinding>? requiredSkills,
    $core.Iterable<$core.String>? requiredMcps,
  }) {
    final result = create();
    if (slotId != null) result.slotId = slotId;
    if (displayName != null) result.displayName = displayName;
    if (role != null) result.role = role;
    if (interactionMode != null) result.interactionMode = interactionMode;
    if (networkMode != null) result.networkMode = networkMode;
    if (requiresHumanReview != null)
      result.requiresHumanReview = requiresHumanReview;
    if (filesystemPolicy != null) result.filesystemPolicy = filesystemPolicy;
    if (requiredSkills != null) result.requiredSkills.addAll(requiredSkills);
    if (requiredMcps != null) result.requiredMcps.addAll(requiredMcps);
    return result;
  }

  BootstrapTemplateSlotContext._();

  factory BootstrapTemplateSlotContext.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BootstrapTemplateSlotContext.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BootstrapTemplateSlotContext',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'slotId')
    ..aOS(2, _omitFieldNames ? '' : 'displayName')
    ..aOS(3, _omitFieldNames ? '' : 'role')
    ..aOS(4, _omitFieldNames ? '' : 'interactionMode')
    ..aOS(5, _omitFieldNames ? '' : 'networkMode')
    ..aOB(6, _omitFieldNames ? '' : 'requiresHumanReview')
    ..aOM<BootstrapFilesystemPolicy>(
        7, _omitFieldNames ? '' : 'filesystemPolicy',
        subBuilder: BootstrapFilesystemPolicy.create)
    ..pPM<BootstrapSkillBinding>(8, _omitFieldNames ? '' : 'requiredSkills',
        subBuilder: BootstrapSkillBinding.create)
    ..pPS(9, _omitFieldNames ? '' : 'requiredMcps')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapTemplateSlotContext clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapTemplateSlotContext copyWith(
          void Function(BootstrapTemplateSlotContext) updates) =>
      super.copyWith(
              (message) => updates(message as BootstrapTemplateSlotContext))
          as BootstrapTemplateSlotContext;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootstrapTemplateSlotContext create() =>
      BootstrapTemplateSlotContext._();
  @$core.override
  BootstrapTemplateSlotContext createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BootstrapTemplateSlotContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BootstrapTemplateSlotContext>(create);
  static BootstrapTemplateSlotContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get slotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set slotId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSlotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSlotId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get role => $_getSZ(2);
  @$pb.TagNumber(3)
  set role($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get interactionMode => $_getSZ(3);
  @$pb.TagNumber(4)
  set interactionMode($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasInteractionMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearInteractionMode() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get networkMode => $_getSZ(4);
  @$pb.TagNumber(5)
  set networkMode($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNetworkMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearNetworkMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get requiresHumanReview => $_getBF(5);
  @$pb.TagNumber(6)
  set requiresHumanReview($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRequiresHumanReview() => $_has(5);
  @$pb.TagNumber(6)
  void clearRequiresHumanReview() => $_clearField(6);

  @$pb.TagNumber(7)
  BootstrapFilesystemPolicy get filesystemPolicy => $_getN(6);
  @$pb.TagNumber(7)
  set filesystemPolicy(BootstrapFilesystemPolicy value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFilesystemPolicy() => $_has(6);
  @$pb.TagNumber(7)
  void clearFilesystemPolicy() => $_clearField(7);
  @$pb.TagNumber(7)
  BootstrapFilesystemPolicy ensureFilesystemPolicy() => $_ensure(6);

  @$pb.TagNumber(8)
  $pb.PbList<BootstrapSkillBinding> get requiredSkills => $_getList(7);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get requiredMcps => $_getList(8);
}

class BootstrapTemplateConnectionContext extends $pb.GeneratedMessage {
  factory BootstrapTemplateConnectionContext({
    $core.String? fromSlotId,
    $core.String? toSlotId,
    $core.String? kind,
    $core.bool? required,
    $core.String? description,
  }) {
    final result = create();
    if (fromSlotId != null) result.fromSlotId = fromSlotId;
    if (toSlotId != null) result.toSlotId = toSlotId;
    if (kind != null) result.kind = kind;
    if (required != null) result.required = required;
    if (description != null) result.description = description;
    return result;
  }

  BootstrapTemplateConnectionContext._();

  factory BootstrapTemplateConnectionContext.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BootstrapTemplateConnectionContext.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BootstrapTemplateConnectionContext',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fromSlotId')
    ..aOS(2, _omitFieldNames ? '' : 'toSlotId')
    ..aOS(3, _omitFieldNames ? '' : 'kind')
    ..aOB(4, _omitFieldNames ? '' : 'required')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapTemplateConnectionContext clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapTemplateConnectionContext copyWith(
          void Function(BootstrapTemplateConnectionContext) updates) =>
      super.copyWith((message) =>
              updates(message as BootstrapTemplateConnectionContext))
          as BootstrapTemplateConnectionContext;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootstrapTemplateConnectionContext create() =>
      BootstrapTemplateConnectionContext._();
  @$core.override
  BootstrapTemplateConnectionContext createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BootstrapTemplateConnectionContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BootstrapTemplateConnectionContext>(
          create);
  static BootstrapTemplateConnectionContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fromSlotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fromSlotId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFromSlotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSlotId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get toSlotId => $_getSZ(1);
  @$pb.TagNumber(2)
  set toSlotId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToSlotId() => $_has(1);
  @$pb.TagNumber(2)
  void clearToSlotId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get kind => $_getSZ(2);
  @$pb.TagNumber(3)
  set kind($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasKind() => $_has(2);
  @$pb.TagNumber(3)
  void clearKind() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get required => $_getBF(3);
  @$pb.TagNumber(4)
  set required($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRequired() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequired() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => $_clearField(5);
}

class BootstrapTemplateLaneContext extends $pb.GeneratedMessage {
  factory BootstrapTemplateLaneContext({
    $core.String? laneId,
    $core.String? displayName,
    $core.String? fromSlotId,
    $core.String? toSlotId,
    $core.Iterable<$core.String>? slotIds,
    $core.bool? repeatPerTaskGroup,
  }) {
    final result = create();
    if (laneId != null) result.laneId = laneId;
    if (displayName != null) result.displayName = displayName;
    if (fromSlotId != null) result.fromSlotId = fromSlotId;
    if (toSlotId != null) result.toSlotId = toSlotId;
    if (slotIds != null) result.slotIds.addAll(slotIds);
    if (repeatPerTaskGroup != null)
      result.repeatPerTaskGroup = repeatPerTaskGroup;
    return result;
  }

  BootstrapTemplateLaneContext._();

  factory BootstrapTemplateLaneContext.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BootstrapTemplateLaneContext.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BootstrapTemplateLaneContext',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'laneId')
    ..aOS(2, _omitFieldNames ? '' : 'displayName')
    ..aOS(3, _omitFieldNames ? '' : 'fromSlotId')
    ..aOS(4, _omitFieldNames ? '' : 'toSlotId')
    ..pPS(5, _omitFieldNames ? '' : 'slotIds')
    ..aOB(6, _omitFieldNames ? '' : 'repeatPerTaskGroup')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapTemplateLaneContext clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapTemplateLaneContext copyWith(
          void Function(BootstrapTemplateLaneContext) updates) =>
      super.copyWith(
              (message) => updates(message as BootstrapTemplateLaneContext))
          as BootstrapTemplateLaneContext;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootstrapTemplateLaneContext create() =>
      BootstrapTemplateLaneContext._();
  @$core.override
  BootstrapTemplateLaneContext createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BootstrapTemplateLaneContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BootstrapTemplateLaneContext>(create);
  static BootstrapTemplateLaneContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get laneId => $_getSZ(0);
  @$pb.TagNumber(1)
  set laneId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLaneId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLaneId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fromSlotId => $_getSZ(2);
  @$pb.TagNumber(3)
  set fromSlotId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFromSlotId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromSlotId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get toSlotId => $_getSZ(3);
  @$pb.TagNumber(4)
  set toSlotId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasToSlotId() => $_has(3);
  @$pb.TagNumber(4)
  void clearToSlotId() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get slotIds => $_getList(4);

  @$pb.TagNumber(6)
  $core.bool get repeatPerTaskGroup => $_getBF(5);
  @$pb.TagNumber(6)
  set repeatPerTaskGroup($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRepeatPerTaskGroup() => $_has(5);
  @$pb.TagNumber(6)
  void clearRepeatPerTaskGroup() => $_clearField(6);
}

class BootstrapTemplateContext extends $pb.GeneratedMessage {
  factory BootstrapTemplateContext({
    $core.String? templateId,
    $core.String? displayName,
    $core.Iterable<BootstrapTemplateSlotContext>? slots,
    $core.Iterable<BootstrapTemplateConnectionContext>? connections,
    $core.Iterable<BootstrapTemplateLaneContext>? lanes,
  }) {
    final result = create();
    if (templateId != null) result.templateId = templateId;
    if (displayName != null) result.displayName = displayName;
    if (slots != null) result.slots.addAll(slots);
    if (connections != null) result.connections.addAll(connections);
    if (lanes != null) result.lanes.addAll(lanes);
    return result;
  }

  BootstrapTemplateContext._();

  factory BootstrapTemplateContext.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BootstrapTemplateContext.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BootstrapTemplateContext',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'templateId')
    ..aOS(2, _omitFieldNames ? '' : 'displayName')
    ..pPM<BootstrapTemplateSlotContext>(3, _omitFieldNames ? '' : 'slots',
        subBuilder: BootstrapTemplateSlotContext.create)
    ..pPM<BootstrapTemplateConnectionContext>(
        4, _omitFieldNames ? '' : 'connections',
        subBuilder: BootstrapTemplateConnectionContext.create)
    ..pPM<BootstrapTemplateLaneContext>(5, _omitFieldNames ? '' : 'lanes',
        subBuilder: BootstrapTemplateLaneContext.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapTemplateContext clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapTemplateContext copyWith(
          void Function(BootstrapTemplateContext) updates) =>
      super.copyWith((message) => updates(message as BootstrapTemplateContext))
          as BootstrapTemplateContext;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootstrapTemplateContext create() => BootstrapTemplateContext._();
  @$core.override
  BootstrapTemplateContext createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BootstrapTemplateContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BootstrapTemplateContext>(create);
  static BootstrapTemplateContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get templateId => $_getSZ(0);
  @$pb.TagNumber(1)
  set templateId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTemplateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplateId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<BootstrapTemplateSlotContext> get slots => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<BootstrapTemplateConnectionContext> get connections =>
      $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<BootstrapTemplateLaneContext> get lanes => $_getList(4);
}

class BootstrapPlanningContext extends $pb.GeneratedMessage {
  factory BootstrapPlanningContext({
    $core.String? contractVersion,
    $core.String? projectKey,
    $core.String? targetRepo,
    $core.Iterable<$core.String>? targetRepos,
    $core.String? campaignGoal,
    $core.String? notes,
    $core.String? priorityProfile,
    $core.Iterable<$core.String>? codexCmd,
    $core.Iterable<$core.String>? availableSkillIds,
    BootstrapTemplateContext? selectedTemplate,
    BootstrapPlanningMode? planningMode,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (projectKey != null) result.projectKey = projectKey;
    if (targetRepo != null) result.targetRepo = targetRepo;
    if (targetRepos != null) result.targetRepos.addAll(targetRepos);
    if (campaignGoal != null) result.campaignGoal = campaignGoal;
    if (notes != null) result.notes = notes;
    if (priorityProfile != null) result.priorityProfile = priorityProfile;
    if (codexCmd != null) result.codexCmd.addAll(codexCmd);
    if (availableSkillIds != null)
      result.availableSkillIds.addAll(availableSkillIds);
    if (selectedTemplate != null) result.selectedTemplate = selectedTemplate;
    if (planningMode != null) result.planningMode = planningMode;
    return result;
  }

  BootstrapPlanningContext._();

  factory BootstrapPlanningContext.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BootstrapPlanningContext.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BootstrapPlanningContext',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'projectKey')
    ..aOS(3, _omitFieldNames ? '' : 'targetRepo')
    ..pPS(4, _omitFieldNames ? '' : 'targetRepos')
    ..aOS(5, _omitFieldNames ? '' : 'campaignGoal')
    ..aOS(6, _omitFieldNames ? '' : 'notes')
    ..aOS(7, _omitFieldNames ? '' : 'priorityProfile')
    ..pPS(8, _omitFieldNames ? '' : 'codexCmd')
    ..pPS(9, _omitFieldNames ? '' : 'availableSkillIds')
    ..aOM<BootstrapTemplateContext>(
        10, _omitFieldNames ? '' : 'selectedTemplate',
        subBuilder: BootstrapTemplateContext.create)
    ..aE<BootstrapPlanningMode>(11, _omitFieldNames ? '' : 'planningMode',
        enumValues: BootstrapPlanningMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapPlanningContext clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BootstrapPlanningContext copyWith(
          void Function(BootstrapPlanningContext) updates) =>
      super.copyWith((message) => updates(message as BootstrapPlanningContext))
          as BootstrapPlanningContext;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootstrapPlanningContext create() => BootstrapPlanningContext._();
  @$core.override
  BootstrapPlanningContext createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BootstrapPlanningContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BootstrapPlanningContext>(create);
  static BootstrapPlanningContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get projectKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set projectKey($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProjectKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearProjectKey() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get targetRepo => $_getSZ(2);
  @$pb.TagNumber(3)
  set targetRepo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetRepo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetRepo() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get targetRepos => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get campaignGoal => $_getSZ(4);
  @$pb.TagNumber(5)
  set campaignGoal($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCampaignGoal() => $_has(4);
  @$pb.TagNumber(5)
  void clearCampaignGoal() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get notes => $_getSZ(5);
  @$pb.TagNumber(6)
  set notes($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNotes() => $_has(5);
  @$pb.TagNumber(6)
  void clearNotes() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get priorityProfile => $_getSZ(6);
  @$pb.TagNumber(7)
  set priorityProfile($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPriorityProfile() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriorityProfile() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get codexCmd => $_getList(7);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get availableSkillIds => $_getList(8);

  @$pb.TagNumber(10)
  BootstrapTemplateContext get selectedTemplate => $_getN(9);
  @$pb.TagNumber(10)
  set selectedTemplate(BootstrapTemplateContext value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasSelectedTemplate() => $_has(9);
  @$pb.TagNumber(10)
  void clearSelectedTemplate() => $_clearField(10);
  @$pb.TagNumber(10)
  BootstrapTemplateContext ensureSelectedTemplate() => $_ensure(9);

  @$pb.TagNumber(11)
  BootstrapPlanningMode get planningMode => $_getN(10);
  @$pb.TagNumber(11)
  set planningMode(BootstrapPlanningMode value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasPlanningMode() => $_has(10);
  @$pb.TagNumber(11)
  void clearPlanningMode() => $_clearField(11);
}

class CampaignPipelineTaskRef extends $pb.GeneratedMessage {
  factory CampaignPipelineTaskRef({
    $core.String? taskId,
    $core.String? taskArtifact,
    $core.String? roleId,
    $core.String? taskMilestone,
    $core.String? taskFormat,
    $core.Iterable<$core.String>? dependsOn,
    $core.Iterable<$core.String>? runnerArgs,
    $core.String? interactionMode,
    $core.String? networkMode,
    $core.bool? requiresHumanReview,
    BootstrapFilesystemPolicy? filesystemPolicy,
    $core.Iterable<BootstrapSkillBinding>? requiredSkills,
    $core.Iterable<$core.String>? requiredMcpIds,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    if (taskArtifact != null) result.taskArtifact = taskArtifact;
    if (roleId != null) result.roleId = roleId;
    if (taskMilestone != null) result.taskMilestone = taskMilestone;
    if (taskFormat != null) result.taskFormat = taskFormat;
    if (dependsOn != null) result.dependsOn.addAll(dependsOn);
    if (runnerArgs != null) result.runnerArgs.addAll(runnerArgs);
    if (interactionMode != null) result.interactionMode = interactionMode;
    if (networkMode != null) result.networkMode = networkMode;
    if (requiresHumanReview != null)
      result.requiresHumanReview = requiresHumanReview;
    if (filesystemPolicy != null) result.filesystemPolicy = filesystemPolicy;
    if (requiredSkills != null) result.requiredSkills.addAll(requiredSkills);
    if (requiredMcpIds != null) result.requiredMcpIds.addAll(requiredMcpIds);
    return result;
  }

  CampaignPipelineTaskRef._();

  factory CampaignPipelineTaskRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CampaignPipelineTaskRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CampaignPipelineTaskRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'taskArtifact')
    ..aOS(3, _omitFieldNames ? '' : 'roleId')
    ..aOS(4, _omitFieldNames ? '' : 'taskMilestone')
    ..aOS(5, _omitFieldNames ? '' : 'taskFormat')
    ..pPS(6, _omitFieldNames ? '' : 'dependsOn')
    ..pPS(7, _omitFieldNames ? '' : 'runnerArgs')
    ..aOS(8, _omitFieldNames ? '' : 'interactionMode')
    ..aOS(9, _omitFieldNames ? '' : 'networkMode')
    ..aOB(10, _omitFieldNames ? '' : 'requiresHumanReview')
    ..aOM<BootstrapFilesystemPolicy>(
        11, _omitFieldNames ? '' : 'filesystemPolicy',
        subBuilder: BootstrapFilesystemPolicy.create)
    ..pPM<BootstrapSkillBinding>(12, _omitFieldNames ? '' : 'requiredSkills',
        subBuilder: BootstrapSkillBinding.create)
    ..pPS(13, _omitFieldNames ? '' : 'requiredMcpIds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CampaignPipelineTaskRef clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CampaignPipelineTaskRef copyWith(
          void Function(CampaignPipelineTaskRef) updates) =>
      super.copyWith((message) => updates(message as CampaignPipelineTaskRef))
          as CampaignPipelineTaskRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CampaignPipelineTaskRef create() => CampaignPipelineTaskRef._();
  @$core.override
  CampaignPipelineTaskRef createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CampaignPipelineTaskRef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CampaignPipelineTaskRef>(create);
  static CampaignPipelineTaskRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskArtifact => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskArtifact($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTaskArtifact() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskArtifact() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get roleId => $_getSZ(2);
  @$pb.TagNumber(3)
  set roleId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRoleId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoleId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get taskMilestone => $_getSZ(3);
  @$pb.TagNumber(4)
  set taskMilestone($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTaskMilestone() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskMilestone() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get taskFormat => $_getSZ(4);
  @$pb.TagNumber(5)
  set taskFormat($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTaskFormat() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskFormat() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get dependsOn => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get runnerArgs => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get interactionMode => $_getSZ(7);
  @$pb.TagNumber(8)
  set interactionMode($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasInteractionMode() => $_has(7);
  @$pb.TagNumber(8)
  void clearInteractionMode() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get networkMode => $_getSZ(8);
  @$pb.TagNumber(9)
  set networkMode($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasNetworkMode() => $_has(8);
  @$pb.TagNumber(9)
  void clearNetworkMode() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get requiresHumanReview => $_getBF(9);
  @$pb.TagNumber(10)
  set requiresHumanReview($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRequiresHumanReview() => $_has(9);
  @$pb.TagNumber(10)
  void clearRequiresHumanReview() => $_clearField(10);

  @$pb.TagNumber(11)
  BootstrapFilesystemPolicy get filesystemPolicy => $_getN(10);
  @$pb.TagNumber(11)
  set filesystemPolicy(BootstrapFilesystemPolicy value) =>
      $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasFilesystemPolicy() => $_has(10);
  @$pb.TagNumber(11)
  void clearFilesystemPolicy() => $_clearField(11);
  @$pb.TagNumber(11)
  BootstrapFilesystemPolicy ensureFilesystemPolicy() => $_ensure(10);

  @$pb.TagNumber(12)
  $pb.PbList<BootstrapSkillBinding> get requiredSkills => $_getList(11);

  @$pb.TagNumber(13)
  $pb.PbList<$core.String> get requiredMcpIds => $_getList(12);
}

class CampaignPipelineConnection extends $pb.GeneratedMessage {
  factory CampaignPipelineConnection({
    $core.String? fromTaskId,
    $core.String? toTaskId,
    CampaignPipelineConnectionKind? kind,
    $core.bool? required,
    $core.String? description,
  }) {
    final result = create();
    if (fromTaskId != null) result.fromTaskId = fromTaskId;
    if (toTaskId != null) result.toTaskId = toTaskId;
    if (kind != null) result.kind = kind;
    if (required != null) result.required = required;
    if (description != null) result.description = description;
    return result;
  }

  CampaignPipelineConnection._();

  factory CampaignPipelineConnection.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CampaignPipelineConnection.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CampaignPipelineConnection',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fromTaskId')
    ..aOS(2, _omitFieldNames ? '' : 'toTaskId')
    ..aE<CampaignPipelineConnectionKind>(3, _omitFieldNames ? '' : 'kind',
        enumValues: CampaignPipelineConnectionKind.values)
    ..aOB(4, _omitFieldNames ? '' : 'required')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CampaignPipelineConnection clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CampaignPipelineConnection copyWith(
          void Function(CampaignPipelineConnection) updates) =>
      super.copyWith(
              (message) => updates(message as CampaignPipelineConnection))
          as CampaignPipelineConnection;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CampaignPipelineConnection create() => CampaignPipelineConnection._();
  @$core.override
  CampaignPipelineConnection createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CampaignPipelineConnection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CampaignPipelineConnection>(create);
  static CampaignPipelineConnection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fromTaskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fromTaskId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFromTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromTaskId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get toTaskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set toTaskId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearToTaskId() => $_clearField(2);

  @$pb.TagNumber(3)
  CampaignPipelineConnectionKind get kind => $_getN(2);
  @$pb.TagNumber(3)
  set kind(CampaignPipelineConnectionKind value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasKind() => $_has(2);
  @$pb.TagNumber(3)
  void clearKind() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get required => $_getBF(3);
  @$pb.TagNumber(4)
  set required($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRequired() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequired() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => $_clearField(5);
}

class CampaignPipelineGate extends $pb.GeneratedMessage {
  factory CampaignPipelineGate({
    $core.String? name,
    $core.Iterable<$core.String>? command,
    $core.String? workdir,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (command != null) result.command.addAll(command);
    if (workdir != null) result.workdir = workdir;
    return result;
  }

  CampaignPipelineGate._();

  factory CampaignPipelineGate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CampaignPipelineGate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CampaignPipelineGate',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'command')
    ..aOS(3, _omitFieldNames ? '' : 'workdir')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CampaignPipelineGate clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CampaignPipelineGate copyWith(void Function(CampaignPipelineGate) updates) =>
      super.copyWith((message) => updates(message as CampaignPipelineGate))
          as CampaignPipelineGate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CampaignPipelineGate create() => CampaignPipelineGate._();
  @$core.override
  CampaignPipelineGate createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CampaignPipelineGate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CampaignPipelineGate>(create);
  static CampaignPipelineGate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get command => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get workdir => $_getSZ(2);
  @$pb.TagNumber(3)
  set workdir($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWorkdir() => $_has(2);
  @$pb.TagNumber(3)
  void clearWorkdir() => $_clearField(3);
}

class CampaignPipelineGatePolicy extends $pb.GeneratedMessage {
  factory CampaignPipelineGatePolicy({
    $core.bool? requireStandard,
    $core.Iterable<CampaignPipelineGate>? requiredGates,
  }) {
    final result = create();
    if (requireStandard != null) result.requireStandard = requireStandard;
    if (requiredGates != null) result.requiredGates.addAll(requiredGates);
    return result;
  }

  CampaignPipelineGatePolicy._();

  factory CampaignPipelineGatePolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CampaignPipelineGatePolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CampaignPipelineGatePolicy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'requireStandard')
    ..pPM<CampaignPipelineGate>(2, _omitFieldNames ? '' : 'requiredGates',
        subBuilder: CampaignPipelineGate.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CampaignPipelineGatePolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CampaignPipelineGatePolicy copyWith(
          void Function(CampaignPipelineGatePolicy) updates) =>
      super.copyWith(
              (message) => updates(message as CampaignPipelineGatePolicy))
          as CampaignPipelineGatePolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CampaignPipelineGatePolicy create() => CampaignPipelineGatePolicy._();
  @$core.override
  CampaignPipelineGatePolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CampaignPipelineGatePolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CampaignPipelineGatePolicy>(create);
  static CampaignPipelineGatePolicy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get requireStandard => $_getBF(0);
  @$pb.TagNumber(1)
  set requireStandard($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequireStandard() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequireStandard() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<CampaignPipelineGate> get requiredGates => $_getList(1);
}

class CampaignPipelineSpec extends $pb.GeneratedMessage {
  factory CampaignPipelineSpec({
    $core.String? contractVersion,
    $core.String? pipelineId,
    $core.String? version,
    $core.String? objective,
    $core.String? projectKey,
    $core.bool? continueOnError,
    CampaignPipelineGatePolicy? gatePolicy,
    $0.Struct? metadata,
    $core.Iterable<CampaignPipelineConnection>? connections,
    $core.Iterable<CampaignPipelineTaskRef>? tasks,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (pipelineId != null) result.pipelineId = pipelineId;
    if (version != null) result.version = version;
    if (objective != null) result.objective = objective;
    if (projectKey != null) result.projectKey = projectKey;
    if (continueOnError != null) result.continueOnError = continueOnError;
    if (gatePolicy != null) result.gatePolicy = gatePolicy;
    if (metadata != null) result.metadata = metadata;
    if (connections != null) result.connections.addAll(connections);
    if (tasks != null) result.tasks.addAll(tasks);
    return result;
  }

  CampaignPipelineSpec._();

  factory CampaignPipelineSpec.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CampaignPipelineSpec.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CampaignPipelineSpec',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'pipelineId')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..aOS(4, _omitFieldNames ? '' : 'objective')
    ..aOS(5, _omitFieldNames ? '' : 'projectKey')
    ..aOB(6, _omitFieldNames ? '' : 'continueOnError')
    ..aOM<CampaignPipelineGatePolicy>(7, _omitFieldNames ? '' : 'gatePolicy',
        subBuilder: CampaignPipelineGatePolicy.create)
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'metadata',
        subBuilder: $0.Struct.create)
    ..pPM<CampaignPipelineConnection>(9, _omitFieldNames ? '' : 'connections',
        subBuilder: CampaignPipelineConnection.create)
    ..pPM<CampaignPipelineTaskRef>(10, _omitFieldNames ? '' : 'tasks',
        subBuilder: CampaignPipelineTaskRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CampaignPipelineSpec clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CampaignPipelineSpec copyWith(void Function(CampaignPipelineSpec) updates) =>
      super.copyWith((message) => updates(message as CampaignPipelineSpec))
          as CampaignPipelineSpec;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CampaignPipelineSpec create() => CampaignPipelineSpec._();
  @$core.override
  CampaignPipelineSpec createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CampaignPipelineSpec getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CampaignPipelineSpec>(create);
  static CampaignPipelineSpec? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get pipelineId => $_getSZ(1);
  @$pb.TagNumber(2)
  set pipelineId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPipelineId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPipelineId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get objective => $_getSZ(3);
  @$pb.TagNumber(4)
  set objective($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasObjective() => $_has(3);
  @$pb.TagNumber(4)
  void clearObjective() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get projectKey => $_getSZ(4);
  @$pb.TagNumber(5)
  set projectKey($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasProjectKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearProjectKey() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get continueOnError => $_getBF(5);
  @$pb.TagNumber(6)
  set continueOnError($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasContinueOnError() => $_has(5);
  @$pb.TagNumber(6)
  void clearContinueOnError() => $_clearField(6);

  @$pb.TagNumber(7)
  CampaignPipelineGatePolicy get gatePolicy => $_getN(6);
  @$pb.TagNumber(7)
  set gatePolicy(CampaignPipelineGatePolicy value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasGatePolicy() => $_has(6);
  @$pb.TagNumber(7)
  void clearGatePolicy() => $_clearField(7);
  @$pb.TagNumber(7)
  CampaignPipelineGatePolicy ensureGatePolicy() => $_ensure(6);

  @$pb.TagNumber(8)
  $0.Struct get metadata => $_getN(7);
  @$pb.TagNumber(8)
  set metadata($0.Struct value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasMetadata() => $_has(7);
  @$pb.TagNumber(8)
  void clearMetadata() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Struct ensureMetadata() => $_ensure(7);

  @$pb.TagNumber(9)
  $pb.PbList<CampaignPipelineConnection> get connections => $_getList(8);

  @$pb.TagNumber(10)
  $pb.PbList<CampaignPipelineTaskRef> get tasks => $_getList(9);
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

class ArtifactDescriptor extends $pb.GeneratedMessage {
  factory ArtifactDescriptor({
    $core.String? artifactId,
    ArtifactKind? kind,
    $core.String? digest,
    $core.String? mediaType,
    $core.String? logicalName,
    $core.String? producer,
    $core.String? contractVersion,
  }) {
    final result = create();
    if (artifactId != null) result.artifactId = artifactId;
    if (kind != null) result.kind = kind;
    if (digest != null) result.digest = digest;
    if (mediaType != null) result.mediaType = mediaType;
    if (logicalName != null) result.logicalName = logicalName;
    if (producer != null) result.producer = producer;
    if (contractVersion != null) result.contractVersion = contractVersion;
    return result;
  }

  ArtifactDescriptor._();

  factory ArtifactDescriptor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ArtifactDescriptor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ArtifactDescriptor',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'artifactId')
    ..aE<ArtifactKind>(2, _omitFieldNames ? '' : 'kind',
        enumValues: ArtifactKind.values)
    ..aOS(3, _omitFieldNames ? '' : 'digest')
    ..aOS(4, _omitFieldNames ? '' : 'mediaType')
    ..aOS(5, _omitFieldNames ? '' : 'logicalName')
    ..aOS(6, _omitFieldNames ? '' : 'producer')
    ..aOS(7, _omitFieldNames ? '' : 'contractVersion')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArtifactDescriptor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArtifactDescriptor copyWith(void Function(ArtifactDescriptor) updates) =>
      super.copyWith((message) => updates(message as ArtifactDescriptor))
          as ArtifactDescriptor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArtifactDescriptor create() => ArtifactDescriptor._();
  @$core.override
  ArtifactDescriptor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ArtifactDescriptor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ArtifactDescriptor>(create);
  static ArtifactDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get artifactId => $_getSZ(0);
  @$pb.TagNumber(1)
  set artifactId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasArtifactId() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtifactId() => $_clearField(1);

  @$pb.TagNumber(2)
  ArtifactKind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind(ArtifactKind value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get digest => $_getSZ(2);
  @$pb.TagNumber(3)
  set digest($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDigest() => $_has(2);
  @$pb.TagNumber(3)
  void clearDigest() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get mediaType => $_getSZ(3);
  @$pb.TagNumber(4)
  set mediaType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMediaType() => $_has(3);
  @$pb.TagNumber(4)
  void clearMediaType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get logicalName => $_getSZ(4);
  @$pb.TagNumber(5)
  set logicalName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLogicalName() => $_has(4);
  @$pb.TagNumber(5)
  void clearLogicalName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get producer => $_getSZ(5);
  @$pb.TagNumber(6)
  set producer($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasProducer() => $_has(5);
  @$pb.TagNumber(6)
  void clearProducer() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get contractVersion => $_getSZ(6);
  @$pb.TagNumber(7)
  set contractVersion($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasContractVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearContractVersion() => $_clearField(7);
}

class DigestManifest extends $pb.GeneratedMessage {
  factory DigestManifest({
    $core.String? contractVersion,
    $core.String? manifestId,
    $core.String? runId,
    $core.String? planId,
    $fixnum.Int64? createdAt,
    $core.String? combinedDigest,
    $core.String? eventDigest,
    $core.Iterable<ArtifactDescriptor>? artifactDescriptors,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (manifestId != null) result.manifestId = manifestId;
    if (runId != null) result.runId = runId;
    if (planId != null) result.planId = planId;
    if (createdAt != null) result.createdAt = createdAt;
    if (combinedDigest != null) result.combinedDigest = combinedDigest;
    if (eventDigest != null) result.eventDigest = eventDigest;
    if (artifactDescriptors != null)
      result.artifactDescriptors.addAll(artifactDescriptors);
    return result;
  }

  DigestManifest._();

  factory DigestManifest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DigestManifest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DigestManifest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'manifestId')
    ..aOS(3, _omitFieldNames ? '' : 'runId')
    ..aOS(4, _omitFieldNames ? '' : 'planId')
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(6, _omitFieldNames ? '' : 'combinedDigest')
    ..aOS(7, _omitFieldNames ? '' : 'eventDigest')
    ..pPM<ArtifactDescriptor>(8, _omitFieldNames ? '' : 'artifactDescriptors',
        subBuilder: ArtifactDescriptor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DigestManifest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DigestManifest copyWith(void Function(DigestManifest) updates) =>
      super.copyWith((message) => updates(message as DigestManifest))
          as DigestManifest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DigestManifest create() => DigestManifest._();
  @$core.override
  DigestManifest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DigestManifest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DigestManifest>(create);
  static DigestManifest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get manifestId => $_getSZ(1);
  @$pb.TagNumber(2)
  set manifestId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasManifestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearManifestId() => $_clearField(2);

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
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get combinedDigest => $_getSZ(5);
  @$pb.TagNumber(6)
  set combinedDigest($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCombinedDigest() => $_has(5);
  @$pb.TagNumber(6)
  void clearCombinedDigest() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get eventDigest => $_getSZ(6);
  @$pb.TagNumber(7)
  set eventDigest($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasEventDigest() => $_has(6);
  @$pb.TagNumber(7)
  void clearEventDigest() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<ArtifactDescriptor> get artifactDescriptors => $_getList(7);
}

class PrincipalRef extends $pb.GeneratedMessage {
  factory PrincipalRef({
    $core.String? principalId,
    $core.String? provider,
    $core.String? displayName,
  }) {
    final result = create();
    if (principalId != null) result.principalId = principalId;
    if (provider != null) result.provider = provider;
    if (displayName != null) result.displayName = displayName;
    return result;
  }

  PrincipalRef._();

  factory PrincipalRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrincipalRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrincipalRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'principalId')
    ..aOS(2, _omitFieldNames ? '' : 'provider')
    ..aOS(3, _omitFieldNames ? '' : 'displayName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrincipalRef clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrincipalRef copyWith(void Function(PrincipalRef) updates) =>
      super.copyWith((message) => updates(message as PrincipalRef))
          as PrincipalRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrincipalRef create() => PrincipalRef._();
  @$core.override
  PrincipalRef createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrincipalRef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrincipalRef>(create);
  static PrincipalRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get principalId => $_getSZ(0);
  @$pb.TagNumber(1)
  set principalId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPrincipalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrincipalId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get provider => $_getSZ(1);
  @$pb.TagNumber(2)
  set provider($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get displayName => $_getSZ(2);
  @$pb.TagNumber(3)
  set displayName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDisplayName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayName() => $_clearField(3);
}

class TenantRef extends $pb.GeneratedMessage {
  factory TenantRef({
    $core.String? tenantId,
    $core.String? displayName,
  }) {
    final result = create();
    if (tenantId != null) result.tenantId = tenantId;
    if (displayName != null) result.displayName = displayName;
    return result;
  }

  TenantRef._();

  factory TenantRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TenantRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TenantRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tenantId')
    ..aOS(2, _omitFieldNames ? '' : 'displayName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TenantRef clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TenantRef copyWith(void Function(TenantRef) updates) =>
      super.copyWith((message) => updates(message as TenantRef)) as TenantRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TenantRef create() => TenantRef._();
  @$core.override
  TenantRef createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TenantRef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TenantRef>(create);
  static TenantRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tenantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tenantId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTenantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTenantId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);
}

class AuthContext extends $pb.GeneratedMessage {
  factory AuthContext({
    $core.String? contractVersion,
    $core.String? authContextId,
    PrincipalRef? principal,
    TenantRef? tenant,
    AuthMechanism? mechanism,
    $core.String? credentialId,
    $core.Iterable<$core.String>? scopes,
    $fixnum.Int64? issuedAt,
    $fixnum.Int64? expiresAt,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (authContextId != null) result.authContextId = authContextId;
    if (principal != null) result.principal = principal;
    if (tenant != null) result.tenant = tenant;
    if (mechanism != null) result.mechanism = mechanism;
    if (credentialId != null) result.credentialId = credentialId;
    if (scopes != null) result.scopes.addAll(scopes);
    if (issuedAt != null) result.issuedAt = issuedAt;
    if (expiresAt != null) result.expiresAt = expiresAt;
    return result;
  }

  AuthContext._();

  factory AuthContext.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthContext.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthContext',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'authContextId')
    ..aOM<PrincipalRef>(3, _omitFieldNames ? '' : 'principal',
        subBuilder: PrincipalRef.create)
    ..aOM<TenantRef>(4, _omitFieldNames ? '' : 'tenant',
        subBuilder: TenantRef.create)
    ..aE<AuthMechanism>(5, _omitFieldNames ? '' : 'mechanism',
        enumValues: AuthMechanism.values)
    ..aOS(6, _omitFieldNames ? '' : 'credentialId')
    ..pPS(7, _omitFieldNames ? '' : 'scopes')
    ..a<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'issuedAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'expiresAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthContext clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthContext copyWith(void Function(AuthContext) updates) =>
      super.copyWith((message) => updates(message as AuthContext))
          as AuthContext;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthContext create() => AuthContext._();
  @$core.override
  AuthContext createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthContext>(create);
  static AuthContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get authContextId => $_getSZ(1);
  @$pb.TagNumber(2)
  set authContextId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAuthContextId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthContextId() => $_clearField(2);

  @$pb.TagNumber(3)
  PrincipalRef get principal => $_getN(2);
  @$pb.TagNumber(3)
  set principal(PrincipalRef value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPrincipal() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrincipal() => $_clearField(3);
  @$pb.TagNumber(3)
  PrincipalRef ensurePrincipal() => $_ensure(2);

  @$pb.TagNumber(4)
  TenantRef get tenant => $_getN(3);
  @$pb.TagNumber(4)
  set tenant(TenantRef value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTenant() => $_has(3);
  @$pb.TagNumber(4)
  void clearTenant() => $_clearField(4);
  @$pb.TagNumber(4)
  TenantRef ensureTenant() => $_ensure(3);

  @$pb.TagNumber(5)
  AuthMechanism get mechanism => $_getN(4);
  @$pb.TagNumber(5)
  set mechanism(AuthMechanism value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMechanism() => $_has(4);
  @$pb.TagNumber(5)
  void clearMechanism() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get credentialId => $_getSZ(5);
  @$pb.TagNumber(6)
  set credentialId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCredentialId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCredentialId() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get scopes => $_getList(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get issuedAt => $_getI64(7);
  @$pb.TagNumber(8)
  set issuedAt($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIssuedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearIssuedAt() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get expiresAt => $_getI64(8);
  @$pb.TagNumber(9)
  set expiresAt($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasExpiresAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearExpiresAt() => $_clearField(9);
}

class UsageRecord extends $pb.GeneratedMessage {
  factory UsageRecord({
    $core.String? contractVersion,
    $core.String? usageId,
    PrincipalRef? principal,
    TenantRef? tenant,
    $core.String? runId,
    $core.String? planId,
    UsageCategory? category,
    $core.String? metricName,
    $fixnum.Int64? quantity,
    UsageUnit? unit,
    $fixnum.Int64? recordedAt,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (usageId != null) result.usageId = usageId;
    if (principal != null) result.principal = principal;
    if (tenant != null) result.tenant = tenant;
    if (runId != null) result.runId = runId;
    if (planId != null) result.planId = planId;
    if (category != null) result.category = category;
    if (metricName != null) result.metricName = metricName;
    if (quantity != null) result.quantity = quantity;
    if (unit != null) result.unit = unit;
    if (recordedAt != null) result.recordedAt = recordedAt;
    return result;
  }

  UsageRecord._();

  factory UsageRecord.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UsageRecord.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UsageRecord',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'usageId')
    ..aOM<PrincipalRef>(3, _omitFieldNames ? '' : 'principal',
        subBuilder: PrincipalRef.create)
    ..aOM<TenantRef>(4, _omitFieldNames ? '' : 'tenant',
        subBuilder: TenantRef.create)
    ..aOS(5, _omitFieldNames ? '' : 'runId')
    ..aOS(6, _omitFieldNames ? '' : 'planId')
    ..aE<UsageCategory>(7, _omitFieldNames ? '' : 'category',
        enumValues: UsageCategory.values)
    ..aOS(8, _omitFieldNames ? '' : 'metricName')
    ..a<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aE<UsageUnit>(10, _omitFieldNames ? '' : 'unit',
        enumValues: UsageUnit.values)
    ..a<$fixnum.Int64>(
        11, _omitFieldNames ? '' : 'recordedAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsageRecord clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsageRecord copyWith(void Function(UsageRecord) updates) =>
      super.copyWith((message) => updates(message as UsageRecord))
          as UsageRecord;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsageRecord create() => UsageRecord._();
  @$core.override
  UsageRecord createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UsageRecord getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UsageRecord>(create);
  static UsageRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get usageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set usageId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUsageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsageId() => $_clearField(2);

  @$pb.TagNumber(3)
  PrincipalRef get principal => $_getN(2);
  @$pb.TagNumber(3)
  set principal(PrincipalRef value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPrincipal() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrincipal() => $_clearField(3);
  @$pb.TagNumber(3)
  PrincipalRef ensurePrincipal() => $_ensure(2);

  @$pb.TagNumber(4)
  TenantRef get tenant => $_getN(3);
  @$pb.TagNumber(4)
  set tenant(TenantRef value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTenant() => $_has(3);
  @$pb.TagNumber(4)
  void clearTenant() => $_clearField(4);
  @$pb.TagNumber(4)
  TenantRef ensureTenant() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get runId => $_getSZ(4);
  @$pb.TagNumber(5)
  set runId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRunId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRunId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get planId => $_getSZ(5);
  @$pb.TagNumber(6)
  set planId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPlanId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlanId() => $_clearField(6);

  @$pb.TagNumber(7)
  UsageCategory get category => $_getN(6);
  @$pb.TagNumber(7)
  set category(UsageCategory value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCategory() => $_has(6);
  @$pb.TagNumber(7)
  void clearCategory() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get metricName => $_getSZ(7);
  @$pb.TagNumber(8)
  set metricName($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMetricName() => $_has(7);
  @$pb.TagNumber(8)
  void clearMetricName() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get quantity => $_getI64(8);
  @$pb.TagNumber(9)
  set quantity($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasQuantity() => $_has(8);
  @$pb.TagNumber(9)
  void clearQuantity() => $_clearField(9);

  @$pb.TagNumber(10)
  UsageUnit get unit => $_getN(9);
  @$pb.TagNumber(10)
  set unit(UsageUnit value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasUnit() => $_has(9);
  @$pb.TagNumber(10)
  void clearUnit() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get recordedAt => $_getI64(10);
  @$pb.TagNumber(11)
  set recordedAt($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRecordedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearRecordedAt() => $_clearField(11);
}

class AuditExportManifest extends $pb.GeneratedMessage {
  factory AuditExportManifest({
    $core.String? contractVersion,
    $core.String? exportId,
    PrincipalRef? principal,
    TenantRef? tenant,
    $core.String? runId,
    $core.String? planId,
    $fixnum.Int64? exportedAt,
    $core.String? combinedDigest,
    $core.Iterable<ArtifactDescriptor>? artifactDescriptors,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (exportId != null) result.exportId = exportId;
    if (principal != null) result.principal = principal;
    if (tenant != null) result.tenant = tenant;
    if (runId != null) result.runId = runId;
    if (planId != null) result.planId = planId;
    if (exportedAt != null) result.exportedAt = exportedAt;
    if (combinedDigest != null) result.combinedDigest = combinedDigest;
    if (artifactDescriptors != null)
      result.artifactDescriptors.addAll(artifactDescriptors);
    return result;
  }

  AuditExportManifest._();

  factory AuditExportManifest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuditExportManifest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuditExportManifest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'exportId')
    ..aOM<PrincipalRef>(3, _omitFieldNames ? '' : 'principal',
        subBuilder: PrincipalRef.create)
    ..aOM<TenantRef>(4, _omitFieldNames ? '' : 'tenant',
        subBuilder: TenantRef.create)
    ..aOS(5, _omitFieldNames ? '' : 'runId')
    ..aOS(6, _omitFieldNames ? '' : 'planId')
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'exportedAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(8, _omitFieldNames ? '' : 'combinedDigest')
    ..pPM<ArtifactDescriptor>(9, _omitFieldNames ? '' : 'artifactDescriptors',
        subBuilder: ArtifactDescriptor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuditExportManifest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuditExportManifest copyWith(void Function(AuditExportManifest) updates) =>
      super.copyWith((message) => updates(message as AuditExportManifest))
          as AuditExportManifest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuditExportManifest create() => AuditExportManifest._();
  @$core.override
  AuditExportManifest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuditExportManifest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuditExportManifest>(create);
  static AuditExportManifest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get exportId => $_getSZ(1);
  @$pb.TagNumber(2)
  set exportId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExportId() => $_has(1);
  @$pb.TagNumber(2)
  void clearExportId() => $_clearField(2);

  @$pb.TagNumber(3)
  PrincipalRef get principal => $_getN(2);
  @$pb.TagNumber(3)
  set principal(PrincipalRef value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPrincipal() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrincipal() => $_clearField(3);
  @$pb.TagNumber(3)
  PrincipalRef ensurePrincipal() => $_ensure(2);

  @$pb.TagNumber(4)
  TenantRef get tenant => $_getN(3);
  @$pb.TagNumber(4)
  set tenant(TenantRef value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTenant() => $_has(3);
  @$pb.TagNumber(4)
  void clearTenant() => $_clearField(4);
  @$pb.TagNumber(4)
  TenantRef ensureTenant() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get runId => $_getSZ(4);
  @$pb.TagNumber(5)
  set runId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRunId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRunId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get planId => $_getSZ(5);
  @$pb.TagNumber(6)
  set planId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPlanId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlanId() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get exportedAt => $_getI64(6);
  @$pb.TagNumber(7)
  set exportedAt($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasExportedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearExportedAt() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get combinedDigest => $_getSZ(7);
  @$pb.TagNumber(8)
  set combinedDigest($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCombinedDigest() => $_has(7);
  @$pb.TagNumber(8)
  void clearCombinedDigest() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<ArtifactDescriptor> get artifactDescriptors => $_getList(8);
}

class ReplanPolicy extends $pb.GeneratedMessage {
  factory ReplanPolicy({
    ReplanStrategy? strategy,
    $core.int? maxAttempts,
  }) {
    final result = create();
    if (strategy != null) result.strategy = strategy;
    if (maxAttempts != null) result.maxAttempts = maxAttempts;
    return result;
  }

  ReplanPolicy._();

  factory ReplanPolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReplanPolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReplanPolicy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aE<ReplanStrategy>(1, _omitFieldNames ? '' : 'strategy',
        enumValues: ReplanStrategy.values)
    ..aI(2, _omitFieldNames ? '' : 'maxAttempts',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplanPolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplanPolicy copyWith(void Function(ReplanPolicy) updates) =>
      super.copyWith((message) => updates(message as ReplanPolicy))
          as ReplanPolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplanPolicy create() => ReplanPolicy._();
  @$core.override
  ReplanPolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReplanPolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReplanPolicy>(create);
  static ReplanPolicy? _defaultInstance;

  @$pb.TagNumber(1)
  ReplanStrategy get strategy => $_getN(0);
  @$pb.TagNumber(1)
  set strategy(ReplanStrategy value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStrategy() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrategy() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxAttempts => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxAttempts($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxAttempts() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxAttempts() => $_clearField(2);
}

class StepOutputExpectation extends $pb.GeneratedMessage {
  factory StepOutputExpectation({
    ArtifactKind? kind,
    $core.String? logicalName,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (logicalName != null) result.logicalName = logicalName;
    return result;
  }

  StepOutputExpectation._();

  factory StepOutputExpectation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StepOutputExpectation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StepOutputExpectation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aE<ArtifactKind>(1, _omitFieldNames ? '' : 'kind',
        enumValues: ArtifactKind.values)
    ..aOS(2, _omitFieldNames ? '' : 'logicalName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StepOutputExpectation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StepOutputExpectation copyWith(
          void Function(StepOutputExpectation) updates) =>
      super.copyWith((message) => updates(message as StepOutputExpectation))
          as StepOutputExpectation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StepOutputExpectation create() => StepOutputExpectation._();
  @$core.override
  StepOutputExpectation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StepOutputExpectation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StepOutputExpectation>(create);
  static StepOutputExpectation? _defaultInstance;

  @$pb.TagNumber(1)
  ArtifactKind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(ArtifactKind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get logicalName => $_getSZ(1);
  @$pb.TagNumber(2)
  set logicalName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLogicalName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicalName() => $_clearField(2);
}

class PlanStep extends $pb.GeneratedMessage {
  factory PlanStep({
    $core.String? stepId,
    $core.String? description,
    $core.Iterable<$core.String>? dependsOn,
    $0.Struct? taskTemplate,
    FailureDetail? failure,
    $core.String? taskId,
    PlanStepKind? kind,
    $0.Struct? inputs,
    $core.Iterable<StepOutputExpectation>? expectedOutputs,
    $core.Iterable<$core.String>? policyTags,
  }) {
    final result = create();
    if (stepId != null) result.stepId = stepId;
    if (description != null) result.description = description;
    if (dependsOn != null) result.dependsOn.addAll(dependsOn);
    if (taskTemplate != null) result.taskTemplate = taskTemplate;
    if (failure != null) result.failure = failure;
    if (taskId != null) result.taskId = taskId;
    if (kind != null) result.kind = kind;
    if (inputs != null) result.inputs = inputs;
    if (expectedOutputs != null) result.expectedOutputs.addAll(expectedOutputs);
    if (policyTags != null) result.policyTags.addAll(policyTags);
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
    ..aOS(6, _omitFieldNames ? '' : 'taskId')
    ..aE<PlanStepKind>(7, _omitFieldNames ? '' : 'kind',
        enumValues: PlanStepKind.values)
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'inputs',
        subBuilder: $0.Struct.create)
    ..pPM<StepOutputExpectation>(9, _omitFieldNames ? '' : 'expectedOutputs',
        subBuilder: StepOutputExpectation.create)
    ..pPS(10, _omitFieldNames ? '' : 'policyTags')
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

  @$pb.TagNumber(6)
  $core.String get taskId => $_getSZ(5);
  @$pb.TagNumber(6)
  set taskId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTaskId() => $_has(5);
  @$pb.TagNumber(6)
  void clearTaskId() => $_clearField(6);

  @$pb.TagNumber(7)
  PlanStepKind get kind => $_getN(6);
  @$pb.TagNumber(7)
  set kind(PlanStepKind value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasKind() => $_has(6);
  @$pb.TagNumber(7)
  void clearKind() => $_clearField(7);

  @$pb.TagNumber(8)
  $0.Struct get inputs => $_getN(7);
  @$pb.TagNumber(8)
  set inputs($0.Struct value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasInputs() => $_has(7);
  @$pb.TagNumber(8)
  void clearInputs() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Struct ensureInputs() => $_ensure(7);

  @$pb.TagNumber(9)
  $pb.PbList<StepOutputExpectation> get expectedOutputs => $_getList(8);

  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get policyTags => $_getList(9);
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
    $core.String? intentId,
    $core.String? planVersion,
    $core.String? plannerVersion,
    ReplanPolicy? replanPolicy,
    $core.String? inputDigest,
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
    if (intentId != null) result.intentId = intentId;
    if (planVersion != null) result.planVersion = planVersion;
    if (plannerVersion != null) result.plannerVersion = plannerVersion;
    if (replanPolicy != null) result.replanPolicy = replanPolicy;
    if (inputDigest != null) result.inputDigest = inputDigest;
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
    ..aOS(10, _omitFieldNames ? '' : 'intentId')
    ..aOS(11, _omitFieldNames ? '' : 'planVersion')
    ..aOS(12, _omitFieldNames ? '' : 'plannerVersion')
    ..aOM<ReplanPolicy>(13, _omitFieldNames ? '' : 'replanPolicy',
        subBuilder: ReplanPolicy.create)
    ..aOS(14, _omitFieldNames ? '' : 'inputDigest')
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

  @$pb.TagNumber(10)
  $core.String get intentId => $_getSZ(9);
  @$pb.TagNumber(10)
  set intentId($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIntentId() => $_has(9);
  @$pb.TagNumber(10)
  void clearIntentId() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get planVersion => $_getSZ(10);
  @$pb.TagNumber(11)
  set planVersion($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPlanVersion() => $_has(10);
  @$pb.TagNumber(11)
  void clearPlanVersion() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get plannerVersion => $_getSZ(11);
  @$pb.TagNumber(12)
  set plannerVersion($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasPlannerVersion() => $_has(11);
  @$pb.TagNumber(12)
  void clearPlannerVersion() => $_clearField(12);

  @$pb.TagNumber(13)
  ReplanPolicy get replanPolicy => $_getN(12);
  @$pb.TagNumber(13)
  set replanPolicy(ReplanPolicy value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasReplanPolicy() => $_has(12);
  @$pb.TagNumber(13)
  void clearReplanPolicy() => $_clearField(13);
  @$pb.TagNumber(13)
  ReplanPolicy ensureReplanPolicy() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.String get inputDigest => $_getSZ(13);
  @$pb.TagNumber(14)
  set inputDigest($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasInputDigest() => $_has(13);
  @$pb.TagNumber(14)
  void clearInputDigest() => $_clearField(14);
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

class VerificationCheck extends $pb.GeneratedMessage {
  factory VerificationCheck({
    $core.String? checkId,
    $core.String? name,
    VerificationCheckStatus? status,
    $core.String? message,
    $core.Iterable<$core.String>? artifactIds,
  }) {
    final result = create();
    if (checkId != null) result.checkId = checkId;
    if (name != null) result.name = name;
    if (status != null) result.status = status;
    if (message != null) result.message = message;
    if (artifactIds != null) result.artifactIds.addAll(artifactIds);
    return result;
  }

  VerificationCheck._();

  factory VerificationCheck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VerificationCheck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerificationCheck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'checkId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aE<VerificationCheckStatus>(3, _omitFieldNames ? '' : 'status',
        enumValues: VerificationCheckStatus.values)
    ..aOS(4, _omitFieldNames ? '' : 'message')
    ..pPS(5, _omitFieldNames ? '' : 'artifactIds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerificationCheck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerificationCheck copyWith(void Function(VerificationCheck) updates) =>
      super.copyWith((message) => updates(message as VerificationCheck))
          as VerificationCheck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerificationCheck create() => VerificationCheck._();
  @$core.override
  VerificationCheck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VerificationCheck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerificationCheck>(create);
  static VerificationCheck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get checkId => $_getSZ(0);
  @$pb.TagNumber(1)
  set checkId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCheckId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCheckId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  VerificationCheckStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(VerificationCheckStatus value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get artifactIds => $_getList(4);
}

class BlockedOutcome extends $pb.GeneratedMessage {
  factory BlockedOutcome({
    $core.String? code,
    BlockedOutcomeScope? scope,
    $core.String? message,
    $0.Struct? details,
    $core.Iterable<ArtifactDescriptor>? blockingArtifacts,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (scope != null) result.scope = scope;
    if (message != null) result.message = message;
    if (details != null) result.details = details;
    if (blockingArtifacts != null)
      result.blockingArtifacts.addAll(blockingArtifacts);
    return result;
  }

  BlockedOutcome._();

  factory BlockedOutcome.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BlockedOutcome.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BlockedOutcome',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aE<BlockedOutcomeScope>(2, _omitFieldNames ? '' : 'scope',
        enumValues: BlockedOutcomeScope.values)
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Struct>(4, _omitFieldNames ? '' : 'details',
        subBuilder: $0.Struct.create)
    ..pPM<ArtifactDescriptor>(5, _omitFieldNames ? '' : 'blockingArtifacts',
        subBuilder: ArtifactDescriptor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BlockedOutcome clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BlockedOutcome copyWith(void Function(BlockedOutcome) updates) =>
      super.copyWith((message) => updates(message as BlockedOutcome))
          as BlockedOutcome;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlockedOutcome create() => BlockedOutcome._();
  @$core.override
  BlockedOutcome createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BlockedOutcome getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockedOutcome>(create);
  static BlockedOutcome? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  BlockedOutcomeScope get scope => $_getN(1);
  @$pb.TagNumber(2)
  set scope(BlockedOutcomeScope value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearScope() => $_clearField(2);

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

  @$pb.TagNumber(5)
  $pb.PbList<ArtifactDescriptor> get blockingArtifacts => $_getList(4);
}

class VerificationReceipt extends $pb.GeneratedMessage {
  factory VerificationReceipt({
    $core.String? contractVersion,
    $core.String? verificationId,
    $core.String? planId,
    $core.Iterable<$core.String>? executionReceiptIds,
    $core.String? verificationPolicyVersion,
    VerificationStatus? status,
    $core.Iterable<VerificationCheck>? checks,
    $core.Iterable<BlockedOutcome>? blockedOutcomes,
    $core.Iterable<$core.String>? artifactDigestSet,
    $fixnum.Int64? verifiedAtMs,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (verificationId != null) result.verificationId = verificationId;
    if (planId != null) result.planId = planId;
    if (executionReceiptIds != null)
      result.executionReceiptIds.addAll(executionReceiptIds);
    if (verificationPolicyVersion != null)
      result.verificationPolicyVersion = verificationPolicyVersion;
    if (status != null) result.status = status;
    if (checks != null) result.checks.addAll(checks);
    if (blockedOutcomes != null) result.blockedOutcomes.addAll(blockedOutcomes);
    if (artifactDigestSet != null)
      result.artifactDigestSet.addAll(artifactDigestSet);
    if (verifiedAtMs != null) result.verifiedAtMs = verifiedAtMs;
    return result;
  }

  VerificationReceipt._();

  factory VerificationReceipt.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VerificationReceipt.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerificationReceipt',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'verificationId')
    ..aOS(3, _omitFieldNames ? '' : 'planId')
    ..pPS(4, _omitFieldNames ? '' : 'executionReceiptIds')
    ..aOS(5, _omitFieldNames ? '' : 'verificationPolicyVersion')
    ..aE<VerificationStatus>(6, _omitFieldNames ? '' : 'status',
        enumValues: VerificationStatus.values)
    ..pPM<VerificationCheck>(7, _omitFieldNames ? '' : 'checks',
        subBuilder: VerificationCheck.create)
    ..pPM<BlockedOutcome>(8, _omitFieldNames ? '' : 'blockedOutcomes',
        subBuilder: BlockedOutcome.create)
    ..pPS(9, _omitFieldNames ? '' : 'artifactDigestSet')
    ..a<$fixnum.Int64>(
        10, _omitFieldNames ? '' : 'verifiedAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerificationReceipt clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerificationReceipt copyWith(void Function(VerificationReceipt) updates) =>
      super.copyWith((message) => updates(message as VerificationReceipt))
          as VerificationReceipt;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerificationReceipt create() => VerificationReceipt._();
  @$core.override
  VerificationReceipt createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VerificationReceipt getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerificationReceipt>(create);
  static VerificationReceipt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get verificationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set verificationId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVerificationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerificationId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get planId => $_getSZ(2);
  @$pb.TagNumber(3)
  set planId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPlanId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlanId() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get executionReceiptIds => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get verificationPolicyVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set verificationPolicyVersion($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVerificationPolicyVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVerificationPolicyVersion() => $_clearField(5);

  @$pb.TagNumber(6)
  VerificationStatus get status => $_getN(5);
  @$pb.TagNumber(6)
  set status(VerificationStatus value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<VerificationCheck> get checks => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<BlockedOutcome> get blockedOutcomes => $_getList(7);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get artifactDigestSet => $_getList(8);

  @$pb.TagNumber(10)
  $fixnum.Int64 get verifiedAtMs => $_getI64(9);
  @$pb.TagNumber(10)
  set verifiedAtMs($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasVerifiedAtMs() => $_has(9);
  @$pb.TagNumber(10)
  void clearVerifiedAtMs() => $_clearField(10);
}

class ReviewDecision extends $pb.GeneratedMessage {
  factory ReviewDecision({
    $core.String? decisionId,
    $core.String? planId,
    ReviewDecisionScope? scope,
    $core.String? actor,
    ReviewDisposition? decision,
    $core.String? reason,
    $fixnum.Int64? createdAt,
  }) {
    final result = create();
    if (decisionId != null) result.decisionId = decisionId;
    if (planId != null) result.planId = planId;
    if (scope != null) result.scope = scope;
    if (actor != null) result.actor = actor;
    if (decision != null) result.decision = decision;
    if (reason != null) result.reason = reason;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  ReviewDecision._();

  factory ReviewDecision.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReviewDecision.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReviewDecision',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'decisionId')
    ..aOS(2, _omitFieldNames ? '' : 'planId')
    ..aE<ReviewDecisionScope>(3, _omitFieldNames ? '' : 'scope',
        enumValues: ReviewDecisionScope.values)
    ..aOS(4, _omitFieldNames ? '' : 'actor')
    ..aE<ReviewDisposition>(5, _omitFieldNames ? '' : 'decision',
        enumValues: ReviewDisposition.values)
    ..aOS(6, _omitFieldNames ? '' : 'reason')
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReviewDecision clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReviewDecision copyWith(void Function(ReviewDecision) updates) =>
      super.copyWith((message) => updates(message as ReviewDecision))
          as ReviewDecision;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReviewDecision create() => ReviewDecision._();
  @$core.override
  ReviewDecision createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReviewDecision getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReviewDecision>(create);
  static ReviewDecision? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get decisionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set decisionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDecisionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDecisionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get planId => $_getSZ(1);
  @$pb.TagNumber(2)
  set planId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPlanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlanId() => $_clearField(2);

  @$pb.TagNumber(3)
  ReviewDecisionScope get scope => $_getN(2);
  @$pb.TagNumber(3)
  set scope(ReviewDecisionScope value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasScope() => $_has(2);
  @$pb.TagNumber(3)
  void clearScope() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get actor => $_getSZ(3);
  @$pb.TagNumber(4)
  set actor($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasActor() => $_has(3);
  @$pb.TagNumber(4)
  void clearActor() => $_clearField(4);

  @$pb.TagNumber(5)
  ReviewDisposition get decision => $_getN(4);
  @$pb.TagNumber(5)
  set decision(ReviewDisposition value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDecision() => $_has(4);
  @$pb.TagNumber(5)
  void clearDecision() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get reason => $_getSZ(5);
  @$pb.TagNumber(6)
  set reason($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasReason() => $_has(5);
  @$pb.TagNumber(6)
  void clearReason() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get createdAt => $_getI64(6);
  @$pb.TagNumber(7)
  set createdAt($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => $_clearField(7);
}

class RerunScope extends $pb.GeneratedMessage {
  factory RerunScope({
    $core.String? scopeId,
    $core.String? planId,
    RerunTrigger? trigger,
    $core.String? reason,
    $core.String? sourceDecisionId,
    $core.Iterable<$core.String>? taskIds,
    $core.Iterable<$core.String>? stepIds,
    $core.Iterable<$core.String>? paths,
    $fixnum.Int64? createdAt,
  }) {
    final result = create();
    if (scopeId != null) result.scopeId = scopeId;
    if (planId != null) result.planId = planId;
    if (trigger != null) result.trigger = trigger;
    if (reason != null) result.reason = reason;
    if (sourceDecisionId != null) result.sourceDecisionId = sourceDecisionId;
    if (taskIds != null) result.taskIds.addAll(taskIds);
    if (stepIds != null) result.stepIds.addAll(stepIds);
    if (paths != null) result.paths.addAll(paths);
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  RerunScope._();

  factory RerunScope.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RerunScope.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RerunScope',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'scopeId')
    ..aOS(2, _omitFieldNames ? '' : 'planId')
    ..aE<RerunTrigger>(3, _omitFieldNames ? '' : 'trigger',
        enumValues: RerunTrigger.values)
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOS(5, _omitFieldNames ? '' : 'sourceDecisionId')
    ..pPS(6, _omitFieldNames ? '' : 'taskIds')
    ..pPS(7, _omitFieldNames ? '' : 'stepIds')
    ..pPS(8, _omitFieldNames ? '' : 'paths')
    ..a<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RerunScope clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RerunScope copyWith(void Function(RerunScope) updates) =>
      super.copyWith((message) => updates(message as RerunScope)) as RerunScope;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RerunScope create() => RerunScope._();
  @$core.override
  RerunScope createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RerunScope getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RerunScope>(create);
  static RerunScope? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scopeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set scopeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasScopeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScopeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get planId => $_getSZ(1);
  @$pb.TagNumber(2)
  set planId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPlanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlanId() => $_clearField(2);

  @$pb.TagNumber(3)
  RerunTrigger get trigger => $_getN(2);
  @$pb.TagNumber(3)
  set trigger(RerunTrigger value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTrigger() => $_has(2);
  @$pb.TagNumber(3)
  void clearTrigger() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sourceDecisionId => $_getSZ(4);
  @$pb.TagNumber(5)
  set sourceDecisionId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSourceDecisionId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSourceDecisionId() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get taskIds => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get stepIds => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get paths => $_getList(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get createdAt => $_getI64(8);
  @$pb.TagNumber(9)
  set createdAt($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatedAt() => $_clearField(9);
}

class RerunExecutionResult extends $pb.GeneratedMessage {
  factory RerunExecutionResult({
    $core.String? resultId,
    $core.String? planId,
    $core.String? rerunScopeId,
    $core.String? sourceDecisionId,
    RerunTrigger? trigger,
    RerunSelectionStrategy? matchedStrategy,
    $core.Iterable<$core.String>? rootTasks,
    $core.Iterable<$core.String>? selectedTasks,
    $core.Iterable<$core.String>? matchedPaths,
    $core.String? reason,
    RerunExecutionStatus? status,
    $core.Iterable<$core.String>? completedTasks,
    $core.Iterable<$core.String>? failedTasks,
    $core.Iterable<$core.String>? skippedTasks,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
  }) {
    final result = create();
    if (resultId != null) result.resultId = resultId;
    if (planId != null) result.planId = planId;
    if (rerunScopeId != null) result.rerunScopeId = rerunScopeId;
    if (sourceDecisionId != null) result.sourceDecisionId = sourceDecisionId;
    if (trigger != null) result.trigger = trigger;
    if (matchedStrategy != null) result.matchedStrategy = matchedStrategy;
    if (rootTasks != null) result.rootTasks.addAll(rootTasks);
    if (selectedTasks != null) result.selectedTasks.addAll(selectedTasks);
    if (matchedPaths != null) result.matchedPaths.addAll(matchedPaths);
    if (reason != null) result.reason = reason;
    if (status != null) result.status = status;
    if (completedTasks != null) result.completedTasks.addAll(completedTasks);
    if (failedTasks != null) result.failedTasks.addAll(failedTasks);
    if (skippedTasks != null) result.skippedTasks.addAll(skippedTasks);
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  RerunExecutionResult._();

  factory RerunExecutionResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RerunExecutionResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RerunExecutionResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'resultId')
    ..aOS(2, _omitFieldNames ? '' : 'planId')
    ..aOS(3, _omitFieldNames ? '' : 'rerunScopeId')
    ..aOS(4, _omitFieldNames ? '' : 'sourceDecisionId')
    ..aE<RerunTrigger>(5, _omitFieldNames ? '' : 'trigger',
        enumValues: RerunTrigger.values)
    ..aE<RerunSelectionStrategy>(6, _omitFieldNames ? '' : 'matchedStrategy',
        enumValues: RerunSelectionStrategy.values)
    ..pPS(7, _omitFieldNames ? '' : 'rootTasks')
    ..pPS(8, _omitFieldNames ? '' : 'selectedTasks')
    ..pPS(9, _omitFieldNames ? '' : 'matchedPaths')
    ..aOS(10, _omitFieldNames ? '' : 'reason')
    ..aE<RerunExecutionStatus>(11, _omitFieldNames ? '' : 'status',
        enumValues: RerunExecutionStatus.values)
    ..pPS(12, _omitFieldNames ? '' : 'completedTasks')
    ..pPS(13, _omitFieldNames ? '' : 'failedTasks')
    ..pPS(14, _omitFieldNames ? '' : 'skippedTasks')
    ..a<$fixnum.Int64>(
        15, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        16, _omitFieldNames ? '' : 'updatedAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RerunExecutionResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RerunExecutionResult copyWith(void Function(RerunExecutionResult) updates) =>
      super.copyWith((message) => updates(message as RerunExecutionResult))
          as RerunExecutionResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RerunExecutionResult create() => RerunExecutionResult._();
  @$core.override
  RerunExecutionResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RerunExecutionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RerunExecutionResult>(create);
  static RerunExecutionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultId => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasResultId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get planId => $_getSZ(1);
  @$pb.TagNumber(2)
  set planId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPlanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlanId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get rerunScopeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set rerunScopeId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRerunScopeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRerunScopeId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sourceDecisionId => $_getSZ(3);
  @$pb.TagNumber(4)
  set sourceDecisionId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSourceDecisionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSourceDecisionId() => $_clearField(4);

  @$pb.TagNumber(5)
  RerunTrigger get trigger => $_getN(4);
  @$pb.TagNumber(5)
  set trigger(RerunTrigger value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasTrigger() => $_has(4);
  @$pb.TagNumber(5)
  void clearTrigger() => $_clearField(5);

  @$pb.TagNumber(6)
  RerunSelectionStrategy get matchedStrategy => $_getN(5);
  @$pb.TagNumber(6)
  set matchedStrategy(RerunSelectionStrategy value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMatchedStrategy() => $_has(5);
  @$pb.TagNumber(6)
  void clearMatchedStrategy() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get rootTasks => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get selectedTasks => $_getList(7);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get matchedPaths => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get reason => $_getSZ(9);
  @$pb.TagNumber(10)
  set reason($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasReason() => $_has(9);
  @$pb.TagNumber(10)
  void clearReason() => $_clearField(10);

  @$pb.TagNumber(11)
  RerunExecutionStatus get status => $_getN(10);
  @$pb.TagNumber(11)
  set status(RerunExecutionStatus value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearStatus() => $_clearField(11);

  @$pb.TagNumber(12)
  $pb.PbList<$core.String> get completedTasks => $_getList(11);

  @$pb.TagNumber(13)
  $pb.PbList<$core.String> get failedTasks => $_getList(12);

  @$pb.TagNumber(14)
  $pb.PbList<$core.String> get skippedTasks => $_getList(13);

  @$pb.TagNumber(15)
  $fixnum.Int64 get createdAt => $_getI64(14);
  @$pb.TagNumber(15)
  set createdAt($fixnum.Int64 value) => $_setInt64(14, value);
  @$pb.TagNumber(15)
  $core.bool hasCreatedAt() => $_has(14);
  @$pb.TagNumber(15)
  void clearCreatedAt() => $_clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get updatedAt => $_getI64(15);
  @$pb.TagNumber(16)
  set updatedAt($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(16)
  $core.bool hasUpdatedAt() => $_has(15);
  @$pb.TagNumber(16)
  void clearUpdatedAt() => $_clearField(16);
}

class PrLifecycleState extends $pb.GeneratedMessage {
  factory PrLifecycleState({
    $core.String? stateId,
    $core.String? planId,
    $fixnum.Int64? prNumber,
    $core.String? prUrl,
    ReviewDecision? reviewDecision,
    RerunScope? rerunScope,
    RerunExecutionResult? rerunResult,
    VerificationReceipt? verificationReceipt,
    $core.bool? mergeReady,
    $core.bool? releaseReady,
    $core.Iterable<BlockedOutcome>? blockedOutcomes,
    $fixnum.Int64? updatedAt,
  }) {
    final result = create();
    if (stateId != null) result.stateId = stateId;
    if (planId != null) result.planId = planId;
    if (prNumber != null) result.prNumber = prNumber;
    if (prUrl != null) result.prUrl = prUrl;
    if (reviewDecision != null) result.reviewDecision = reviewDecision;
    if (rerunScope != null) result.rerunScope = rerunScope;
    if (rerunResult != null) result.rerunResult = rerunResult;
    if (verificationReceipt != null)
      result.verificationReceipt = verificationReceipt;
    if (mergeReady != null) result.mergeReady = mergeReady;
    if (releaseReady != null) result.releaseReady = releaseReady;
    if (blockedOutcomes != null) result.blockedOutcomes.addAll(blockedOutcomes);
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  PrLifecycleState._();

  factory PrLifecycleState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrLifecycleState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrLifecycleState',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stateId')
    ..aOS(2, _omitFieldNames ? '' : 'planId')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'prNumber', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, _omitFieldNames ? '' : 'prUrl')
    ..aOM<ReviewDecision>(5, _omitFieldNames ? '' : 'reviewDecision',
        subBuilder: ReviewDecision.create)
    ..aOM<RerunScope>(6, _omitFieldNames ? '' : 'rerunScope',
        subBuilder: RerunScope.create)
    ..aOM<RerunExecutionResult>(7, _omitFieldNames ? '' : 'rerunResult',
        subBuilder: RerunExecutionResult.create)
    ..aOM<VerificationReceipt>(8, _omitFieldNames ? '' : 'verificationReceipt',
        subBuilder: VerificationReceipt.create)
    ..aOB(9, _omitFieldNames ? '' : 'mergeReady')
    ..aOB(10, _omitFieldNames ? '' : 'releaseReady')
    ..pPM<BlockedOutcome>(11, _omitFieldNames ? '' : 'blockedOutcomes',
        subBuilder: BlockedOutcome.create)
    ..a<$fixnum.Int64>(
        12, _omitFieldNames ? '' : 'updatedAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrLifecycleState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrLifecycleState copyWith(void Function(PrLifecycleState) updates) =>
      super.copyWith((message) => updates(message as PrLifecycleState))
          as PrLifecycleState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrLifecycleState create() => PrLifecycleState._();
  @$core.override
  PrLifecycleState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrLifecycleState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrLifecycleState>(create);
  static PrLifecycleState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stateId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stateId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStateId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get planId => $_getSZ(1);
  @$pb.TagNumber(2)
  set planId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPlanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlanId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get prNumber => $_getI64(2);
  @$pb.TagNumber(3)
  set prNumber($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPrNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrNumber() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get prUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set prUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPrUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  ReviewDecision get reviewDecision => $_getN(4);
  @$pb.TagNumber(5)
  set reviewDecision(ReviewDecision value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasReviewDecision() => $_has(4);
  @$pb.TagNumber(5)
  void clearReviewDecision() => $_clearField(5);
  @$pb.TagNumber(5)
  ReviewDecision ensureReviewDecision() => $_ensure(4);

  @$pb.TagNumber(6)
  RerunScope get rerunScope => $_getN(5);
  @$pb.TagNumber(6)
  set rerunScope(RerunScope value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasRerunScope() => $_has(5);
  @$pb.TagNumber(6)
  void clearRerunScope() => $_clearField(6);
  @$pb.TagNumber(6)
  RerunScope ensureRerunScope() => $_ensure(5);

  @$pb.TagNumber(7)
  RerunExecutionResult get rerunResult => $_getN(6);
  @$pb.TagNumber(7)
  set rerunResult(RerunExecutionResult value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasRerunResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearRerunResult() => $_clearField(7);
  @$pb.TagNumber(7)
  RerunExecutionResult ensureRerunResult() => $_ensure(6);

  @$pb.TagNumber(8)
  VerificationReceipt get verificationReceipt => $_getN(7);
  @$pb.TagNumber(8)
  set verificationReceipt(VerificationReceipt value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasVerificationReceipt() => $_has(7);
  @$pb.TagNumber(8)
  void clearVerificationReceipt() => $_clearField(8);
  @$pb.TagNumber(8)
  VerificationReceipt ensureVerificationReceipt() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.bool get mergeReady => $_getBF(8);
  @$pb.TagNumber(9)
  set mergeReady($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMergeReady() => $_has(8);
  @$pb.TagNumber(9)
  void clearMergeReady() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get releaseReady => $_getBF(9);
  @$pb.TagNumber(10)
  set releaseReady($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasReleaseReady() => $_has(9);
  @$pb.TagNumber(10)
  void clearReleaseReady() => $_clearField(10);

  @$pb.TagNumber(11)
  $pb.PbList<BlockedOutcome> get blockedOutcomes => $_getList(10);

  @$pb.TagNumber(12)
  $fixnum.Int64 get updatedAt => $_getI64(11);
  @$pb.TagNumber(12)
  set updatedAt($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(12)
  $core.bool hasUpdatedAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearUpdatedAt() => $_clearField(12);
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
    $core.String? roleId,
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
    if (roleId != null) result.roleId = roleId;
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
    ..aOS(12, _omitFieldNames ? '' : 'roleId')
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

  /// Legacy enum role. Prefer role_id for new producers and consumers.
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

  /// Canonical open-ended role identifier. This allows built-in and custom
  /// roles without requiring protocol enum changes.
  @$pb.TagNumber(12)
  $core.String get roleId => $_getSZ(11);
  @$pb.TagNumber(12)
  set roleId($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasRoleId() => $_has(11);
  @$pb.TagNumber(12)
  void clearRoleId() => $_clearField(12);
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

class RunEventRecord extends $pb.GeneratedMessage {
  factory RunEventRecord({
    $core.String? contractVersion,
    $core.String? eventId,
    $core.String? runId,
    $core.String? planId,
    $fixnum.Int64? sequence,
    RunEventStream? stream,
    $fixnum.Int64? recordedAt,
    $core.String? stepId,
    $core.String? taskId,
    $core.String? eventType,
    $core.String? status,
    $core.String? message,
    $core.Iterable<$core.String>? artifactIds,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (eventId != null) result.eventId = eventId;
    if (runId != null) result.runId = runId;
    if (planId != null) result.planId = planId;
    if (sequence != null) result.sequence = sequence;
    if (stream != null) result.stream = stream;
    if (recordedAt != null) result.recordedAt = recordedAt;
    if (stepId != null) result.stepId = stepId;
    if (taskId != null) result.taskId = taskId;
    if (eventType != null) result.eventType = eventType;
    if (status != null) result.status = status;
    if (message != null) result.message = message;
    if (artifactIds != null) result.artifactIds.addAll(artifactIds);
    return result;
  }

  RunEventRecord._();

  factory RunEventRecord.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunEventRecord.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunEventRecord',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'eventId')
    ..aOS(3, _omitFieldNames ? '' : 'runId')
    ..aOS(4, _omitFieldNames ? '' : 'planId')
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'sequence', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aE<RunEventStream>(6, _omitFieldNames ? '' : 'stream',
        enumValues: RunEventStream.values)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'recordedAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(8, _omitFieldNames ? '' : 'stepId')
    ..aOS(9, _omitFieldNames ? '' : 'taskId')
    ..aOS(10, _omitFieldNames ? '' : 'eventType')
    ..aOS(11, _omitFieldNames ? '' : 'status')
    ..aOS(12, _omitFieldNames ? '' : 'message')
    ..pPS(13, _omitFieldNames ? '' : 'artifactIds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunEventRecord clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunEventRecord copyWith(void Function(RunEventRecord) updates) =>
      super.copyWith((message) => updates(message as RunEventRecord))
          as RunEventRecord;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunEventRecord create() => RunEventRecord._();
  @$core.override
  RunEventRecord createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunEventRecord getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunEventRecord>(create);
  static RunEventRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get eventId => $_getSZ(1);
  @$pb.TagNumber(2)
  set eventId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => $_clearField(2);

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
  $fixnum.Int64 get sequence => $_getI64(4);
  @$pb.TagNumber(5)
  set sequence($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSequence() => $_has(4);
  @$pb.TagNumber(5)
  void clearSequence() => $_clearField(5);

  @$pb.TagNumber(6)
  RunEventStream get stream => $_getN(5);
  @$pb.TagNumber(6)
  set stream(RunEventStream value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasStream() => $_has(5);
  @$pb.TagNumber(6)
  void clearStream() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get recordedAt => $_getI64(6);
  @$pb.TagNumber(7)
  set recordedAt($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRecordedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearRecordedAt() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get stepId => $_getSZ(7);
  @$pb.TagNumber(8)
  set stepId($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasStepId() => $_has(7);
  @$pb.TagNumber(8)
  void clearStepId() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get taskId => $_getSZ(8);
  @$pb.TagNumber(9)
  set taskId($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTaskId() => $_has(8);
  @$pb.TagNumber(9)
  void clearTaskId() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get eventType => $_getSZ(9);
  @$pb.TagNumber(10)
  set eventType($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasEventType() => $_has(9);
  @$pb.TagNumber(10)
  void clearEventType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get status => $_getSZ(10);
  @$pb.TagNumber(11)
  set status($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearStatus() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get message => $_getSZ(11);
  @$pb.TagNumber(12)
  set message($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasMessage() => $_has(11);
  @$pb.TagNumber(12)
  void clearMessage() => $_clearField(12);

  @$pb.TagNumber(13)
  $pb.PbList<$core.String> get artifactIds => $_getList(12);
}

class TaskMessage extends $pb.GeneratedMessage {
  factory TaskMessage({
    $core.String? version,
    $core.String? messageId,
    $core.String? runId,
    $core.String? fromTaskId,
    $core.String? toTaskId,
    TaskMessageKind? kind,
    $core.String? subject,
    $core.String? body,
    $core.Iterable<$core.String>? artifactRefs,
    $core.String? replyTo,
    $core.String? createdAt,
    $core.bool? requiresAck,
    $0.Struct? extensions,
    Provenance? provenance,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (messageId != null) result.messageId = messageId;
    if (runId != null) result.runId = runId;
    if (fromTaskId != null) result.fromTaskId = fromTaskId;
    if (toTaskId != null) result.toTaskId = toTaskId;
    if (kind != null) result.kind = kind;
    if (subject != null) result.subject = subject;
    if (body != null) result.body = body;
    if (artifactRefs != null) result.artifactRefs.addAll(artifactRefs);
    if (replyTo != null) result.replyTo = replyTo;
    if (createdAt != null) result.createdAt = createdAt;
    if (requiresAck != null) result.requiresAck = requiresAck;
    if (extensions != null) result.extensions = extensions;
    if (provenance != null) result.provenance = provenance;
    return result;
  }

  TaskMessage._();

  factory TaskMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'messageId')
    ..aOS(3, _omitFieldNames ? '' : 'runId')
    ..aOS(4, _omitFieldNames ? '' : 'fromTaskId')
    ..aOS(5, _omitFieldNames ? '' : 'toTaskId')
    ..aE<TaskMessageKind>(6, _omitFieldNames ? '' : 'kind',
        enumValues: TaskMessageKind.values)
    ..aOS(7, _omitFieldNames ? '' : 'subject')
    ..aOS(8, _omitFieldNames ? '' : 'body')
    ..pPS(9, _omitFieldNames ? '' : 'artifactRefs')
    ..aOS(10, _omitFieldNames ? '' : 'replyTo')
    ..aOS(11, _omitFieldNames ? '' : 'createdAt')
    ..aOB(12, _omitFieldNames ? '' : 'requiresAck')
    ..aOM<$0.Struct>(13, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..aOM<Provenance>(14, _omitFieldNames ? '' : 'provenance',
        subBuilder: Provenance.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskMessage copyWith(void Function(TaskMessage) updates) =>
      super.copyWith((message) => updates(message as TaskMessage))
          as TaskMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskMessage create() => TaskMessage._();
  @$core.override
  TaskMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TaskMessage>(create);
  static TaskMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get messageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set messageId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get runId => $_getSZ(2);
  @$pb.TagNumber(3)
  set runId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRunId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRunId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get fromTaskId => $_getSZ(3);
  @$pb.TagNumber(4)
  set fromTaskId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFromTaskId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromTaskId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get toTaskId => $_getSZ(4);
  @$pb.TagNumber(5)
  set toTaskId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasToTaskId() => $_has(4);
  @$pb.TagNumber(5)
  void clearToTaskId() => $_clearField(5);

  @$pb.TagNumber(6)
  TaskMessageKind get kind => $_getN(5);
  @$pb.TagNumber(6)
  set kind(TaskMessageKind value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasKind() => $_has(5);
  @$pb.TagNumber(6)
  void clearKind() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get subject => $_getSZ(6);
  @$pb.TagNumber(7)
  set subject($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSubject() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubject() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get body => $_getSZ(7);
  @$pb.TagNumber(8)
  set body($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBody() => $_has(7);
  @$pb.TagNumber(8)
  void clearBody() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get artifactRefs => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get replyTo => $_getSZ(9);
  @$pb.TagNumber(10)
  set replyTo($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasReplyTo() => $_has(9);
  @$pb.TagNumber(10)
  void clearReplyTo() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get createdAt => $_getSZ(10);
  @$pb.TagNumber(11)
  set createdAt($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatedAt() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get requiresAck => $_getBF(11);
  @$pb.TagNumber(12)
  set requiresAck($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasRequiresAck() => $_has(11);
  @$pb.TagNumber(12)
  void clearRequiresAck() => $_clearField(12);

  @$pb.TagNumber(13)
  $0.Struct get extensions => $_getN(12);
  @$pb.TagNumber(13)
  set extensions($0.Struct value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasExtensions() => $_has(12);
  @$pb.TagNumber(13)
  void clearExtensions() => $_clearField(13);
  @$pb.TagNumber(13)
  $0.Struct ensureExtensions() => $_ensure(12);

  @$pb.TagNumber(14)
  Provenance get provenance => $_getN(13);
  @$pb.TagNumber(14)
  set provenance(Provenance value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasProvenance() => $_has(13);
  @$pb.TagNumber(14)
  void clearProvenance() => $_clearField(14);
  @$pb.TagNumber(14)
  Provenance ensureProvenance() => $_ensure(13);
}

class TaskMessageAck extends $pb.GeneratedMessage {
  factory TaskMessageAck({
    $core.String? version,
    $core.String? messageId,
    $core.String? runId,
    $core.String? taskId,
    $core.String? ackedAt,
    $core.String? status,
    $core.String? note,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (messageId != null) result.messageId = messageId;
    if (runId != null) result.runId = runId;
    if (taskId != null) result.taskId = taskId;
    if (ackedAt != null) result.ackedAt = ackedAt;
    if (status != null) result.status = status;
    if (note != null) result.note = note;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  TaskMessageAck._();

  factory TaskMessageAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskMessageAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskMessageAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'messageId')
    ..aOS(3, _omitFieldNames ? '' : 'runId')
    ..aOS(4, _omitFieldNames ? '' : 'taskId')
    ..aOS(5, _omitFieldNames ? '' : 'ackedAt')
    ..aOS(6, _omitFieldNames ? '' : 'status')
    ..aOS(7, _omitFieldNames ? '' : 'note')
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskMessageAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskMessageAck copyWith(void Function(TaskMessageAck) updates) =>
      super.copyWith((message) => updates(message as TaskMessageAck))
          as TaskMessageAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskMessageAck create() => TaskMessageAck._();
  @$core.override
  TaskMessageAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskMessageAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TaskMessageAck>(create);
  static TaskMessageAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get messageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set messageId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get runId => $_getSZ(2);
  @$pb.TagNumber(3)
  set runId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRunId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRunId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get taskId => $_getSZ(3);
  @$pb.TagNumber(4)
  set taskId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTaskId() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get ackedAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set ackedAt($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAckedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearAckedAt() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get status => $_getSZ(5);
  @$pb.TagNumber(6)
  set status($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get note => $_getSZ(6);
  @$pb.TagNumber(7)
  set note($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNote() => $_has(6);
  @$pb.TagNumber(7)
  void clearNote() => $_clearField(7);

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
    $core.Iterable<$core.String>? supportedRoleIds,
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
    if (supportedRoleIds != null)
      result.supportedRoleIds.addAll(supportedRoleIds);
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
    ..pPS(9, _omitFieldNames ? '' : 'supportedRoleIds')
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

  /// Legacy enum-based supported roles. Prefer supported_role_ids for new
  /// producers and consumers.
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

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get supportedRoleIds => $_getList(8);
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

class FencingToken extends $pb.GeneratedMessage {
  factory FencingToken({
    $core.String? token,
    $fixnum.Int64? issuedAtMs,
    $core.String? issuer,
    $core.String? scope,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (issuedAtMs != null) result.issuedAtMs = issuedAtMs;
    if (issuer != null) result.issuer = issuer;
    if (scope != null) result.scope = scope;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  FencingToken._();

  factory FencingToken.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FencingToken.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FencingToken',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'issuedAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'issuer')
    ..aOS(4, _omitFieldNames ? '' : 'scope')
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FencingToken clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FencingToken copyWith(void Function(FencingToken) updates) =>
      super.copyWith((message) => updates(message as FencingToken))
          as FencingToken;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FencingToken create() => FencingToken._();
  @$core.override
  FencingToken createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FencingToken getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FencingToken>(create);
  static FencingToken? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get issuedAtMs => $_getI64(1);
  @$pb.TagNumber(2)
  set issuedAtMs($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIssuedAtMs() => $_has(1);
  @$pb.TagNumber(2)
  void clearIssuedAtMs() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get issuer => $_getSZ(2);
  @$pb.TagNumber(3)
  set issuer($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIssuer() => $_has(2);
  @$pb.TagNumber(3)
  void clearIssuer() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get scope => $_getSZ(3);
  @$pb.TagNumber(4)
  set scope($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasScope() => $_has(3);
  @$pb.TagNumber(4)
  void clearScope() => $_clearField(4);

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

class Lease extends $pb.GeneratedMessage {
  factory Lease({
    $core.String? leaseId,
    $core.String? runId,
    $core.String? planId,
    $core.String? stepId,
    $core.String? taskId,
    $core.String? runnerId,
    $core.String? sessionId,
    FencingToken? fencingToken,
    $fixnum.Int64? issuedAtMs,
    $fixnum.Int64? expiresAtMs,
    LeaseLifecycleState? status,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (leaseId != null) result.leaseId = leaseId;
    if (runId != null) result.runId = runId;
    if (planId != null) result.planId = planId;
    if (stepId != null) result.stepId = stepId;
    if (taskId != null) result.taskId = taskId;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (fencingToken != null) result.fencingToken = fencingToken;
    if (issuedAtMs != null) result.issuedAtMs = issuedAtMs;
    if (expiresAtMs != null) result.expiresAtMs = expiresAtMs;
    if (status != null) result.status = status;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  Lease._();

  factory Lease.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Lease.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Lease',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'leaseId')
    ..aOS(2, _omitFieldNames ? '' : 'runId')
    ..aOS(3, _omitFieldNames ? '' : 'planId')
    ..aOS(4, _omitFieldNames ? '' : 'stepId')
    ..aOS(5, _omitFieldNames ? '' : 'taskId')
    ..aOS(6, _omitFieldNames ? '' : 'runnerId')
    ..aOS(7, _omitFieldNames ? '' : 'sessionId')
    ..aOM<FencingToken>(8, _omitFieldNames ? '' : 'fencingToken',
        subBuilder: FencingToken.create)
    ..a<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'issuedAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        10, _omitFieldNames ? '' : 'expiresAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aE<LeaseLifecycleState>(11, _omitFieldNames ? '' : 'status',
        enumValues: LeaseLifecycleState.values)
    ..aOM<$0.Struct>(12, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Lease clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Lease copyWith(void Function(Lease) updates) =>
      super.copyWith((message) => updates(message as Lease)) as Lease;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Lease create() => Lease._();
  @$core.override
  Lease createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Lease getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lease>(create);
  static Lease? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get leaseId => $_getSZ(0);
  @$pb.TagNumber(1)
  set leaseId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLeaseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeaseId() => $_clearField(1);

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
  $core.String get stepId => $_getSZ(3);
  @$pb.TagNumber(4)
  set stepId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStepId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStepId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get taskId => $_getSZ(4);
  @$pb.TagNumber(5)
  set taskId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTaskId() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get runnerId => $_getSZ(5);
  @$pb.TagNumber(6)
  set runnerId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRunnerId() => $_has(5);
  @$pb.TagNumber(6)
  void clearRunnerId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get sessionId => $_getSZ(6);
  @$pb.TagNumber(7)
  set sessionId($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSessionId() => $_has(6);
  @$pb.TagNumber(7)
  void clearSessionId() => $_clearField(7);

  @$pb.TagNumber(8)
  FencingToken get fencingToken => $_getN(7);
  @$pb.TagNumber(8)
  set fencingToken(FencingToken value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasFencingToken() => $_has(7);
  @$pb.TagNumber(8)
  void clearFencingToken() => $_clearField(8);
  @$pb.TagNumber(8)
  FencingToken ensureFencingToken() => $_ensure(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get issuedAtMs => $_getI64(8);
  @$pb.TagNumber(9)
  set issuedAtMs($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasIssuedAtMs() => $_has(8);
  @$pb.TagNumber(9)
  void clearIssuedAtMs() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get expiresAtMs => $_getI64(9);
  @$pb.TagNumber(10)
  set expiresAtMs($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasExpiresAtMs() => $_has(9);
  @$pb.TagNumber(10)
  void clearExpiresAtMs() => $_clearField(10);

  @$pb.TagNumber(11)
  LeaseLifecycleState get status => $_getN(10);
  @$pb.TagNumber(11)
  set status(LeaseLifecycleState value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearStatus() => $_clearField(11);

  @$pb.TagNumber(12)
  $0.Struct get extensions => $_getN(11);
  @$pb.TagNumber(12)
  set extensions($0.Struct value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasExtensions() => $_has(11);
  @$pb.TagNumber(12)
  void clearExtensions() => $_clearField(12);
  @$pb.TagNumber(12)
  $0.Struct ensureExtensions() => $_ensure(11);
}

class RecoveryEvent extends $pb.GeneratedMessage {
  factory RecoveryEvent({
    $core.String? eventId,
    $core.String? runId,
    $core.String? planId,
    $core.String? stepId,
    RecoveryEventKind? kind,
    $fixnum.Int64? occurredAtMs,
    $core.String? actor,
    $0.Struct? details,
    $core.String? contractVersion,
    RunLifecycleState? runState,
    StepLifecycleState? stepState,
    LeaseRejectionReason? leaseRejectionReason,
  }) {
    final result = create();
    if (eventId != null) result.eventId = eventId;
    if (runId != null) result.runId = runId;
    if (planId != null) result.planId = planId;
    if (stepId != null) result.stepId = stepId;
    if (kind != null) result.kind = kind;
    if (occurredAtMs != null) result.occurredAtMs = occurredAtMs;
    if (actor != null) result.actor = actor;
    if (details != null) result.details = details;
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runState != null) result.runState = runState;
    if (stepState != null) result.stepState = stepState;
    if (leaseRejectionReason != null)
      result.leaseRejectionReason = leaseRejectionReason;
    return result;
  }

  RecoveryEvent._();

  factory RecoveryEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecoveryEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecoveryEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'eventId')
    ..aOS(2, _omitFieldNames ? '' : 'runId')
    ..aOS(3, _omitFieldNames ? '' : 'planId')
    ..aOS(4, _omitFieldNames ? '' : 'stepId')
    ..aE<RecoveryEventKind>(5, _omitFieldNames ? '' : 'kind',
        enumValues: RecoveryEventKind.values)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'occurredAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(7, _omitFieldNames ? '' : 'actor')
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'details',
        subBuilder: $0.Struct.create)
    ..aOS(9, _omitFieldNames ? '' : 'contractVersion')
    ..aE<RunLifecycleState>(10, _omitFieldNames ? '' : 'runState',
        enumValues: RunLifecycleState.values)
    ..aE<StepLifecycleState>(11, _omitFieldNames ? '' : 'stepState',
        enumValues: StepLifecycleState.values)
    ..aE<LeaseRejectionReason>(
        12, _omitFieldNames ? '' : 'leaseRejectionReason',
        enumValues: LeaseRejectionReason.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryEvent copyWith(void Function(RecoveryEvent) updates) =>
      super.copyWith((message) => updates(message as RecoveryEvent))
          as RecoveryEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoveryEvent create() => RecoveryEvent._();
  @$core.override
  RecoveryEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecoveryEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecoveryEvent>(create);
  static RecoveryEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get eventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set eventId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventId() => $_clearField(1);

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
  $core.String get stepId => $_getSZ(3);
  @$pb.TagNumber(4)
  set stepId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStepId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStepId() => $_clearField(4);

  @$pb.TagNumber(5)
  RecoveryEventKind get kind => $_getN(4);
  @$pb.TagNumber(5)
  set kind(RecoveryEventKind value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasKind() => $_has(4);
  @$pb.TagNumber(5)
  void clearKind() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get occurredAtMs => $_getI64(5);
  @$pb.TagNumber(6)
  set occurredAtMs($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasOccurredAtMs() => $_has(5);
  @$pb.TagNumber(6)
  void clearOccurredAtMs() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get actor => $_getSZ(6);
  @$pb.TagNumber(7)
  set actor($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasActor() => $_has(6);
  @$pb.TagNumber(7)
  void clearActor() => $_clearField(7);

  @$pb.TagNumber(8)
  $0.Struct get details => $_getN(7);
  @$pb.TagNumber(8)
  set details($0.Struct value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasDetails() => $_has(7);
  @$pb.TagNumber(8)
  void clearDetails() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Struct ensureDetails() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get contractVersion => $_getSZ(8);
  @$pb.TagNumber(9)
  set contractVersion($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasContractVersion() => $_has(8);
  @$pb.TagNumber(9)
  void clearContractVersion() => $_clearField(9);

  @$pb.TagNumber(10)
  RunLifecycleState get runState => $_getN(9);
  @$pb.TagNumber(10)
  set runState(RunLifecycleState value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRunState() => $_has(9);
  @$pb.TagNumber(10)
  void clearRunState() => $_clearField(10);

  @$pb.TagNumber(11)
  StepLifecycleState get stepState => $_getN(10);
  @$pb.TagNumber(11)
  set stepState(StepLifecycleState value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasStepState() => $_has(10);
  @$pb.TagNumber(11)
  void clearStepState() => $_clearField(11);

  @$pb.TagNumber(12)
  LeaseRejectionReason get leaseRejectionReason => $_getN(11);
  @$pb.TagNumber(12)
  set leaseRejectionReason(LeaseRejectionReason value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasLeaseRejectionReason() => $_has(11);
  @$pb.TagNumber(12)
  void clearLeaseRejectionReason() => $_clearField(12);
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
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (capabilities != null) result.capabilities = capabilities;
    if (maxParallelLeases != null) result.maxParallelLeases = maxParallelLeases;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
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
    ..aOM<AuthContext>(6, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
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

  @$pb.TagNumber(6)
  AuthContext get authContext => $_getN(5);
  @$pb.TagNumber(6)
  set authContext(AuthContext value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAuthContext() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthContext() => $_clearField(6);
  @$pb.TagNumber(6)
  AuthContext ensureAuthContext() => $_ensure(5);
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
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (activeLeases != null) result.activeLeases.addAll(activeLeases);
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
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
    ..aOM<AuthContext>(6, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
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

  @$pb.TagNumber(6)
  AuthContext get authContext => $_getN(5);
  @$pb.TagNumber(6)
  set authContext(AuthContext value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAuthContext() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthContext() => $_clearField(6);
  @$pb.TagNumber(6)
  AuthContext ensureAuthContext() => $_ensure(5);
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
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (availableSlots != null) result.availableSlots = availableSlots;
    if (activeLeaseIds != null) result.activeLeaseIds.addAll(activeLeaseIds);
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
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
    ..aOM<AuthContext>(7, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
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

  @$pb.TagNumber(7)
  AuthContext get authContext => $_getN(6);
  @$pb.TagNumber(7)
  set authContext(AuthContext value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAuthContext() => $_has(6);
  @$pb.TagNumber(7)
  void clearAuthContext() => $_clearField(7);
  @$pb.TagNumber(7)
  AuthContext ensureAuthContext() => $_ensure(6);
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
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (lease != null) result.lease = lease;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
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
    ..aOM<AuthContext>(6, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
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

  @$pb.TagNumber(6)
  AuthContext get authContext => $_getN(5);
  @$pb.TagNumber(6)
  set authContext(AuthContext value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAuthContext() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthContext() => $_clearField(6);
  @$pb.TagNumber(6)
  AuthContext ensureAuthContext() => $_ensure(5);
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

class ResumeLeaseRequest extends $pb.GeneratedMessage {
  factory ResumeLeaseRequest({
    $core.String? contractVersion,
    $core.String? runnerId,
    $core.String? sessionId,
    LeaseRef? lease,
    $0.Struct? extensions,
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (lease != null) result.lease = lease;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
    return result;
  }

  ResumeLeaseRequest._();

  factory ResumeLeaseRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResumeLeaseRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResumeLeaseRequest',
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
    ..aOM<AuthContext>(6, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResumeLeaseRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResumeLeaseRequest copyWith(void Function(ResumeLeaseRequest) updates) =>
      super.copyWith((message) => updates(message as ResumeLeaseRequest))
          as ResumeLeaseRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResumeLeaseRequest create() => ResumeLeaseRequest._();
  @$core.override
  ResumeLeaseRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResumeLeaseRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResumeLeaseRequest>(create);
  static ResumeLeaseRequest? _defaultInstance;

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

  @$pb.TagNumber(6)
  AuthContext get authContext => $_getN(5);
  @$pb.TagNumber(6)
  set authContext(AuthContext value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAuthContext() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthContext() => $_clearField(6);
  @$pb.TagNumber(6)
  AuthContext ensureAuthContext() => $_ensure(5);
}

class ResumeLeaseResponse extends $pb.GeneratedMessage {
  factory ResumeLeaseResponse({
    $core.String? contractVersion,
    $core.String? orchestratorId,
    $core.bool? accepted,
    Lease? lease,
    $fixnum.Int64? expiresAtMs,
    $core.String? currentFencingToken,
    LeaseRejectionReason? reason,
    $core.String? message,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (orchestratorId != null) result.orchestratorId = orchestratorId;
    if (accepted != null) result.accepted = accepted;
    if (lease != null) result.lease = lease;
    if (expiresAtMs != null) result.expiresAtMs = expiresAtMs;
    if (currentFencingToken != null)
      result.currentFencingToken = currentFencingToken;
    if (reason != null) result.reason = reason;
    if (message != null) result.message = message;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ResumeLeaseResponse._();

  factory ResumeLeaseResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResumeLeaseResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResumeLeaseResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'orchestratorId')
    ..aOB(3, _omitFieldNames ? '' : 'accepted')
    ..aOM<Lease>(4, _omitFieldNames ? '' : 'lease', subBuilder: Lease.create)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'expiresAtMs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(6, _omitFieldNames ? '' : 'currentFencingToken')
    ..aE<LeaseRejectionReason>(7, _omitFieldNames ? '' : 'reason',
        enumValues: LeaseRejectionReason.values)
    ..aOS(8, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Struct>(9, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResumeLeaseResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResumeLeaseResponse copyWith(void Function(ResumeLeaseResponse) updates) =>
      super.copyWith((message) => updates(message as ResumeLeaseResponse))
          as ResumeLeaseResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResumeLeaseResponse create() => ResumeLeaseResponse._();
  @$core.override
  ResumeLeaseResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResumeLeaseResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResumeLeaseResponse>(create);
  static ResumeLeaseResponse? _defaultInstance;

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
  Lease get lease => $_getN(3);
  @$pb.TagNumber(4)
  set lease(Lease value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLease() => $_has(3);
  @$pb.TagNumber(4)
  void clearLease() => $_clearField(4);
  @$pb.TagNumber(4)
  Lease ensureLease() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get expiresAtMs => $_getI64(4);
  @$pb.TagNumber(5)
  set expiresAtMs($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExpiresAtMs() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpiresAtMs() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get currentFencingToken => $_getSZ(5);
  @$pb.TagNumber(6)
  set currentFencingToken($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCurrentFencingToken() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentFencingToken() => $_clearField(6);

  @$pb.TagNumber(7)
  LeaseRejectionReason get reason => $_getN(6);
  @$pb.TagNumber(7)
  set reason(LeaseRejectionReason value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasReason() => $_has(6);
  @$pb.TagNumber(7)
  void clearReason() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get message => $_getSZ(7);
  @$pb.TagNumber(8)
  set message($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMessage() => $_has(7);
  @$pb.TagNumber(8)
  void clearMessage() => $_clearField(8);

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

class ReportStepStartedRequest extends $pb.GeneratedMessage {
  factory ReportStepStartedRequest({
    $core.String? contractVersion,
    $core.String? runnerId,
    $core.String? sessionId,
    LeaseRef? lease,
    $core.String? startedAt,
    $0.Struct? extensions,
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (lease != null) result.lease = lease;
    if (startedAt != null) result.startedAt = startedAt;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
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
    ..aOM<AuthContext>(7, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
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

  @$pb.TagNumber(7)
  AuthContext get authContext => $_getN(6);
  @$pb.TagNumber(7)
  set authContext(AuthContext value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAuthContext() => $_has(6);
  @$pb.TagNumber(7)
  void clearAuthContext() => $_clearField(7);
  @$pb.TagNumber(7)
  AuthContext ensureAuthContext() => $_ensure(6);
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
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (lease != null) result.lease = lease;
    if (events != null) result.events.addAll(events);
    if (artifacts != null) result.artifacts.addAll(artifacts);
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
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
    ..aOM<AuthContext>(8, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
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

  @$pb.TagNumber(8)
  AuthContext get authContext => $_getN(7);
  @$pb.TagNumber(8)
  set authContext(AuthContext value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAuthContext() => $_has(7);
  @$pb.TagNumber(8)
  void clearAuthContext() => $_clearField(8);
  @$pb.TagNumber(8)
  AuthContext ensureAuthContext() => $_ensure(7);
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
    AuthContext? authContext,
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
    if (authContext != null) result.authContext = authContext;
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
    ..aOM<AuthContext>(12, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
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

  @$pb.TagNumber(12)
  AuthContext get authContext => $_getN(11);
  @$pb.TagNumber(12)
  set authContext(AuthContext value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAuthContext() => $_has(11);
  @$pb.TagNumber(12)
  void clearAuthContext() => $_clearField(12);
  @$pb.TagNumber(12)
  AuthContext ensureAuthContext() => $_ensure(11);
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
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runnerId != null) result.runnerId = runnerId;
    if (sessionId != null) result.sessionId = sessionId;
    if (lease != null) result.lease = lease;
    if (status != null) result.status = status;
    if (message != null) result.message = message;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
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
    ..aOM<AuthContext>(8, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
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

  @$pb.TagNumber(8)
  AuthContext get authContext => $_getN(7);
  @$pb.TagNumber(8)
  set authContext(AuthContext value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAuthContext() => $_has(7);
  @$pb.TagNumber(8)
  void clearAuthContext() => $_clearField(8);
  @$pb.TagNumber(8)
  AuthContext ensureAuthContext() => $_ensure(7);
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

class ControlPlaneScope extends $pb.GeneratedMessage {
  factory ControlPlaneScope({
    $core.String? organization,
    $core.String? user,
    $core.String? defaultProject,
  }) {
    final result = create();
    if (organization != null) result.organization = organization;
    if (user != null) result.user = user;
    if (defaultProject != null) result.defaultProject = defaultProject;
    return result;
  }

  ControlPlaneScope._();

  factory ControlPlaneScope.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ControlPlaneScope.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControlPlaneScope',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'organization')
    ..aOS(2, _omitFieldNames ? '' : 'user')
    ..aOS(3, _omitFieldNames ? '' : 'defaultProject')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControlPlaneScope clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControlPlaneScope copyWith(void Function(ControlPlaneScope) updates) =>
      super.copyWith((message) => updates(message as ControlPlaneScope))
          as ControlPlaneScope;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ControlPlaneScope create() => ControlPlaneScope._();
  @$core.override
  ControlPlaneScope createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ControlPlaneScope getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControlPlaneScope>(create);
  static ControlPlaneScope? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organization => $_getSZ(0);
  @$pb.TagNumber(1)
  set organization($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrganization() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganization() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get user => $_getSZ(1);
  @$pb.TagNumber(2)
  set user($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get defaultProject => $_getSZ(2);
  @$pb.TagNumber(3)
  set defaultProject($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDefaultProject() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultProject() => $_clearField(3);
}

class RunOperatorSignals extends $pb.GeneratedMessage {
  factory RunOperatorSignals({
    $core.bool? promptNeeded,
    $core.String? promptSummary,
    $core.bool? pauseRequested,
    $core.bool? interruptRequested,
    $core.bool? cancelRequested,
  }) {
    final result = create();
    if (promptNeeded != null) result.promptNeeded = promptNeeded;
    if (promptSummary != null) result.promptSummary = promptSummary;
    if (pauseRequested != null) result.pauseRequested = pauseRequested;
    if (interruptRequested != null)
      result.interruptRequested = interruptRequested;
    if (cancelRequested != null) result.cancelRequested = cancelRequested;
    return result;
  }

  RunOperatorSignals._();

  factory RunOperatorSignals.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunOperatorSignals.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunOperatorSignals',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'promptNeeded')
    ..aOS(2, _omitFieldNames ? '' : 'promptSummary')
    ..aOB(3, _omitFieldNames ? '' : 'pauseRequested')
    ..aOB(4, _omitFieldNames ? '' : 'interruptRequested')
    ..aOB(5, _omitFieldNames ? '' : 'cancelRequested')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunOperatorSignals clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunOperatorSignals copyWith(void Function(RunOperatorSignals) updates) =>
      super.copyWith((message) => updates(message as RunOperatorSignals))
          as RunOperatorSignals;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunOperatorSignals create() => RunOperatorSignals._();
  @$core.override
  RunOperatorSignals createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunOperatorSignals getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunOperatorSignals>(create);
  static RunOperatorSignals? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get promptNeeded => $_getBF(0);
  @$pb.TagNumber(1)
  set promptNeeded($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPromptNeeded() => $_has(0);
  @$pb.TagNumber(1)
  void clearPromptNeeded() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get promptSummary => $_getSZ(1);
  @$pb.TagNumber(2)
  set promptSummary($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPromptSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearPromptSummary() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get pauseRequested => $_getBF(2);
  @$pb.TagNumber(3)
  set pauseRequested($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPauseRequested() => $_has(2);
  @$pb.TagNumber(3)
  void clearPauseRequested() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get interruptRequested => $_getBF(3);
  @$pb.TagNumber(4)
  set interruptRequested($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasInterruptRequested() => $_has(3);
  @$pb.TagNumber(4)
  void clearInterruptRequested() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get cancelRequested => $_getBF(4);
  @$pb.TagNumber(5)
  set cancelRequested($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCancelRequested() => $_has(4);
  @$pb.TagNumber(5)
  void clearCancelRequested() => $_clearField(5);
}

class ControlPlaneRunSummary extends $pb.GeneratedMessage {
  factory ControlPlaneRunSummary({
    $core.String? projectKey,
    $core.String? runId,
    $core.String? runDir,
    RunLifecycleState? lifecycleState,
    $core.String? status,
    $core.String? updatedLabel,
    $fixnum.Int64? updatedEpoch,
    $core.String? meaningfulStatus,
    $core.double? meaningfulScore,
    $core.Iterable<$core.String>? meaningfulReasons,
    $fixnum.Int64? totalRuns,
    $fixnum.Int64? totalSuccess,
    $fixnum.Int64? totalFailed,
    $fixnum.Int64? messageCount,
    $fixnum.Int64? unresolvedRequiredAckCount,
    $core.bool? alertStale,
    $core.bool? alertLowScore,
    RunOperatorSignals? operatorSignals,
  }) {
    final result = create();
    if (projectKey != null) result.projectKey = projectKey;
    if (runId != null) result.runId = runId;
    if (runDir != null) result.runDir = runDir;
    if (lifecycleState != null) result.lifecycleState = lifecycleState;
    if (status != null) result.status = status;
    if (updatedLabel != null) result.updatedLabel = updatedLabel;
    if (updatedEpoch != null) result.updatedEpoch = updatedEpoch;
    if (meaningfulStatus != null) result.meaningfulStatus = meaningfulStatus;
    if (meaningfulScore != null) result.meaningfulScore = meaningfulScore;
    if (meaningfulReasons != null)
      result.meaningfulReasons.addAll(meaningfulReasons);
    if (totalRuns != null) result.totalRuns = totalRuns;
    if (totalSuccess != null) result.totalSuccess = totalSuccess;
    if (totalFailed != null) result.totalFailed = totalFailed;
    if (messageCount != null) result.messageCount = messageCount;
    if (unresolvedRequiredAckCount != null)
      result.unresolvedRequiredAckCount = unresolvedRequiredAckCount;
    if (alertStale != null) result.alertStale = alertStale;
    if (alertLowScore != null) result.alertLowScore = alertLowScore;
    if (operatorSignals != null) result.operatorSignals = operatorSignals;
    return result;
  }

  ControlPlaneRunSummary._();

  factory ControlPlaneRunSummary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ControlPlaneRunSummary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControlPlaneRunSummary',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectKey')
    ..aOS(2, _omitFieldNames ? '' : 'runId')
    ..aOS(3, _omitFieldNames ? '' : 'runDir')
    ..aE<RunLifecycleState>(4, _omitFieldNames ? '' : 'lifecycleState',
        enumValues: RunLifecycleState.values)
    ..aOS(5, _omitFieldNames ? '' : 'status')
    ..aOS(6, _omitFieldNames ? '' : 'updatedLabel')
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'updatedEpoch', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(8, _omitFieldNames ? '' : 'meaningfulStatus')
    ..aD(9, _omitFieldNames ? '' : 'meaningfulScore')
    ..pPS(10, _omitFieldNames ? '' : 'meaningfulReasons')
    ..a<$fixnum.Int64>(
        11, _omitFieldNames ? '' : 'totalRuns', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        12, _omitFieldNames ? '' : 'totalSuccess', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        13, _omitFieldNames ? '' : 'totalFailed', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        14, _omitFieldNames ? '' : 'messageCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(15, _omitFieldNames ? '' : 'unresolvedRequiredAckCount',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(16, _omitFieldNames ? '' : 'alertStale')
    ..aOB(17, _omitFieldNames ? '' : 'alertLowScore')
    ..aOM<RunOperatorSignals>(18, _omitFieldNames ? '' : 'operatorSignals',
        subBuilder: RunOperatorSignals.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControlPlaneRunSummary clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControlPlaneRunSummary copyWith(
          void Function(ControlPlaneRunSummary) updates) =>
      super.copyWith((message) => updates(message as ControlPlaneRunSummary))
          as ControlPlaneRunSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ControlPlaneRunSummary create() => ControlPlaneRunSummary._();
  @$core.override
  ControlPlaneRunSummary createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ControlPlaneRunSummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControlPlaneRunSummary>(create);
  static ControlPlaneRunSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProjectKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get runId => $_getSZ(1);
  @$pb.TagNumber(2)
  set runId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRunId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRunId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get runDir => $_getSZ(2);
  @$pb.TagNumber(3)
  set runDir($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRunDir() => $_has(2);
  @$pb.TagNumber(3)
  void clearRunDir() => $_clearField(3);

  @$pb.TagNumber(4)
  RunLifecycleState get lifecycleState => $_getN(3);
  @$pb.TagNumber(4)
  set lifecycleState(RunLifecycleState value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLifecycleState() => $_has(3);
  @$pb.TagNumber(4)
  void clearLifecycleState() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get updatedLabel => $_getSZ(5);
  @$pb.TagNumber(6)
  set updatedLabel($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUpdatedLabel() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedLabel() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updatedEpoch => $_getI64(6);
  @$pb.TagNumber(7)
  set updatedEpoch($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUpdatedEpoch() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedEpoch() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get meaningfulStatus => $_getSZ(7);
  @$pb.TagNumber(8)
  set meaningfulStatus($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMeaningfulStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearMeaningfulStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get meaningfulScore => $_getN(8);
  @$pb.TagNumber(9)
  set meaningfulScore($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMeaningfulScore() => $_has(8);
  @$pb.TagNumber(9)
  void clearMeaningfulScore() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get meaningfulReasons => $_getList(9);

  @$pb.TagNumber(11)
  $fixnum.Int64 get totalRuns => $_getI64(10);
  @$pb.TagNumber(11)
  set totalRuns($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTotalRuns() => $_has(10);
  @$pb.TagNumber(11)
  void clearTotalRuns() => $_clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get totalSuccess => $_getI64(11);
  @$pb.TagNumber(12)
  set totalSuccess($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTotalSuccess() => $_has(11);
  @$pb.TagNumber(12)
  void clearTotalSuccess() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get totalFailed => $_getI64(12);
  @$pb.TagNumber(13)
  set totalFailed($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasTotalFailed() => $_has(12);
  @$pb.TagNumber(13)
  void clearTotalFailed() => $_clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get messageCount => $_getI64(13);
  @$pb.TagNumber(14)
  set messageCount($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(14)
  $core.bool hasMessageCount() => $_has(13);
  @$pb.TagNumber(14)
  void clearMessageCount() => $_clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get unresolvedRequiredAckCount => $_getI64(14);
  @$pb.TagNumber(15)
  set unresolvedRequiredAckCount($fixnum.Int64 value) => $_setInt64(14, value);
  @$pb.TagNumber(15)
  $core.bool hasUnresolvedRequiredAckCount() => $_has(14);
  @$pb.TagNumber(15)
  void clearUnresolvedRequiredAckCount() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.bool get alertStale => $_getBF(15);
  @$pb.TagNumber(16)
  set alertStale($core.bool value) => $_setBool(15, value);
  @$pb.TagNumber(16)
  $core.bool hasAlertStale() => $_has(15);
  @$pb.TagNumber(16)
  void clearAlertStale() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.bool get alertLowScore => $_getBF(16);
  @$pb.TagNumber(17)
  set alertLowScore($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(17)
  $core.bool hasAlertLowScore() => $_has(16);
  @$pb.TagNumber(17)
  void clearAlertLowScore() => $_clearField(17);

  @$pb.TagNumber(18)
  RunOperatorSignals get operatorSignals => $_getN(17);
  @$pb.TagNumber(18)
  set operatorSignals(RunOperatorSignals value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasOperatorSignals() => $_has(17);
  @$pb.TagNumber(18)
  void clearOperatorSignals() => $_clearField(18);
  @$pb.TagNumber(18)
  RunOperatorSignals ensureOperatorSignals() => $_ensure(17);
}

class ControlPlaneRunActivityCursor extends $pb.GeneratedMessage {
  factory ControlPlaneRunActivityCursor({
    $fixnum.Int64? afterSequence,
    $core.String? resumeToken,
  }) {
    final result = create();
    if (afterSequence != null) result.afterSequence = afterSequence;
    if (resumeToken != null) result.resumeToken = resumeToken;
    return result;
  }

  ControlPlaneRunActivityCursor._();

  factory ControlPlaneRunActivityCursor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ControlPlaneRunActivityCursor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControlPlaneRunActivityCursor',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'afterSequence', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'resumeToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControlPlaneRunActivityCursor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControlPlaneRunActivityCursor copyWith(
          void Function(ControlPlaneRunActivityCursor) updates) =>
      super.copyWith(
              (message) => updates(message as ControlPlaneRunActivityCursor))
          as ControlPlaneRunActivityCursor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ControlPlaneRunActivityCursor create() =>
      ControlPlaneRunActivityCursor._();
  @$core.override
  ControlPlaneRunActivityCursor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ControlPlaneRunActivityCursor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControlPlaneRunActivityCursor>(create);
  static ControlPlaneRunActivityCursor? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get afterSequence => $_getI64(0);
  @$pb.TagNumber(1)
  set afterSequence($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAfterSequence() => $_has(0);
  @$pb.TagNumber(1)
  void clearAfterSequence() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get resumeToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set resumeToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasResumeToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearResumeToken() => $_clearField(2);
}

class ListControlPlaneRunsRequest extends $pb.GeneratedMessage {
  factory ListControlPlaneRunsRequest({
    $core.String? contractVersion,
    ControlPlaneScope? scope,
    $core.String? projectKey,
    $core.int? limit,
    $0.Struct? extensions,
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (scope != null) result.scope = scope;
    if (projectKey != null) result.projectKey = projectKey;
    if (limit != null) result.limit = limit;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
    return result;
  }

  ListControlPlaneRunsRequest._();

  factory ListControlPlaneRunsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListControlPlaneRunsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListControlPlaneRunsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOM<ControlPlaneScope>(2, _omitFieldNames ? '' : 'scope',
        subBuilder: ControlPlaneScope.create)
    ..aOS(3, _omitFieldNames ? '' : 'projectKey')
    ..aI(4, _omitFieldNames ? '' : 'limit', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..aOM<AuthContext>(6, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListControlPlaneRunsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListControlPlaneRunsRequest copyWith(
          void Function(ListControlPlaneRunsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListControlPlaneRunsRequest))
          as ListControlPlaneRunsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListControlPlaneRunsRequest create() =>
      ListControlPlaneRunsRequest._();
  @$core.override
  ListControlPlaneRunsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListControlPlaneRunsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListControlPlaneRunsRequest>(create);
  static ListControlPlaneRunsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  ControlPlaneScope get scope => $_getN(1);
  @$pb.TagNumber(2)
  set scope(ControlPlaneScope value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearScope() => $_clearField(2);
  @$pb.TagNumber(2)
  ControlPlaneScope ensureScope() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get projectKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set projectKey($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProjectKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectKey() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get limit => $_getIZ(3);
  @$pb.TagNumber(4)
  set limit($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => $_clearField(4);

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

  @$pb.TagNumber(6)
  AuthContext get authContext => $_getN(5);
  @$pb.TagNumber(6)
  set authContext(AuthContext value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAuthContext() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthContext() => $_clearField(6);
  @$pb.TagNumber(6)
  AuthContext ensureAuthContext() => $_ensure(5);
}

class ListControlPlaneRunsResponse extends $pb.GeneratedMessage {
  factory ListControlPlaneRunsResponse({
    $core.String? contractVersion,
    $core.Iterable<ControlPlaneRunSummary>? runs,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runs != null) result.runs.addAll(runs);
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ListControlPlaneRunsResponse._();

  factory ListControlPlaneRunsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListControlPlaneRunsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListControlPlaneRunsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..pPM<ControlPlaneRunSummary>(2, _omitFieldNames ? '' : 'runs',
        subBuilder: ControlPlaneRunSummary.create)
    ..aOM<$0.Struct>(3, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListControlPlaneRunsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListControlPlaneRunsResponse copyWith(
          void Function(ListControlPlaneRunsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListControlPlaneRunsResponse))
          as ListControlPlaneRunsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListControlPlaneRunsResponse create() =>
      ListControlPlaneRunsResponse._();
  @$core.override
  ListControlPlaneRunsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListControlPlaneRunsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListControlPlaneRunsResponse>(create);
  static ListControlPlaneRunsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<ControlPlaneRunSummary> get runs => $_getList(1);

  @$pb.TagNumber(3)
  $0.Struct get extensions => $_getN(2);
  @$pb.TagNumber(3)
  set extensions($0.Struct value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExtensions() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtensions() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Struct ensureExtensions() => $_ensure(2);
}

class GetControlPlaneRunRequest extends $pb.GeneratedMessage {
  factory GetControlPlaneRunRequest({
    $core.String? contractVersion,
    ControlPlaneScope? scope,
    $core.String? projectKey,
    $core.String? runId,
    $0.Struct? extensions,
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (scope != null) result.scope = scope;
    if (projectKey != null) result.projectKey = projectKey;
    if (runId != null) result.runId = runId;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
    return result;
  }

  GetControlPlaneRunRequest._();

  factory GetControlPlaneRunRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetControlPlaneRunRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetControlPlaneRunRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOM<ControlPlaneScope>(2, _omitFieldNames ? '' : 'scope',
        subBuilder: ControlPlaneScope.create)
    ..aOS(3, _omitFieldNames ? '' : 'projectKey')
    ..aOS(4, _omitFieldNames ? '' : 'runId')
    ..aOM<$0.Struct>(5, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..aOM<AuthContext>(6, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetControlPlaneRunRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetControlPlaneRunRequest copyWith(
          void Function(GetControlPlaneRunRequest) updates) =>
      super.copyWith((message) => updates(message as GetControlPlaneRunRequest))
          as GetControlPlaneRunRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetControlPlaneRunRequest create() => GetControlPlaneRunRequest._();
  @$core.override
  GetControlPlaneRunRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetControlPlaneRunRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetControlPlaneRunRequest>(create);
  static GetControlPlaneRunRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  ControlPlaneScope get scope => $_getN(1);
  @$pb.TagNumber(2)
  set scope(ControlPlaneScope value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearScope() => $_clearField(2);
  @$pb.TagNumber(2)
  ControlPlaneScope ensureScope() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get projectKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set projectKey($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProjectKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectKey() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get runId => $_getSZ(3);
  @$pb.TagNumber(4)
  set runId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRunId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRunId() => $_clearField(4);

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

  @$pb.TagNumber(6)
  AuthContext get authContext => $_getN(5);
  @$pb.TagNumber(6)
  set authContext(AuthContext value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAuthContext() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthContext() => $_clearField(6);
  @$pb.TagNumber(6)
  AuthContext ensureAuthContext() => $_ensure(5);
}

class GetControlPlaneRunResponse extends $pb.GeneratedMessage {
  factory GetControlPlaneRunResponse({
    $core.String? contractVersion,
    ControlPlaneRunSummary? run,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (run != null) result.run = run;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  GetControlPlaneRunResponse._();

  factory GetControlPlaneRunResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetControlPlaneRunResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetControlPlaneRunResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOM<ControlPlaneRunSummary>(2, _omitFieldNames ? '' : 'run',
        subBuilder: ControlPlaneRunSummary.create)
    ..aOM<$0.Struct>(3, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetControlPlaneRunResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetControlPlaneRunResponse copyWith(
          void Function(GetControlPlaneRunResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetControlPlaneRunResponse))
          as GetControlPlaneRunResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetControlPlaneRunResponse create() => GetControlPlaneRunResponse._();
  @$core.override
  GetControlPlaneRunResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetControlPlaneRunResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetControlPlaneRunResponse>(create);
  static GetControlPlaneRunResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  ControlPlaneRunSummary get run => $_getN(1);
  @$pb.TagNumber(2)
  set run(ControlPlaneRunSummary value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRun() => $_has(1);
  @$pb.TagNumber(2)
  void clearRun() => $_clearField(2);
  @$pb.TagNumber(2)
  ControlPlaneRunSummary ensureRun() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Struct get extensions => $_getN(2);
  @$pb.TagNumber(3)
  set extensions($0.Struct value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExtensions() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtensions() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Struct ensureExtensions() => $_ensure(2);
}

class GetControlPlaneRunActivityPageRequest extends $pb.GeneratedMessage {
  factory GetControlPlaneRunActivityPageRequest({
    $core.String? contractVersion,
    ControlPlaneScope? scope,
    $core.String? projectKey,
    $core.String? runId,
    $core.int? limit,
    ControlPlaneRunActivityCursor? cursor,
    $0.Struct? extensions,
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (scope != null) result.scope = scope;
    if (projectKey != null) result.projectKey = projectKey;
    if (runId != null) result.runId = runId;
    if (limit != null) result.limit = limit;
    if (cursor != null) result.cursor = cursor;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
    return result;
  }

  GetControlPlaneRunActivityPageRequest._();

  factory GetControlPlaneRunActivityPageRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetControlPlaneRunActivityPageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetControlPlaneRunActivityPageRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOM<ControlPlaneScope>(2, _omitFieldNames ? '' : 'scope',
        subBuilder: ControlPlaneScope.create)
    ..aOS(3, _omitFieldNames ? '' : 'projectKey')
    ..aOS(4, _omitFieldNames ? '' : 'runId')
    ..aI(5, _omitFieldNames ? '' : 'limit', fieldType: $pb.PbFieldType.OU3)
    ..aOM<ControlPlaneRunActivityCursor>(6, _omitFieldNames ? '' : 'cursor',
        subBuilder: ControlPlaneRunActivityCursor.create)
    ..aOM<$0.Struct>(7, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..aOM<AuthContext>(8, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetControlPlaneRunActivityPageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetControlPlaneRunActivityPageRequest copyWith(
          void Function(GetControlPlaneRunActivityPageRequest) updates) =>
      super.copyWith((message) =>
              updates(message as GetControlPlaneRunActivityPageRequest))
          as GetControlPlaneRunActivityPageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetControlPlaneRunActivityPageRequest create() =>
      GetControlPlaneRunActivityPageRequest._();
  @$core.override
  GetControlPlaneRunActivityPageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetControlPlaneRunActivityPageRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetControlPlaneRunActivityPageRequest>(create);
  static GetControlPlaneRunActivityPageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  ControlPlaneScope get scope => $_getN(1);
  @$pb.TagNumber(2)
  set scope(ControlPlaneScope value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearScope() => $_clearField(2);
  @$pb.TagNumber(2)
  ControlPlaneScope ensureScope() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get projectKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set projectKey($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProjectKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectKey() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get runId => $_getSZ(3);
  @$pb.TagNumber(4)
  set runId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRunId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRunId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get limit => $_getIZ(4);
  @$pb.TagNumber(5)
  set limit($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLimit() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimit() => $_clearField(5);

  @$pb.TagNumber(6)
  ControlPlaneRunActivityCursor get cursor => $_getN(5);
  @$pb.TagNumber(6)
  set cursor(ControlPlaneRunActivityCursor value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCursor() => $_has(5);
  @$pb.TagNumber(6)
  void clearCursor() => $_clearField(6);
  @$pb.TagNumber(6)
  ControlPlaneRunActivityCursor ensureCursor() => $_ensure(5);

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
  AuthContext get authContext => $_getN(7);
  @$pb.TagNumber(8)
  set authContext(AuthContext value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAuthContext() => $_has(7);
  @$pb.TagNumber(8)
  void clearAuthContext() => $_clearField(8);
  @$pb.TagNumber(8)
  AuthContext ensureAuthContext() => $_ensure(7);
}

class GetControlPlaneRunActivityPageResponse extends $pb.GeneratedMessage {
  factory GetControlPlaneRunActivityPageResponse({
    $core.String? contractVersion,
    $core.Iterable<RunEventRecord>? records,
    ControlPlaneRunActivityCursor? nextCursor,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (records != null) result.records.addAll(records);
    if (nextCursor != null) result.nextCursor = nextCursor;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  GetControlPlaneRunActivityPageResponse._();

  factory GetControlPlaneRunActivityPageResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetControlPlaneRunActivityPageResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetControlPlaneRunActivityPageResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..pPM<RunEventRecord>(2, _omitFieldNames ? '' : 'records',
        subBuilder: RunEventRecord.create)
    ..aOM<ControlPlaneRunActivityCursor>(3, _omitFieldNames ? '' : 'nextCursor',
        subBuilder: ControlPlaneRunActivityCursor.create)
    ..aOM<$0.Struct>(4, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetControlPlaneRunActivityPageResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetControlPlaneRunActivityPageResponse copyWith(
          void Function(GetControlPlaneRunActivityPageResponse) updates) =>
      super.copyWith((message) =>
              updates(message as GetControlPlaneRunActivityPageResponse))
          as GetControlPlaneRunActivityPageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetControlPlaneRunActivityPageResponse create() =>
      GetControlPlaneRunActivityPageResponse._();
  @$core.override
  GetControlPlaneRunActivityPageResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetControlPlaneRunActivityPageResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetControlPlaneRunActivityPageResponse>(create);
  static GetControlPlaneRunActivityPageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<RunEventRecord> get records => $_getList(1);

  @$pb.TagNumber(3)
  ControlPlaneRunActivityCursor get nextCursor => $_getN(2);
  @$pb.TagNumber(3)
  set nextCursor(ControlPlaneRunActivityCursor value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasNextCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearNextCursor() => $_clearField(3);
  @$pb.TagNumber(3)
  ControlPlaneRunActivityCursor ensureNextCursor() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Struct get extensions => $_getN(3);
  @$pb.TagNumber(4)
  set extensions($0.Struct value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasExtensions() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtensions() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Struct ensureExtensions() => $_ensure(3);
}

class ApplyControlPlaneRunActionRequest extends $pb.GeneratedMessage {
  factory ApplyControlPlaneRunActionRequest({
    $core.String? contractVersion,
    ControlPlaneScope? scope,
    $core.String? runId,
    ControlPlaneRunAction? action,
    $core.String? reason,
    $0.Struct? extensions,
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (scope != null) result.scope = scope;
    if (runId != null) result.runId = runId;
    if (action != null) result.action = action;
    if (reason != null) result.reason = reason;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
    return result;
  }

  ApplyControlPlaneRunActionRequest._();

  factory ApplyControlPlaneRunActionRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApplyControlPlaneRunActionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApplyControlPlaneRunActionRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOM<ControlPlaneScope>(2, _omitFieldNames ? '' : 'scope',
        subBuilder: ControlPlaneScope.create)
    ..aOS(3, _omitFieldNames ? '' : 'runId')
    ..aE<ControlPlaneRunAction>(4, _omitFieldNames ? '' : 'action',
        enumValues: ControlPlaneRunAction.values)
    ..aOS(5, _omitFieldNames ? '' : 'reason')
    ..aOM<$0.Struct>(6, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..aOM<AuthContext>(7, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyControlPlaneRunActionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyControlPlaneRunActionRequest copyWith(
          void Function(ApplyControlPlaneRunActionRequest) updates) =>
      super.copyWith((message) =>
              updates(message as ApplyControlPlaneRunActionRequest))
          as ApplyControlPlaneRunActionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyControlPlaneRunActionRequest create() =>
      ApplyControlPlaneRunActionRequest._();
  @$core.override
  ApplyControlPlaneRunActionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApplyControlPlaneRunActionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApplyControlPlaneRunActionRequest>(
          create);
  static ApplyControlPlaneRunActionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  ControlPlaneScope get scope => $_getN(1);
  @$pb.TagNumber(2)
  set scope(ControlPlaneScope value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearScope() => $_clearField(2);
  @$pb.TagNumber(2)
  ControlPlaneScope ensureScope() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get runId => $_getSZ(2);
  @$pb.TagNumber(3)
  set runId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRunId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRunId() => $_clearField(3);

  @$pb.TagNumber(4)
  ControlPlaneRunAction get action => $_getN(3);
  @$pb.TagNumber(4)
  set action(ControlPlaneRunAction value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAction() => $_has(3);
  @$pb.TagNumber(4)
  void clearAction() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get reason => $_getSZ(4);
  @$pb.TagNumber(5)
  set reason($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasReason() => $_has(4);
  @$pb.TagNumber(5)
  void clearReason() => $_clearField(5);

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
  AuthContext get authContext => $_getN(6);
  @$pb.TagNumber(7)
  set authContext(AuthContext value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAuthContext() => $_has(6);
  @$pb.TagNumber(7)
  void clearAuthContext() => $_clearField(7);
  @$pb.TagNumber(7)
  AuthContext ensureAuthContext() => $_ensure(6);
}

class ApplyControlPlaneRunActionResponse extends $pb.GeneratedMessage {
  factory ApplyControlPlaneRunActionResponse({
    $core.String? contractVersion,
    $core.String? runId,
    ControlPlaneRunAction? action,
    $core.bool? accepted,
    RunLifecycleState? lifecycleState,
    $core.String? message,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (runId != null) result.runId = runId;
    if (action != null) result.action = action;
    if (accepted != null) result.accepted = accepted;
    if (lifecycleState != null) result.lifecycleState = lifecycleState;
    if (message != null) result.message = message;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ApplyControlPlaneRunActionResponse._();

  factory ApplyControlPlaneRunActionResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApplyControlPlaneRunActionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApplyControlPlaneRunActionResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'runId')
    ..aE<ControlPlaneRunAction>(3, _omitFieldNames ? '' : 'action',
        enumValues: ControlPlaneRunAction.values)
    ..aOB(4, _omitFieldNames ? '' : 'accepted')
    ..aE<RunLifecycleState>(5, _omitFieldNames ? '' : 'lifecycleState',
        enumValues: RunLifecycleState.values)
    ..aOS(6, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Struct>(7, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyControlPlaneRunActionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyControlPlaneRunActionResponse copyWith(
          void Function(ApplyControlPlaneRunActionResponse) updates) =>
      super.copyWith((message) =>
              updates(message as ApplyControlPlaneRunActionResponse))
          as ApplyControlPlaneRunActionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyControlPlaneRunActionResponse create() =>
      ApplyControlPlaneRunActionResponse._();
  @$core.override
  ApplyControlPlaneRunActionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApplyControlPlaneRunActionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApplyControlPlaneRunActionResponse>(
          create);
  static ApplyControlPlaneRunActionResponse? _defaultInstance;

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
  ControlPlaneRunAction get action => $_getN(2);
  @$pb.TagNumber(3)
  set action(ControlPlaneRunAction value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAction() => $_has(2);
  @$pb.TagNumber(3)
  void clearAction() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get accepted => $_getBF(3);
  @$pb.TagNumber(4)
  set accepted($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAccepted() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccepted() => $_clearField(4);

  @$pb.TagNumber(5)
  RunLifecycleState get lifecycleState => $_getN(4);
  @$pb.TagNumber(5)
  set lifecycleState(RunLifecycleState value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasLifecycleState() => $_has(4);
  @$pb.TagNumber(5)
  void clearLifecycleState() => $_clearField(5);

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

class ApplyControlPlaneReviewDispositionRequest extends $pb.GeneratedMessage {
  factory ApplyControlPlaneReviewDispositionRequest({
    $core.String? contractVersion,
    ControlPlaneScope? scope,
    $core.String? projectKey,
    $core.String? planId,
    $core.String? actor,
    ReviewDisposition? decision,
    $core.String? reason,
    $0.Struct? extensions,
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (scope != null) result.scope = scope;
    if (projectKey != null) result.projectKey = projectKey;
    if (planId != null) result.planId = planId;
    if (actor != null) result.actor = actor;
    if (decision != null) result.decision = decision;
    if (reason != null) result.reason = reason;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
    return result;
  }

  ApplyControlPlaneReviewDispositionRequest._();

  factory ApplyControlPlaneReviewDispositionRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApplyControlPlaneReviewDispositionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApplyControlPlaneReviewDispositionRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOM<ControlPlaneScope>(2, _omitFieldNames ? '' : 'scope',
        subBuilder: ControlPlaneScope.create)
    ..aOS(3, _omitFieldNames ? '' : 'projectKey')
    ..aOS(4, _omitFieldNames ? '' : 'planId')
    ..aOS(5, _omitFieldNames ? '' : 'actor')
    ..aE<ReviewDisposition>(6, _omitFieldNames ? '' : 'decision',
        enumValues: ReviewDisposition.values)
    ..aOS(7, _omitFieldNames ? '' : 'reason')
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..aOM<AuthContext>(9, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyControlPlaneReviewDispositionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyControlPlaneReviewDispositionRequest copyWith(
          void Function(ApplyControlPlaneReviewDispositionRequest) updates) =>
      super.copyWith((message) =>
              updates(message as ApplyControlPlaneReviewDispositionRequest))
          as ApplyControlPlaneReviewDispositionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyControlPlaneReviewDispositionRequest create() =>
      ApplyControlPlaneReviewDispositionRequest._();
  @$core.override
  ApplyControlPlaneReviewDispositionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApplyControlPlaneReviewDispositionRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ApplyControlPlaneReviewDispositionRequest>(create);
  static ApplyControlPlaneReviewDispositionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  ControlPlaneScope get scope => $_getN(1);
  @$pb.TagNumber(2)
  set scope(ControlPlaneScope value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearScope() => $_clearField(2);
  @$pb.TagNumber(2)
  ControlPlaneScope ensureScope() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get projectKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set projectKey($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProjectKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectKey() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get planId => $_getSZ(3);
  @$pb.TagNumber(4)
  set planId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPlanId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlanId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get actor => $_getSZ(4);
  @$pb.TagNumber(5)
  set actor($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasActor() => $_has(4);
  @$pb.TagNumber(5)
  void clearActor() => $_clearField(5);

  @$pb.TagNumber(6)
  ReviewDisposition get decision => $_getN(5);
  @$pb.TagNumber(6)
  set decision(ReviewDisposition value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasDecision() => $_has(5);
  @$pb.TagNumber(6)
  void clearDecision() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get reason => $_getSZ(6);
  @$pb.TagNumber(7)
  set reason($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasReason() => $_has(6);
  @$pb.TagNumber(7)
  void clearReason() => $_clearField(7);

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

  @$pb.TagNumber(9)
  AuthContext get authContext => $_getN(8);
  @$pb.TagNumber(9)
  set authContext(AuthContext value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAuthContext() => $_has(8);
  @$pb.TagNumber(9)
  void clearAuthContext() => $_clearField(9);
  @$pb.TagNumber(9)
  AuthContext ensureAuthContext() => $_ensure(8);
}

class ApplyControlPlaneReviewDispositionResponse extends $pb.GeneratedMessage {
  factory ApplyControlPlaneReviewDispositionResponse({
    $core.String? contractVersion,
    $core.String? projectKey,
    $core.String? planId,
    $core.bool? accepted,
    ReviewDecision? reviewDecision,
    PrLifecycleState? prLifecycleState,
    $core.String? message,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (projectKey != null) result.projectKey = projectKey;
    if (planId != null) result.planId = planId;
    if (accepted != null) result.accepted = accepted;
    if (reviewDecision != null) result.reviewDecision = reviewDecision;
    if (prLifecycleState != null) result.prLifecycleState = prLifecycleState;
    if (message != null) result.message = message;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  ApplyControlPlaneReviewDispositionResponse._();

  factory ApplyControlPlaneReviewDispositionResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApplyControlPlaneReviewDispositionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApplyControlPlaneReviewDispositionResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'projectKey')
    ..aOS(3, _omitFieldNames ? '' : 'planId')
    ..aOB(4, _omitFieldNames ? '' : 'accepted')
    ..aOM<ReviewDecision>(5, _omitFieldNames ? '' : 'reviewDecision',
        subBuilder: ReviewDecision.create)
    ..aOM<PrLifecycleState>(6, _omitFieldNames ? '' : 'prLifecycleState',
        subBuilder: PrLifecycleState.create)
    ..aOS(7, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Struct>(8, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyControlPlaneReviewDispositionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyControlPlaneReviewDispositionResponse copyWith(
          void Function(ApplyControlPlaneReviewDispositionResponse) updates) =>
      super.copyWith((message) =>
              updates(message as ApplyControlPlaneReviewDispositionResponse))
          as ApplyControlPlaneReviewDispositionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyControlPlaneReviewDispositionResponse create() =>
      ApplyControlPlaneReviewDispositionResponse._();
  @$core.override
  ApplyControlPlaneReviewDispositionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApplyControlPlaneReviewDispositionResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ApplyControlPlaneReviewDispositionResponse>(create);
  static ApplyControlPlaneReviewDispositionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get projectKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set projectKey($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProjectKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearProjectKey() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get planId => $_getSZ(2);
  @$pb.TagNumber(3)
  set planId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPlanId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlanId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get accepted => $_getBF(3);
  @$pb.TagNumber(4)
  set accepted($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAccepted() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccepted() => $_clearField(4);

  @$pb.TagNumber(5)
  ReviewDecision get reviewDecision => $_getN(4);
  @$pb.TagNumber(5)
  set reviewDecision(ReviewDecision value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasReviewDecision() => $_has(4);
  @$pb.TagNumber(5)
  void clearReviewDecision() => $_clearField(5);
  @$pb.TagNumber(5)
  ReviewDecision ensureReviewDecision() => $_ensure(4);

  @$pb.TagNumber(6)
  PrLifecycleState get prLifecycleState => $_getN(5);
  @$pb.TagNumber(6)
  set prLifecycleState(PrLifecycleState value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPrLifecycleState() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrLifecycleState() => $_clearField(6);
  @$pb.TagNumber(6)
  PrLifecycleState ensurePrLifecycleState() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get message => $_getSZ(6);
  @$pb.TagNumber(7)
  set message($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMessage() => $_has(6);
  @$pb.TagNumber(7)
  void clearMessage() => $_clearField(7);

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

class EnsureControlPlaneWorkerRequest extends $pb.GeneratedMessage {
  factory EnsureControlPlaneWorkerRequest({
    $core.String? contractVersion,
    ControlPlaneScope? scope,
    $core.String? projectKey,
    $0.Struct? extensions,
    AuthContext? authContext,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (scope != null) result.scope = scope;
    if (projectKey != null) result.projectKey = projectKey;
    if (extensions != null) result.extensions = extensions;
    if (authContext != null) result.authContext = authContext;
    return result;
  }

  EnsureControlPlaneWorkerRequest._();

  factory EnsureControlPlaneWorkerRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnsureControlPlaneWorkerRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnsureControlPlaneWorkerRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOM<ControlPlaneScope>(2, _omitFieldNames ? '' : 'scope',
        subBuilder: ControlPlaneScope.create)
    ..aOS(3, _omitFieldNames ? '' : 'projectKey')
    ..aOM<$0.Struct>(4, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..aOM<AuthContext>(5, _omitFieldNames ? '' : 'authContext',
        subBuilder: AuthContext.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureControlPlaneWorkerRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureControlPlaneWorkerRequest copyWith(
          void Function(EnsureControlPlaneWorkerRequest) updates) =>
      super.copyWith(
              (message) => updates(message as EnsureControlPlaneWorkerRequest))
          as EnsureControlPlaneWorkerRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnsureControlPlaneWorkerRequest create() =>
      EnsureControlPlaneWorkerRequest._();
  @$core.override
  EnsureControlPlaneWorkerRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnsureControlPlaneWorkerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnsureControlPlaneWorkerRequest>(
          create);
  static EnsureControlPlaneWorkerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  ControlPlaneScope get scope => $_getN(1);
  @$pb.TagNumber(2)
  set scope(ControlPlaneScope value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearScope() => $_clearField(2);
  @$pb.TagNumber(2)
  ControlPlaneScope ensureScope() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get projectKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set projectKey($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProjectKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectKey() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.Struct get extensions => $_getN(3);
  @$pb.TagNumber(4)
  set extensions($0.Struct value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasExtensions() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtensions() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Struct ensureExtensions() => $_ensure(3);

  @$pb.TagNumber(5)
  AuthContext get authContext => $_getN(4);
  @$pb.TagNumber(5)
  set authContext(AuthContext value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAuthContext() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthContext() => $_clearField(5);
  @$pb.TagNumber(5)
  AuthContext ensureAuthContext() => $_ensure(4);
}

class EnsureControlPlaneWorkerResponse extends $pb.GeneratedMessage {
  factory EnsureControlPlaneWorkerResponse({
    $core.String? contractVersion,
    $core.String? projectKey,
    $core.bool? accepted,
    $core.String? workerId,
    $core.String? message,
    $0.Struct? extensions,
  }) {
    final result = create();
    if (contractVersion != null) result.contractVersion = contractVersion;
    if (projectKey != null) result.projectKey = projectKey;
    if (accepted != null) result.accepted = accepted;
    if (workerId != null) result.workerId = workerId;
    if (message != null) result.message = message;
    if (extensions != null) result.extensions = extensions;
    return result;
  }

  EnsureControlPlaneWorkerResponse._();

  factory EnsureControlPlaneWorkerResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnsureControlPlaneWorkerResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnsureControlPlaneWorkerResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'monarchic.agent_protocol.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractVersion')
    ..aOS(2, _omitFieldNames ? '' : 'projectKey')
    ..aOB(3, _omitFieldNames ? '' : 'accepted')
    ..aOS(4, _omitFieldNames ? '' : 'workerId')
    ..aOS(5, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Struct>(6, _omitFieldNames ? '' : 'extensions',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureControlPlaneWorkerResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureControlPlaneWorkerResponse copyWith(
          void Function(EnsureControlPlaneWorkerResponse) updates) =>
      super.copyWith(
              (message) => updates(message as EnsureControlPlaneWorkerResponse))
          as EnsureControlPlaneWorkerResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnsureControlPlaneWorkerResponse create() =>
      EnsureControlPlaneWorkerResponse._();
  @$core.override
  EnsureControlPlaneWorkerResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnsureControlPlaneWorkerResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnsureControlPlaneWorkerResponse>(
          create);
  static EnsureControlPlaneWorkerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContractVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get projectKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set projectKey($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProjectKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearProjectKey() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get accepted => $_getBF(2);
  @$pb.TagNumber(3)
  set accepted($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccepted() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccepted() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get workerId => $_getSZ(3);
  @$pb.TagNumber(4)
  set workerId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWorkerId() => $_has(3);
  @$pb.TagNumber(4)
  void clearWorkerId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => $_clearField(5);

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
  $async.Future<ResumeLeaseResponse> resumeLease(
          $pb.ClientContext? ctx, ResumeLeaseRequest request) =>
      _client.invoke<ResumeLeaseResponse>(ctx, 'RunnerControlService',
          'ResumeLease', request, ResumeLeaseResponse());
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

/// ClientControlService is the canonical client-facing control-plane RPC
/// contract. It carries scoped run summaries, activity pages, and operator
/// control actions without encoding local workspace compatibility concerns.
class ClientControlServiceApi {
  final $pb.RpcClient _client;

  ClientControlServiceApi(this._client);

  $async.Future<ListControlPlaneRunsResponse> listRuns(
          $pb.ClientContext? ctx, ListControlPlaneRunsRequest request) =>
      _client.invoke<ListControlPlaneRunsResponse>(ctx, 'ClientControlService',
          'ListRuns', request, ListControlPlaneRunsResponse());
  $async.Future<GetControlPlaneRunResponse> getRun(
          $pb.ClientContext? ctx, GetControlPlaneRunRequest request) =>
      _client.invoke<GetControlPlaneRunResponse>(ctx, 'ClientControlService',
          'GetRun', request, GetControlPlaneRunResponse());
  $async.Future<GetControlPlaneRunActivityPageResponse> getRunActivityPage(
          $pb.ClientContext? ctx,
          GetControlPlaneRunActivityPageRequest request) =>
      _client.invoke<GetControlPlaneRunActivityPageResponse>(
          ctx,
          'ClientControlService',
          'GetRunActivityPage',
          request,
          GetControlPlaneRunActivityPageResponse());
  $async.Future<ApplyControlPlaneRunActionResponse> applyRunAction(
          $pb.ClientContext? ctx, ApplyControlPlaneRunActionRequest request) =>
      _client.invoke<ApplyControlPlaneRunActionResponse>(
          ctx,
          'ClientControlService',
          'ApplyRunAction',
          request,
          ApplyControlPlaneRunActionResponse());
  $async.Future<ApplyControlPlaneReviewDispositionResponse>
      applyReviewDisposition($pb.ClientContext? ctx,
              ApplyControlPlaneReviewDispositionRequest request) =>
          _client.invoke<ApplyControlPlaneReviewDispositionResponse>(
              ctx,
              'ClientControlService',
              'ApplyReviewDisposition',
              request,
              ApplyControlPlaneReviewDispositionResponse());
  $async.Future<EnsureControlPlaneWorkerResponse> ensureWorker(
          $pb.ClientContext? ctx, EnsureControlPlaneWorkerRequest request) =>
      _client.invoke<EnsureControlPlaneWorkerResponse>(
          ctx,
          'ClientControlService',
          'EnsureWorker',
          request,
          EnsureControlPlaneWorkerResponse());
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
