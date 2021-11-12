// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_http_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AuthHttpService extends AuthHttpService {
  _$AuthHttpService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthHttpService;

  @override
  Future<Response<RegisterResponse>> signUp(Map<String, dynamic> body) {
    final $url = '/user/add_user/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<RegisterResponse, RegisterResponse>($request);
  }

  @override
  Future<Response<LoginResponse>> signIn(Map<String, dynamic> body) {
    final $url = '/auth/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<LoginResponse, LoginResponse>($request);
  }

  @override
  Future<Response<SimpleAuthResponse>> requestOtp(Map<String, dynamic> body) {
    final $url = '/otp/new/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SimpleAuthResponse, SimpleAuthResponse>($request);
  }

  @override
  Future<Response<VerifyOtpResponse>> submitOtp(Map<String, dynamic> body) {
    final $url = '/otp/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<VerifyOtpResponse, VerifyOtpResponse>($request);
  }
}
