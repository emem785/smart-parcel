import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/auth/domain/interface/auth_storage_interface.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';
import 'package:smart_parcel/common/infrastructure/services/common_http_service.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class AuthRepository {
  final CommonStorageInterface commonStorageInterface;
  final AuthStorageInterface authStorageInterface;
  final ChopperClient chopperClient;
  late CommonHttpService commonHttpService;

  AuthRepository(
    this.commonStorageInterface,
    this.chopperClient,
    this.authStorageInterface,
  ) {
    commonHttpService = CommonHttpService.create(chopperClient);
  }

  Either<Failure, AuthToken> getAuthFromStorage() {
    try {
      final authToken = commonStorageInterface.getAuthToken();
      return Right(authToken);
    } catch (_) {
      return const Left(Failure("No Auth in storage"));
    }
  }

  SingleResponse<LoginResponse> getUserResponse(String token) {
    final header = "Bearer $token";
    return getDataWithToken(commonHttpService.getUser, header);
  }

  SingleResponse<AuthToken> refreshToken(String refreshToken) {
    final body = {"refresh": refreshToken};
    return postData(commonHttpService.refreshToken, body);
  }

  Future<void> storeUser(User user) => authStorageInterface.storeUser(user);
}
