// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_http_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$DeliveryHttpService extends DeliveryHttpService {
  _$DeliveryHttpService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DeliveryHttpService;

  @override
  Future<Response<BookingResponse>> bookSelfStorage(
      Map<String, dynamic> body, String refreshToken, String accessToken) {
    final $url = '/self_storage/';
    final $headers = {
      'refresh': refreshToken,
      'authorization': accessToken,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BookingResponse, BookingResponse>($request);
  }

  @override
  Future<Response<List<CenterDistrict>>> getParcelCenters(
      String refreshToken, String accessToken) {
    final $url = '/parcel_centers/';
    final $headers = {
      'refresh': refreshToken,
      'authorization': accessToken,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<List<CenterDistrict>, CenterDistrict>($request);
  }
}
