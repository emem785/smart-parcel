import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/payment/domain/models/cards_response.dart';
import 'package:smart_parcel/payment/domain/models/charge_response.dart';
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

  @Post(path: '/charge_authorization/')
  Future<Response<ChargeResponse>> chargeAuthCode(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Get(path: '/user/profile/')
  Future<Response<CardResponse>> getCards(
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Delete(path: '/card/remove/{id}')
  Future<Response<String>> deleteCard(
    @Path("id") int id,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );
  static PaymentHttpService create([ChopperClient? client]) =>
      _$PaymentHttpService(client);
}
