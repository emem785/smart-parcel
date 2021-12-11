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
  String? profilePicturePath;
  String phone;

  UserEntity({
    this.id = 0,
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.profilePicUrl,
    this.profilePicturePath = '',
    required this.phone,
  });

  @override
  String toString() {
    return 'UserEntity(id:$id , firstName: $firstName, lastName: $lastName, email: $email, profilePicUrl:$profilePicUrl,profilePicBytes:$profilePicturePath , phone: $phone)';
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
        profilePicturePath: user.profilePicFilePath);
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
        profilePicturePath: user.profilePicFilePath);
  }

  User fromDomain() {
    return User(
      id: uid,
      firstName: firstName,
      lastName: lastName,
      email: email,
      profilePicUrl: profilePicUrl,
      phone: phone,
      profilePicFilePath: profilePicturePath,
    );
  }
}
