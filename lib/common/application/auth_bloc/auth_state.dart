part of 'auth_bloc.dart';

@immutable
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.authenticated() = AuthRetreived;
  const factory AuthState.loggedOut() = LoggedOut;
  const factory AuthState.error(Failure failure) = AuthError;
}
