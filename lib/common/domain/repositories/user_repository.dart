import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';
import 'package:smart_parcel/common/infrastructure/services/common_http_service.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class UserRepository {
  final CommonStorageInterface commonStorageInterface;
  final ChopperClient chopperClient;
  late CommonHttpService commonHttpService;

  UserRepository(this.commonStorageInterface, this.chopperClient) {
    commonHttpService = CommonHttpService.create(chopperClient);
  }

  Either<Failure, User> getUserFromStorage() {
    final userOption = commonStorageInterface.getUser();
    return userOption.fold(
      () => const Left(Failure("No User in storage")),
      (a) => right(a),
    );
  }

  Stream<User?> getUserStream() => commonStorageInterface.getUserStream();

  SingleResponse<SimpleAuthResponse> updateFirebaseKey(
    String firebaseToken,
    AuthToken authToken,
  ) {
    final body = {"key": firebaseToken};
    return postData(commonHttpService.updateFirebaseKey, body, authToken);
  }

  SingleResponse<String> deactivateAccount() {
    return getDataAuth(commonHttpService.deactivateAccount);
  }
}
