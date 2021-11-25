part of 'signin_bloc.dart';

@immutable
@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = SigInInitial;
  const factory SignInState.loading() = SigInLoading;
  const factory SignInState.loggedIn(LoginResponse loginResponse) = LoggedIn;
  const factory SignInState.requestSent(String email) = RequestSent;
  const factory SignInState.otpConfirmed() = OtpConfirmed;
  const factory SignInState.passwordConfirmed() = PasswordConfirmed;
  const factory SignInState.error(Failure failure) = SigInError;
  const factory SignInState.userNotActivated(Failure failure) =
      UserNotActivated;
}
