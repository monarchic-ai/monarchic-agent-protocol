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

import 'package:protobuf/protobuf.dart' as $pb;

import 'monarchic_agent_protocol.pb.dart' as $1;
import 'monarchic_agent_protocol.pbjson.dart';

export 'monarchic_agent_protocol.pb.dart';

abstract class RunnerControlServiceBase extends $pb.GeneratedService {
  $async.Future<$1.RegisterRunnerResponse> registerRunner(
      $pb.ServerContext ctx, $1.RegisterRunnerRequest request);
  $async.Future<$1.HeartbeatResponse> heartbeat(
      $pb.ServerContext ctx, $1.HeartbeatRequest request);
  $async.Future<$1.AcquireLeaseResponse> acquireLease(
      $pb.ServerContext ctx, $1.AcquireLeaseRequest request);
  $async.Future<$1.RenewLeaseResponse> renewLease(
      $pb.ServerContext ctx, $1.RenewLeaseRequest request);
  $async.Future<$1.ResumeLeaseResponse> resumeLease(
      $pb.ServerContext ctx, $1.ResumeLeaseRequest request);
  $async.Future<$1.ReportStepStartedResponse> reportStepStarted(
      $pb.ServerContext ctx, $1.ReportStepStartedRequest request);
  $async.Future<$1.ReportStepProgressResponse> reportStepProgress(
      $pb.ServerContext ctx, $1.ReportStepProgressRequest request);
  $async.Future<$1.ReportStepOutcomeResponse> reportStepOutcome(
      $pb.ServerContext ctx, $1.ReportStepOutcomeRequest request);
  $async.Future<$1.AckCancellationResponse> ackCancellation(
      $pb.ServerContext ctx, $1.AckCancellationRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'RegisterRunner':
        return $1.RegisterRunnerRequest();
      case 'Heartbeat':
        return $1.HeartbeatRequest();
      case 'AcquireLease':
        return $1.AcquireLeaseRequest();
      case 'RenewLease':
        return $1.RenewLeaseRequest();
      case 'ResumeLease':
        return $1.ResumeLeaseRequest();
      case 'ReportStepStarted':
        return $1.ReportStepStartedRequest();
      case 'ReportStepProgress':
        return $1.ReportStepProgressRequest();
      case 'ReportStepOutcome':
        return $1.ReportStepOutcomeRequest();
      case 'AckCancellation':
        return $1.AckCancellationRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'RegisterRunner':
        return registerRunner(ctx, request as $1.RegisterRunnerRequest);
      case 'Heartbeat':
        return heartbeat(ctx, request as $1.HeartbeatRequest);
      case 'AcquireLease':
        return acquireLease(ctx, request as $1.AcquireLeaseRequest);
      case 'RenewLease':
        return renewLease(ctx, request as $1.RenewLeaseRequest);
      case 'ResumeLease':
        return resumeLease(ctx, request as $1.ResumeLeaseRequest);
      case 'ReportStepStarted':
        return reportStepStarted(ctx, request as $1.ReportStepStartedRequest);
      case 'ReportStepProgress':
        return reportStepProgress(ctx, request as $1.ReportStepProgressRequest);
      case 'ReportStepOutcome':
        return reportStepOutcome(ctx, request as $1.ReportStepOutcomeRequest);
      case 'AckCancellation':
        return ackCancellation(ctx, request as $1.AckCancellationRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json =>
      RunnerControlServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => RunnerControlServiceBase$messageJson;
}

abstract class ClientControlServiceBase extends $pb.GeneratedService {
  $async.Future<$1.ListControlPlaneRunsResponse> listRuns(
      $pb.ServerContext ctx, $1.ListControlPlaneRunsRequest request);
  $async.Future<$1.GetControlPlaneRunResponse> getRun(
      $pb.ServerContext ctx, $1.GetControlPlaneRunRequest request);
  $async.Future<$1.GetControlPlaneRunActivityPageResponse> getRunActivityPage(
      $pb.ServerContext ctx, $1.GetControlPlaneRunActivityPageRequest request);
  $async.Future<$1.ApplyControlPlaneRunActionResponse> applyRunAction(
      $pb.ServerContext ctx, $1.ApplyControlPlaneRunActionRequest request);
  $async.Future<$1.ApplyControlPlaneReviewDispositionResponse>
      applyReviewDisposition($pb.ServerContext ctx,
          $1.ApplyControlPlaneReviewDispositionRequest request);
  $async.Future<$1.EnsureControlPlaneWorkerResponse> ensureWorker(
      $pb.ServerContext ctx, $1.EnsureControlPlaneWorkerRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'ListRuns':
        return $1.ListControlPlaneRunsRequest();
      case 'GetRun':
        return $1.GetControlPlaneRunRequest();
      case 'GetRunActivityPage':
        return $1.GetControlPlaneRunActivityPageRequest();
      case 'ApplyRunAction':
        return $1.ApplyControlPlaneRunActionRequest();
      case 'ApplyReviewDisposition':
        return $1.ApplyControlPlaneReviewDispositionRequest();
      case 'EnsureWorker':
        return $1.EnsureControlPlaneWorkerRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'ListRuns':
        return listRuns(ctx, request as $1.ListControlPlaneRunsRequest);
      case 'GetRun':
        return getRun(ctx, request as $1.GetControlPlaneRunRequest);
      case 'GetRunActivityPage':
        return getRunActivityPage(
            ctx, request as $1.GetControlPlaneRunActivityPageRequest);
      case 'ApplyRunAction':
        return applyRunAction(
            ctx, request as $1.ApplyControlPlaneRunActionRequest);
      case 'ApplyReviewDisposition':
        return applyReviewDisposition(
            ctx, request as $1.ApplyControlPlaneReviewDispositionRequest);
      case 'EnsureWorker':
        return ensureWorker(ctx, request as $1.EnsureControlPlaneWorkerRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json =>
      ClientControlServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => ClientControlServiceBase$messageJson;
}
