import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/auth/domain/interface/auth_storage_interface.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/forgot_password_response.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/infrastructure/services/auth_http_service.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class SignInRepository {
  final ChopperClient client;
  final AuthStorageInterface authStorage;
  late AuthHttpService _authHttpService;

  SignInRepository(this.client, this.authStorage) {
    _authHttpService = AuthHttpService.create(client);
  }

  SingleResponse<LoginResponse> login({
    required String email,
    required String password,
  }) {
    final Map<String, dynamic> body = {};
    body.addAll({'email': email});
    body.addAll({'password': password});

    return postData(_authHttpService.signIn, body, false);
  }

  SingleResponse<ForgotPasswordResponse> forgotPassword({
    required String email,
  }) {
    final Map<String, dynamic> body = {};
    body.addAll({'email': email});

    return postData(_authHttpService.forgotPassword, body, false);
  }

  Future<void> storeUser(User user) => authStorage.storeUser(user);
  Future<void> storeToken(AuthToken authToken) =>
      authStorage.storeToken(authToken);
}
