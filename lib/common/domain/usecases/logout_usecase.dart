import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/application/auth_bloc/auth_bloc.dart';
import 'package:smart_parcel/common/domain/repositories/auth_repository.dart';

class LogoutUseCase {
  final AuthRepository authRepository;

  LogoutUseCase(this.authRepository);
  FutureOr<void> call(Logout event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final response = await authRepository.removeUser();
    return response.fold(
      (l) => emit(AuthState.error(l)),
      (r) => _removeToken(emit),
    );
  }

  Future<void> _removeToken(Emitter<AuthState> emit) async {
    final response = await authRepository.removeToken();
    return response.fold(
      (l) => emit(AuthState.error(l)),
      (r) => emit(const AuthState.loggedOut()),
    );
  }
}
