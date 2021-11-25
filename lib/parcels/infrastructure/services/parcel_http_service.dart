import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/parcel/domain/models/parcel_response.dart';

part 'parcel_http_service.chopper.dart';

@ChopperApi()
abstract class ParcelHttpService extends ChopperService {
  @Get(path: 'user/profile/')
  Future<Response<ParcelResponse>> getParcelHistory(
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  static ParcelHttpService create([ChopperClient? client]) =>
      _$ParcelHttpService(client);
}
