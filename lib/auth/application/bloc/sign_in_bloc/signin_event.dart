part of 'signin_bloc.dart';

@immutable
@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.login({
    required String email,
    required String password,
  }) = Login;
}
