import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_up_bloc/signup_bloc.dart';
import 'package:smart_parcel/auth/domain/models/register_response.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_up_repository.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/utils/phone_validate_util.dart';

class SignUpUsecase {
  final SignUpRepository signUpRepository;

  SignUpUsecase(this.signUpRepository);
  FutureOr<void> call(SignUp event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.loading());
    if (event.confirmPassword != event.password) {
      emit(const SignUpState.error(Failure("Passwords do not match")));
      return;
    }

    final validatedUser = event.user.copyWith(
        phone: PhoneValidateUtil.validatePhoneNumber(event.user.phone));

    final token = await event.context.read<FirebaseMessaging>().getToken();

    final response = await signUpRepository.signUp(
      user: validatedUser,
      password: event.password,
      fireBaseKey: token!,
    );

    return response.fold(
      (l) => _checkError(l, emit),
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

  _checkError(Failure l, Emitter<SignUpState> emit) {
    if (l.message.contains("exists")) {
      emit(SignUpState.userExistsError(l));
      return;
    }
    emit(SignUpState.error(l));
  }
}
