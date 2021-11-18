import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/delivery/domain/models/booking_response.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';

part 'delivery_http_service.chopper.dart';

@ChopperApi()
abstract class DeliveryHttpService extends ChopperService {
  @Post(path: '/self_storage/')
  Future<Response<BookingResponse>> bookSelfStorage(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Get(path: '/parcel_centers/')
  Future<Response<List<CenterDistrict>>> getParcelCenters(
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  static DeliveryHttpService create([ChopperClient? client]) =>
      _$DeliveryHttpService(client);
}
