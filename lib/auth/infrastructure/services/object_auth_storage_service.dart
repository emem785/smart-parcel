import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/domain/interface/auth_storage_interface.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/models/user_entitiy.dart';
import 'package:smart_parcel/main.dart';

const userKey = 'user';
const tokenKey = 'token';

@dev
@Injectable(as: AuthStorageInterface)
class ObjectAuthStorageService implements AuthStorageInterface {
  final SharedPreferences preferences;

  ObjectAuthStorageService(this.preferences);

  @override
  Future<void> storeToken(AuthToken token) async {
    await preferences.setString(tokenKey, jsonEncode(token.toMap()));
  }

  @override
  Future<void> createUser(User user) async {
    final box = objectbox.store.box<UserEntity>();
    box.put(UserEntity.toDomain(user));
  }

  @override
  Future<void> editUser(User user) async {
    final box = objectbox.store.box<UserEntity>();
    box.put(UserEntity.toDomainEdit(user));
  }
}
