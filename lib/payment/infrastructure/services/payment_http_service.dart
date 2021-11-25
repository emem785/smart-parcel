import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/payment/domain/models/paystack_response.dart';

part 'payment_http_service.chopper.dart';

@ChopperApi()
abstract class PaymentHttpService extends ChopperService {
  @Post(path: '/initialize/')
  Future<Response<PaystackResponse>> initializePayment(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  static PaymentHttpService create([ChopperClient? client]) =>
      _$PaymentHttpService(client);
}
