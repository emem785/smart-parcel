import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_up_bloc/signup_bloc.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_up_repository.dart';

class RequestOtpUseCase {
  final SignUpRepository signUpRepository;

  RequestOtpUseCase(this.signUpRepository);
  FutureOr<void> call(RequestOtp event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.loading());
    final response = await signUpRepository.requestOtp(email: event.email);

    return response.fold((l) => emit(SignUpState.error(l)),
        (r) => emit(SignUpState.requestSent(r)));
  }
}
