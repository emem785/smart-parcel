import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/auth/domain/interface/auth_storage_interface.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/infrastructure/services/auth_http_service.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/repository/base_repository_functions.dart';

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

    return postData(_authHttpService.signIn, body);
  }
}
