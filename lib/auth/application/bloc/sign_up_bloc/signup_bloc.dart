import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';
import 'package:smart_parcel/auth/domain/usecases/auth_usecases.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthUseCases authUseCases;
  SignUpBloc(this.authUseCases) : super(const SignUpInitial()) {
    on<SignUp>(authUseCases.signUpUsecase);
    on<RequestOtp>(authUseCases.requestOtpUseCase);
    on<SubmitOtp>(authUseCases.submitOtpUseCase);
  }
}
