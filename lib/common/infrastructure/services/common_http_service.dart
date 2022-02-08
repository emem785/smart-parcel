import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';

part 'common_http_service.chopper.dart';

@ChopperApi()
abstract class CommonHttpService extends ChopperService {
  @Get(path: '/user/profile/')
  Future<Response<LoginResponse>> getUser(
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Post(path: '/auth/token/refresh/')
  Future<Response<AuthToken>> refreshToken(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Post(path: '/user/firebase_key/update/')
  Future<Response<SimpleAuthResponse>> updateFirebaseKey(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Delete(path: '/user/profile/')
  Future<Response<String>> deactivateAccount(
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );
  static CommonHttpService create([ChopperClient? client]) =>
      _$CommonHttpService(client);
}
