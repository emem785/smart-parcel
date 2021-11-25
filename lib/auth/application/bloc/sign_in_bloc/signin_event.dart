part of 'signin_bloc.dart';

@immutable
@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.login({
    required String email,
    required String password,
  }) = Login;
  const factory SignInEvent.forgotPassword({
    required String email,
  }) = ForgotPassword;

  const factory SignInEvent.confirmOtp({
    required String otp,
    required String email,
  }) = ForgotPasswordConfirmOtp;
  const factory SignInEvent.confirmPassword({
    required String email,
    required String password,
    required String confirmPassword,
  }) = ForgotPasswordConfirmPasword;
}
