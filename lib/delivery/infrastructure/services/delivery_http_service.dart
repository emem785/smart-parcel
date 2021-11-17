import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/delivery/domain/models/booking_response.dart';

part 'delivery_http_service.chopper.dart';

@ChopperApi()
abstract class DeliveryHttpService extends ChopperService {
  @Post(path: '/self_storage/')
  Future<Response<BookingResponse>> bookSelfStorage(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  static DeliveryHttpService create([ChopperClient? client]) =>
      _$DeliveryHttpService(client);
}
