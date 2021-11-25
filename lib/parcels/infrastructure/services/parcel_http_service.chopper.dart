// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_http_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ParcelHttpService extends ParcelHttpService {
  _$ParcelHttpService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ParcelHttpService;

  @override
  Future<Response<ParcelResponse>> getParcelHistory(
      String refreshToken, String accessToken) {
    final $url = 'user/profile/';
    final $headers = {
      'refresh': refreshToken,
      'authorization': accessToken,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ParcelResponse, ParcelResponse>($request);
  }
}
