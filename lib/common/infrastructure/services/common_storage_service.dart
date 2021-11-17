import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/infrastructure/services/auth_storage_service.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

const userKey = 'user';

@Injectable(as: CommonStorageInterface)
class CommonStorageService implements CommonStorageInterface {
  final SharedPreferences preferences;

  CommonStorageService(this.preferences);

  @override
  User getUser() {
    final userJson = preferences.getString(userKey);
    if (userJson != null) {
      return User.fromJson(userJson);
    }
    throw Exception("Nothing Stored");
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
}
