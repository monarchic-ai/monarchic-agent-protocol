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
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $0;

import 'monarchic_agent_protocol.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'monarchic_agent_protocol.pbenum.dart';

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
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (artifactId != null) result.artifactId = artifactId;
    if (type != null) result.type = type;
    if (summary != null) result.summary = summary;
    if (path != null) result.path = path;
    if (taskId != null) result.taskId = taskId;
    if (extensions != null) result.extensions = extensions;
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
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (eventType != null) result.eventType = eventType;
    if (timestamp != null) result.timestamp = timestamp;
    if (taskId != null) result.taskId = taskId;
    if (status != null) result.status = status;
    if (message != null) result.message = message;
    if (extensions != null) result.extensions = extensions;
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
