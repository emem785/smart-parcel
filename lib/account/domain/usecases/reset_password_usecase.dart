import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/account/domain/repositories/account_repository.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';

class ResetPasswordUseCase {
  final AccountRepository accountRepository;

  ResetPasswordUseCase(this.accountRepository);
  FutureOr<void> call(ResetPassword event, Emitter<AccountState> emit) async {
    emit(const AccountState.loading());
    if (event.newPassword != event.confirmPassword) {
      emit(const AccountState.error(Failure("Passwords do not match")));
      return;
    }
    final response = await accountRepository.resetPassword(
      password: event.oldPassword,
      newPassword: event.newPassword,
    );

    return response.fold(
      (l) => emit(AccountState.error(l)),
      (r) => emit(const AccountState.passwordChanged()),
    );
  }
}
