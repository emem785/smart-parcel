import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_in_repository.dart';

class SubmitPasswordOtpUseCase {
  final SignInRepository signInRepository;

  SubmitPasswordOtpUseCase(this.signInRepository);
  FutureOr<void> call(
    ForgotPasswordConfirmOtp event,
    Emitter<SignInState> emit,
  ) async {
    emit(const SignInState.loading());

    final response = await signInRepository.submitPasswordOtp(
      email: event.email,
      otp: event.otp,
    );

    return response.fold(
      (l) => emit(SignInState.error(l)),
      (r) => emit(const SignInState.otpConfirmed()),
    );
  }
}
