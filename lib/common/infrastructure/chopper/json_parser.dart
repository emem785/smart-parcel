import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/forgot_password_response.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/register_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';
import 'package:smart_parcel/auth/domain/models/verify_otp_response.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/delivery/domain/models/booking_response.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/delivery/domain/models/location_result_response.dart';
import 'package:smart_parcel/parcels/domain/models/parcel_response.dart';
import 'package:smart_parcel/payment/domain/models/cards_response.dart';
import 'package:smart_parcel/payment/domain/models/charge_response.dart';
import 'package:smart_parcel/payment/domain/models/payment_response.dart';
import 'package:smart_parcel/payment/domain/models/paystack_response.dart';

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
    BookingResponse: BookingResponse.jsonFactory,
    CenterDistrict: CenterDistrict.jsonFactory,
    PaystackResponse: PaystackResponse.jsonFactory,
    ParcelResponse: ParcelResponse.jsonFactory,
    PaymentResponse: PaymentResponse.jsonFactory,
    LocationResultResponse: LocationResultResponse.jsonFactory,
    CardResponse: CardResponse.jsonFactory,
    ChargeResponse: ChargeResponse.jsonFactory,
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
