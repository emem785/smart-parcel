import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/delivery/domain/models/location_result_response.dart';
import 'package:smart_parcel/payment/domain/models/payment_response.dart';

part 'delivery_http_service.chopper.dart';

@ChopperApi()
abstract class DeliveryHttpService extends ChopperService {
  @Post(path: '/self_storage/')
  Future<Response<PaymentResponse>> bookSelfStorage(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Post(path: '/customer_to_customer/')
  Future<Response<PaymentResponse>> bookCustomerToCustomer(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );
  @Get(path: '/locations/')
  Future<Response<List<CenterDistrict>>> getParcelCenters(
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Get(path: '/textsearch/json')
  Future<Response<LocationResultResponse>> searchPlaces(
    @Query('query') String query,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  static DeliveryHttpService create([ChopperClient? client]) =>
      _$DeliveryHttpService(client);
}
