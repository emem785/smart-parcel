import 'package:dartz/dartz.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class UserRepository {
  final CommonStorageInterface commonStorageInterface;

  UserRepository(this.commonStorageInterface);

  Either<Failure, User> getUserFromStorage() {
    final userOption = commonStorageInterface.getUser();
    return userOption.fold(
      () => const Left(Failure("No User in storage")),
      (a) => right(a),
    );
  }

  Stream<User?> getUserStream() => commonStorageInterface.getUserStream();
}
