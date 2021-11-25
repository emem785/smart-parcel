// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_http_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PaymentHttpService extends PaymentHttpService {
  _$PaymentHttpService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PaymentHttpService;

  @override
  Future<Response<PaystackResponse>> initializePayment(
      Map<String, dynamic> body, String refreshToken, String accessToken) {
    final $url = '/initialize/';
    final $headers = {
      'refresh': refreshToken,
      'authorization': accessToken,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<PaystackResponse, PaystackResponse>($request);
  }
}
