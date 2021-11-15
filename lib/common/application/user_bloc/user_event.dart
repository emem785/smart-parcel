part of 'user_bloc.dart';

@immutable
@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUserFromStorage() = GetUserFromStorage;
}
