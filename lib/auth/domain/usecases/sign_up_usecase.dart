import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_up_bloc/signup_bloc.dart';
import 'package:smart_parcel/auth/domain/models/register_response.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_up_repository.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';

class SignUpUsecase {
  final SignUpRepository signUpRepository;

  SignUpUsecase(this.signUpRepository);
  FutureOr<void> call(SignUp event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.loading());
    if (event.confirmPassword != event.password) {
      emit(const SignUpState.error(Failure("Passwords do not match")));
      return;
    }
    final response = await signUpRepository.signUp(
      user: event.user,
      password: event.password,
    );

    return response.fold(
      (l) => emit(SignUpState.error(l)),
      (r) => signUp(r, emit),
    );
  }

  Future<void> signUp(
    RegisterResponse response,
    Emitter<SignUpState> emit,
  ) async {
    await signUpRepository.storeUser(response.user);
    emit(SignUpState.registered(response.user));
  }
}
