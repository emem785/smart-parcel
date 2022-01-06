import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/common/application/auth_bloc/auth_bloc.dart';
import 'package:smart_parcel/common/domain/repositories/auth_repository.dart';
import 'package:smart_parcel/common/domain/repositories/user_repository.dart';

class AuthenticateUseCase {
  final AuthRepository authRepository;
  final UserRepository userRepository;

  AuthenticateUseCase(this.authRepository, this.userRepository);
  FutureOr<void> call(Authenticate event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    final response = authRepository.getAuthFromStorage();
    return response.fold(
      (l) async {
        await Future.delayed(const Duration(seconds: 1));
        emit(AuthState.error(l));
      },
      (r) => _updateFirebaseKey(event, emit, r),
    );
  }

  _refreshToken(AuthToken r, Emitter<AuthState> emit) async {
    final response = await authRepository.refreshToken(r.refresh);
    return response.fold(
      (l) => emit(AuthState.error(l)),
      (r) => _storeToken(r, emit),
    );
  }

  _updateFirebaseKey(
    Authenticate event,
    Emitter<AuthState> emit,
    AuthToken authToken,
  ) async {
    final firebaseMessaging = event.context.read<FirebaseMessaging>();
    final firebaseKey = (await firebaseMessaging.getToken()) ?? '';
    final response =
        await userRepository.updateFirebaseKey(firebaseKey, authToken);
    return response.fold(
      (l) => emit(AuthState.error(l)),
      (r) => emit(const AuthState.authenticated()),
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
