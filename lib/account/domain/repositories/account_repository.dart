import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/account/infrastructure/services/account_http_service.dart';
import 'package:smart_parcel/auth/domain/interface/auth_storage_interface.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class AccountRepository {
  final CommonStorageInterface commonStorageInterface;
  final AuthStorageInterface authStorageInterface;
  final ChopperClient chopperClient;
  late AccountHttpService accountHttpService;

  AccountRepository(
    this.commonStorageInterface,
    this.chopperClient,
    this.authStorageInterface,
  ) {
    accountHttpService = AccountHttpService.create(chopperClient);
  }

  SingleResponse<LoginResponse> editUser(User user) {
    return postDataAuth(accountHttpService.editUser, user.toMap());
  }

  // SingleResponse<LoginResponse> deleteUser(String userId) {
  //   return postDataAuth(accountHttpService.editUser, user.toMap());
  // }

  SingleResponse<LoginResponse> addProfilePhoto(List<int> imageBytes) {
    return postBytes(accountHttpService.profilePhoto, imageBytes);
  }

  SingleResponse<SimpleAuthResponse> resetPassword({
    required String password,
    required String newPassword,
  }) {
    final body = {
      "old_password": password,
      "new_password": newPassword,
      "confirm_password": newPassword,
    };
    return postDataAuth(accountHttpService.resetPassword, body);
  }

  Future<void> storeUser(User user) => authStorageInterface.storeUser(user);
}
