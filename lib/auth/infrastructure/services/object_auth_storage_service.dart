import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
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
  Future<void> storeUser(User user) async {}

  @override
  Future<void> storeToken(AuthToken token) async {
    await preferences.setString(tokenKey, jsonEncode(token.toMap()));
  }

  @override
  Future<void> createUser(User user) async {
    final userWithImage = await saveProfilePictureInStorage(user);
    final box = objectbox.store.box<UserEntity>();
    box.put(UserEntity.toDomain(userWithImage));
  }

  @override
  Future<void> editUser(User user) async {
    final userWithImage = await saveProfilePictureInStorage(user);
    final box = objectbox.store.box<UserEntity>();
    box.put(UserEntity.toDomainEdit(userWithImage));
  }

  @override
  Future<Uint8List> loadImageFromNetwork(User user) async {
    final networkBundle = NetworkAssetBundle(Uri.parse(user.profilePicUrl!));
    final imageBytes = await networkBundle.load(user.profilePicUrl!);
    return imageBytes.buffer.asUint8List();
  }

  @override
  Future<User> saveProfilePictureInStorage(User user) async {
    if (user.profilePicUrl!.isNotEmpty) {
      final directory = await getApplicationDocumentsDirectory();
      final file =
          File('${directory.path}/${user.profilePicUrl!.split("/").last}.jpg');
      await file.writeAsBytes(await loadImageFromNetwork(user));
      await file.create();
      return user.copyWith(profilePicFilePath: file.path);
    }
    return user;
  }
}
