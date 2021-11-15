import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/auth/domain/interface/auth_storage_interface.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/register_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';
import 'package:smart_parcel/auth/domain/models/verify_otp_response.dart';
import 'package:smart_parcel/auth/infrastructure/services/auth_http_service.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class SignUpRepository {
  final ChopperClient client;
  final AuthStorageInterface authStorage;
  late AuthHttpService authHttpService;

  SignUpRepository(this.client, this.authStorage) {
    authHttpService = AuthHttpService.create(client);
  }

  SingleResponse<RegisterResponse> signUp({
    required User user,
    required String password,
  }) {
    final Map<String, dynamic> body = {};
    body.addAll(user.toMap());
    body.addAll({'password': password});

    return postData(authHttpService.signUp, body);
  }

  SingleResponse<SimpleAuthResponse> requestOtp({
    required String email,
  }) {
    final Map<String, dynamic> body = {};
    body.addAll({"email": email});

    return postData(authHttpService.requestOtp, body);
  }

  SingleResponse<VerifyOtpResponse> submitOtp({
    required String otp,
  }) {
    final Map<String, dynamic> body = {};
    body.addAll({"otp": otp});

    return postData(authHttpService.submitOtp, body);
  }

  SingleResponse<LoginResponse> login({
    required String email,
    required String password,
  }) {
    final Map<String, dynamic> body = {};
    body.addAll({'email': email});
    body.addAll({'password': password});

    return postData(authHttpService.signIn, body);
  }

  Future<void> storeUser(User user) => authStorage.storeUser(user);
  Future<void> storeToken(AuthToken authToken) =>
      authStorage.storeToken(authToken);
}
