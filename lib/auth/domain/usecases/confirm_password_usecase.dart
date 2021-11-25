import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_in_repository.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';

class ConfirmPasswordUseCase {
  final SignInRepository signInRepository;

  ConfirmPasswordUseCase(this.signInRepository);
  FutureOr<void> call(
    ForgotPasswordConfirmPasword event,
    Emitter<SignInState> emit,
  ) async {
    emit(const SignInState.loading());
    if (event.password != event.confirmPassword) {
      emit(const SignInState.error(Failure("Passwords do not match")));
      return;
    }

    final response = await signInRepository.confirmPassword(
      email: event.email,
      password: event.password,
    );

    return response.fold(
      (l) => emit(SignInState.error(l)),
      (r) => emit(const SignInState.passwordConfirmed()),
    );
  }
}
