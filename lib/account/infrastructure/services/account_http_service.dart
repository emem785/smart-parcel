import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';

part 'account_http_service.chopper.dart';

@ChopperApi(baseUrl: '/user')
abstract class AccountHttpService extends ChopperService {
  @Put(path: '/profile/')
  Future<Response<LoginResponse>> editUser(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Put(path: '/profile/', optionalBody: true)
  Future<Response<LoginResponse>> profilePhoto(
    @PartFile('image') List<int> imageBytes,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Post(path: '/reset_password/')
  Future<Response<SimpleAuthResponse>> resetPassword(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  static AccountHttpService create([ChopperClient? client]) =>
      _$AccountHttpService(client);
}
