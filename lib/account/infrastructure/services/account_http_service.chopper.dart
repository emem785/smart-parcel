// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_http_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AccountHttpService extends AccountHttpService {
  _$AccountHttpService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AccountHttpService;

  @override
  Future<Response<LoginResponse>> editUser(
      Map<String, dynamic> body, String refreshToken, String accessToken) {
    final $url = '/user/profile/';
    final $headers = {
      'refresh': refreshToken,
      'authorization': accessToken,
    };

    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<LoginResponse, LoginResponse>($request);
  }

  @override
  Future<Response<SimpleAuthResponse>> resetPassword(
      Map<String, dynamic> body, String refreshToken, String accessToken) {
    final $url = '/user/reset_password/';
    final $headers = {
      'refresh': refreshToken,
      'authorization': accessToken,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<SimpleAuthResponse, SimpleAuthResponse>($request);
  }
}
