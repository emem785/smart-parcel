import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_in_repository.dart';

class SignInUsecase {
  final SignInRepository signInRepository;

  SignInUsecase(this.signInRepository);

  FutureOr<void> call(Login event, Emitter<SignInState> emit) async {
    emit(const SigInLoading());

    final response = await signInRepository.login(
        email: event.email, password: event.password);

    return response.fold(
      (l) => emit(SignInState.error(l)),
      (r) => _storeToken(r, emit),
    );
  }

  _storeToken(LoginResponse r, Emitter<SignInState> emit) async {
    if (r.user != null && r.authToken != null) {
      await signInRepository.storeToken(r.authToken!);
      await signInRepository.storeUser(r.user!);
    }
    emit(SignInState.loggedIn(r));
  }
}
