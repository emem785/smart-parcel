import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

abstract class AuthStorageInterface {
  Future<void> createUser(User user);
  Future<void> editUser(User user);
  Future<void> storeToken(AuthToken token);
  Future<User> convertUserImageToBytes(User user);
}
