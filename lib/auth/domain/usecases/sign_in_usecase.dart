import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_in_repository.dart';

class SignInUsecase {
  final SignInRepository signInRepository;

  SignInUsecase(this.signInRepository);

  FutureOr<void> call(Login event, Emitter<SignInState> emit) async {
    emit(const SigInLoading());
  }
}
