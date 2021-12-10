import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/domain/interface/auth_storage_interface.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

const userKey = 'user';
const tokenKey = 'token';

@test
@Injectable(as: AuthStorageInterface)
class AuthStorageService implements AuthStorageInterface {
  final SharedPreferences preferences;

  AuthStorageService(this.preferences);

  @override
  Future<void> storeToken(AuthToken token) async {
    await preferences.setString(tokenKey, jsonEncode(token.toMap()));
  }

  @override
  Future<User> convertUserImageToBytes(User user) {
    // TODO: implement convertUserImageToBytes
    throw UnimplementedError();
  }

  @override
  Future<void> createUser(User user) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<void> editUser(User user) {
    // TODO: implement editUser
    throw UnimplementedError();
  }
}
