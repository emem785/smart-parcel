import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

abstract class CommonStorageInterface {
  User getUser();
  AuthToken getAuthToken();
}
