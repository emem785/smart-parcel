part of 'auth_bloc.dart';

@immutable
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticate(BuildContext context) = Authenticate;
  const factory AuthEvent.logout() = Logout;
}
