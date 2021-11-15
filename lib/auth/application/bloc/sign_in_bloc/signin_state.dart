part of 'signin_bloc.dart';

@immutable
@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = SigInInitial;
  const factory SignInState.loading() = SigInLoading;
  const factory SignInState.loggedIn(LoginResponse loginResponse) = LoggedIn;
  const factory SignInState.requestSent() = RequestSent;
  const factory SignInState.error(Failure failure) = SigInError;
}
