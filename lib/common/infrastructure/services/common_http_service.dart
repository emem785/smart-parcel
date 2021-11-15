import 'package:chopper/chopper.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';

part 'common_http_service.chopper.dart';

@ChopperApi()
abstract class CommonHttpService extends ChopperService {
  @Get(path: '/user/profile/')
  Future<Response<LoginResponse>> getUser(
    @Header('Authorization') String token,
  );

  @Post(path: '/auth/token/refresh/')
  Future<Response<AuthToken>> refreshToken(
    @Body() Map<String, dynamic> body,
  );

  static CommonHttpService create([ChopperClient? client]) =>
      _$CommonHttpService(client);
}
