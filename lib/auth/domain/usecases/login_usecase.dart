import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_up_bloc/signup_bloc.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_in_repository.dart';

class LoginUseCase {
  final SignInRepository signInRepository;

  LoginUseCase(this.signInRepository);
  FutureOr<void> call(Login event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.loading());
    final response = await signInRepository.login(
      email: event.email,
      password: event.password,
    );

    return response.fold(
      (l) => emit(SignUpState.error(l)),
      (r) => null,
    );
  }
}
