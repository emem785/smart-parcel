part of 'signup_bloc.dart';

@immutable
@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUp({
    required User user,
    required String password,
    required String confirmPassword,
    required BuildContext context,
  }) = SignUp;
  const factory SignUpEvent.requestOtp({
    required String email,
  }) = RequestOtp;
  const factory SignUpEvent.submitOtp({
    required String otp,
    required String email,
    required String password,
  }) = SubmitOtp;
}
