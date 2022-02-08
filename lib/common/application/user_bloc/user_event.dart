part of 'user_bloc.dart';

@immutable
@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUserFromStorage() = GetUserFromStorage;
  const factory UserEvent.deactivateAccount() = DeactivateAccount;
  const factory UserEvent.getUserStreamFromStorage(BuildContext context) =
      GetUserStreamFromStorage;
}
