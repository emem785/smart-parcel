import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/auth/domain/interface/auth_storage_interface.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';
import 'package:smart_parcel/auth/infrastructure/services/auth_http_service.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class SignInRepository {
  final ChopperClient client;
  final CommonStorageInterface commonStorageInterface;
  final AuthStorageInterface authStorage;
  late AuthHttpService _authHttpService;

  SignInRepository(this.client, this.authStorage, this.commonStorageInterface) {
    _authHttpService = AuthHttpService.create(client);
  }

  SingleResponse<LoginResponse> login({
    required String email,
    required String password,
  }) {
    final Map<String, dynamic> body = {};
    body.addAll({'email': email});
    body.addAll({'password': password});

    return postData(_authHttpService.signIn, body);
  }

  SingleResponse<SimpleAuthResponse> forgotPassword({
    required String email,
  }) {
    final Map<String, dynamic> body = {"email": email};

    return postData(_authHttpService.forgotPassword, body);
  }

  SingleResponse<SimpleAuthResponse> submitPasswordOtp({
    required String email,
    required String otp,
  }) {
    final Map<String, dynamic> body = {
      "email": email,
      "otp": otp,
    };
    return postData(_authHttpService.submitPasswordOtp, body);
  }

  SingleResponse<SimpleAuthResponse> confirmPassword({
    required String email,
    required String password,
  }) {
    final Map<String, dynamic> body = {
      "email": email,
      "password": password,
    };
    return postData(_authHttpService.confirmPassword, body);
  }

  Future<void> storeUser(User user) => authStorage.createUser(user);
  Future<void> storeToken(AuthToken authToken) =>
      authStorage.storeToken(authToken);
  Either<Failure, User> getUserFromStorage() {
    final userOption = commonStorageInterface.getUser();
    return userOption.fold(
      () => const Left(Failure("No User in storage")),
      (a) => right(a),
    );
  }
}
