import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_up_bloc/signup_bloc.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/verify_otp_response.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_up_repository.dart';

class SubmitOtpUseCase {
  final SignUpRepository signUpRepository;

  SubmitOtpUseCase(this.signUpRepository);
  FutureOr<void> call(SubmitOtp event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.loading());
    final response = await signUpRepository.submitOtp(otp: event.otp);

    return response.fold(
      (l) => emit(SignUpState.error(l)),
      (r) => signIn(r, emit, event.email, event.password),
    );
  }

  Future<void> signIn(
    VerifyOtpResponse r,
    Emitter<SignUpState> emit,
    String email,
    String password,
  ) async {
    final response =
        await signUpRepository.login(email: email, password: password);
    return response.fold(
      (l) => emit(SignUpState.error(l)),
      (r) => storeToken(r, emit),
    );
  }

  Future<void> storeToken(LoginResponse r, Emitter<SignUpState> emit) async {
    if (r.authToken != null) {
      await signUpRepository.storeToken(r.authToken!);
    }
    emit(SignUpState.otpSubmitted(r));
  }
}
