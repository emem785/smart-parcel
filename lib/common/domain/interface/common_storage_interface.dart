import 'package:dartz/dartz.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

abstract class CommonStorageInterface {
  Option<User> getUser();
  Stream<User?> getUserStream();
  AuthToken getAuthToken();
  Future<void> removeUser();
  Future<void> removeToken();
}
