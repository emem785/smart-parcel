import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/forgot_password_response.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/register_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';
import 'package:smart_parcel/auth/domain/models/verify_otp_response.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class JsonParser {
  static Map<Type, JsonFactory> factories = {
    User: User.userFactory,
    RegisterResponse: RegisterResponse.jsonFactory,
    SimpleAuthResponse: SimpleAuthResponse.jsonFactory,
    VerifyOtpResponse: VerifyOtpResponse.jsonFactory,
    LoginResponse: LoginResponse.jsonFactory,
    ForgotPasswordResponse: ForgotPasswordResponse.jsonFactory,
    AuthToken: AuthToken.jsonFactory,
  };

  static dynamic decode<T>(entity) {
    if (entity is Map) {
      return _decodeMap<T>(entity);
    }

    if (entity is Iterable) {
      return entity.map((e) => _decodeMap<T>(e)).toList();
    }
  }

  static T _decodeMap<T>(entity) {
    if (factories.keys.contains(T)) {
      final jsonFactory = factories[T]!;
      return jsonFactory(entity);
    }
    throw Exception("factory with type $T not found");
  }
}
