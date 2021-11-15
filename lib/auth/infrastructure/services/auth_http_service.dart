import 'package:chopper/chopper.dart';
import 'package:smart_parcel/auth/domain/models/forgot_password_response.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/register_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';
import 'package:smart_parcel/auth/domain/models/verify_otp_response.dart';

part 'auth_http_service.chopper.dart';

@ChopperApi()
abstract class AuthHttpService extends ChopperService {
  @Post(path: '/user/add_user/')
  Future<Response<RegisterResponse>> signUp(@Body() Map<String, dynamic> body);

  @Post(path: '/auth/')
  Future<Response<LoginResponse>> signIn(@Body() Map<String, dynamic> body);

  @Post(path: '/otp/new/')
  Future<Response<SimpleAuthResponse>> requestOtp(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: '/otp/')
  Future<Response<VerifyOtpResponse>> submitOtp(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: '/user/forget_password/')
  Future<Response<ForgotPasswordResponse>> forgotPassword(
    @Body() Map<String, dynamic> body,
  );

  static AuthHttpService create([ChopperClient? client]) =>
      _$AuthHttpService(client);
}
