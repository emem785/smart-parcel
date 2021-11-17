import 'dart:async';

import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/common/domain/repositories/auth_repository.dart';

class CheckAuthenticateUseCase {
  final AuthRepository authRepository;

  CheckAuthenticateUseCase(this.authRepository);
  FutureOr<bool> call() async {
    final response = authRepository.getAuthFromStorage();
    return response.fold(
      (l) => false,
      (r) => _checkToken(r),
    );
  }

  _checkToken(AuthToken r) async {
    final response =
        await authRepository.getUserResponse(const AuthToken.empty());
    return response.fold(
      (l) => _refreshToken(r),
      (r) => _storeUser(r),
    );
  }

  _refreshToken(AuthToken r) async {
    final response = await authRepository.refreshToken(r.refresh);

    return response.fold(
      (l) => false,
      (r) => _checkToken(r),
    );
  }

  _storeUser(LoginResponse r) async {
    if (r.user != null) {
      await authRepository.storeUser(r.user!);
      return true;
    }
    return false;
  }
}
