part of 'signup_bloc.dart';

@immutable
@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = SignUpInitial;
  const factory SignUpState.loading() = SignUpLoading;
  const factory SignUpState.registered(User user) = SignUpRegistered;
  const factory SignUpState.otpSubmitted(LoginResponse loginResponse) =
      OtpSubmitted;
  const factory SignUpState.requestSent(SimpleAuthResponse response) =
      OtpRequestSent;
  const factory SignUpState.error(Failure failure) = SignUpError;
  const factory SignUpState.userExistsError(Failure failure) =
      SignUpUserExistsError;
}
