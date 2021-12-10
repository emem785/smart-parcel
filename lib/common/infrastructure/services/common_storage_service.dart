import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/infrastructure/services/auth_storage_service.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/models/user_entitiy.dart';

import '../../../main.dart';

const userKey = 'user';

@Injectable(as: CommonStorageInterface)
class CommonStorageService implements CommonStorageInterface {
  final SharedPreferences preferences;

  CommonStorageService(this.preferences);

  @override
  Option<User> getUser() {
    final box = objectbox.store.box<UserEntity>();
    final userEntity = box.query().build().findFirst();
    print("profiler $userEntity");
    if (userEntity != null) {
      return some(userEntity.fromDomain());
    }
    return none();
  }

  @override
  AuthToken getAuthToken() {
    final authTokenJson = preferences.getString(tokenKey);

    if (authTokenJson != null) {
      return AuthToken.fromJson(authTokenJson);
    }
    throw Exception("Nothing Stored");
  }

  @override
  Future<void> removeUser() async {
    final isValid = await preferences.remove(userKey);

    if (isValid) {
      return;
    }
    throw Exception("Nothing Stored");
  }

  @override
  Future<void> removeToken() async {
    final isValid = await preferences.remove(tokenKey);

    if (isValid) {
      return;
    }
    throw Exception("Nothing Stored");
  }

  @override
  Stream<User?> getUserStream() {
    final box = objectbox.store.box<UserEntity>();
    final queryStream = box
        .query()
        .watch(triggerImmediately: true)
        .map((query) => query.findFirst())
        .map((event) {
      print(event);
      return event?.fromDomain();
    });
    return queryStream;
  }
}
