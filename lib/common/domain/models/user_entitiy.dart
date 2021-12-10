import 'dart:typed_data';

import 'package:objectbox/objectbox.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

@Entity()
class UserEntity {
  int? id;
  String uid;
  String firstName;
  String lastName;
  String email;
  String? profilePicUrl;
  Uint8List? profilePictureBytes;
  String phone;

  UserEntity({
    this.id = 0,
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.profilePicUrl,
    this.profilePictureBytes,
    required this.phone,
  });

  @override
  String toString() {
    return 'UserEntity(id:$id , firstName: $firstName, lastName: $lastName, email: $email, profilePicUrl:$profilePicUrl,profilePicBytes:$profilePictureBytes , phone: $phone)';
  }

  factory UserEntity.toDomain(User user) {
    return UserEntity(
      id: 0,
      uid: user.id ?? "",
      firstName: user.firstName,
      lastName: user.lastName,
      email: user.email,
      profilePicUrl: user.profilePicUrl,
      phone: user.phone,
      profilePictureBytes: user.profilePicBytes,
    );
  }
  factory UserEntity.toDomainEdit(User user) {
    return UserEntity(
      id: 1,
      uid: user.id ?? "",
      firstName: user.firstName,
      lastName: user.lastName,
      email: user.email,
      profilePicUrl: user.profilePicUrl,
      phone: user.phone,
      profilePictureBytes: user.profilePicBytes,
    );
  }

  User fromDomain() {
    return User(
      id: uid,
      firstName: firstName,
      lastName: lastName,
      email: email,
      profilePicUrl: profilePicUrl,
      phone: phone,
      profilePicBytes: profilePictureBytes,
    );
  }
}
