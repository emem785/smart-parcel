import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/account/domain/repositories/account_repository.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';

class EditUserUseCase {
  final AccountRepository accountRepository;

  EditUserUseCase(this.accountRepository);
  FutureOr<void> call(EditUser event, Emitter<AccountState> emit) async {
    emit(const AccountState.loading());
    final response = await accountRepository.editUser(event.user);

    return response.fold(
      (l) => emit(AccountState.error(l)),
      (r) => _storeUser(r, emit),
    );
  }

  _storeUser(LoginResponse r, Emitter<AccountState> emit) async {
    if (r.user != null) {
      await accountRepository.storeUser(r.user!);
      emit(AccountState.userModified(r.user!));
      return;
    }
    emit(const AccountState.error(Failure("Unexpected Server Error")));
  }
}
