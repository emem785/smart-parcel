import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_in_repository.dart';

class ForgotPasswordUseCase {
  final SignInRepository signInRepository;

  ForgotPasswordUseCase(this.signInRepository);

  FutureOr<void> call(ForgotPassword event, Emitter<SignInState> emit) async {
    emit(const SigInLoading());
    final response = await signInRepository.forgotPassword(email: event.email);
    return response.fold(
      (l) => emit(SignInState.error(l)),
      (r) => emit(const SignInState.requestSent()),
    );
  }
}
