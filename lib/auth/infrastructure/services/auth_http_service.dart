import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/register_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';
import 'package:smart_parcel/auth/domain/models/verify_otp_response.dart';

part 'auth_http_service.chopper.dart';

@ChopperApi()
abstract class AuthHttpService extends ChopperService {
  @Post(path: '/user/add_user/')
  Future<Response<RegisterResponse>> signUp(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Post(path: '/auth/')
  Future<Response<LoginResponse>> signIn(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Post(path: '/otp/new/')
  Future<Response<SimpleAuthResponse>> requestOtp(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Post(path: '/otp/')
  Future<Response<VerifyOtpResponse>> submitOtp(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Post(path: '/user/forget_password/')
  Future<Response<SimpleAuthResponse>> forgotPassword(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );

  @Post(path: 'user/forgot_password/confirm_otp/')
  Future<Response<SimpleAuthResponse>> submitPasswordOtp(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );
  @Post(path: '/user/forgot_password/confirm_password/')
  Future<Response<SimpleAuthResponse>> confirmPassword(
    @Body() Map<String, dynamic> body,
    @Header('refresh') String refreshToken,
    @Header(HttpHeaders.authorizationHeader) String accessToken,
  );
  static AuthHttpService create([ChopperClient? client]) =>
      _$AuthHttpService(client);
}
  