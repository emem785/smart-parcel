import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/common/application/auth_bloc/auth_bloc.dart';
import 'package:smart_parcel/common/domain/repositories/auth_repository.dart';

class AuthenticateUseCase {
  final AuthRepository authRepository;

  AuthenticateUseCase(this.authRepository);
  FutureOr<void> call(Authenticate event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    final response = authRepository.getAuthFromStorage();
    return response.fold(
      (l) async {
        await Future.delayed(const Duration(seconds: 1));
        emit(AuthState.error(l));
      },
      (r) => _refreshToken(r, emit),
    );
  }

  _refreshToken(AuthToken r, Emitter<AuthState> emit) async {
    final response = await authRepository.refreshToken(r.refresh);
    return response.fold(
      (l) => emit(AuthState.error(l)),
      (r) => _storeToken(r, emit),
    );
  }

  _storeToken(
    AuthToken r,
    Emitter<AuthState> emit,
  ) async {
    await authRepository.storeToken(r);
    emit(const AuthState.authenticated());
  }
}


  // _checkToken(AuthToken r, Emitter<AuthState> emit) async {
  //   final response = await authRepository.getUserResponse(r);
  //   return response.fold(
  //     (l) => emit(AuthState.error(l)),
  //     (r) => _storeUser(r, emit),
  //   );
  // }

  // _storeUser(LoginResponse r, Emitter<AuthState> emit) async {
  //   if (r.user != null) {
  //     await authRepository.storeUser(r.user!);
  //     emit(const AuthState.authenticated());
  //     return;
  //   }
  //   emit(const AuthState.error(Failure("Invalid Response")));
  // }