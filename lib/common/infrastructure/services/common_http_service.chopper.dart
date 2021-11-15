// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_http_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$CommonHttpService extends CommonHttpService {
  _$CommonHttpService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CommonHttpService;

  @override
  Future<Response<LoginResponse>> getUser(String token) {
    final $url = '/user/profile/';
    final $headers = {
      'Authorization': token,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<LoginResponse, LoginResponse>($request);
  }

  @override
  Future<Response<AuthToken>> refreshToken(Map<String, dynamic> body) {
    final $url = '/auth/token/refresh/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AuthToken, AuthToken>($request);
  }
}
