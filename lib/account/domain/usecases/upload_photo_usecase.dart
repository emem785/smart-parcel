import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/account/domain/repositories/account_repository.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';

class UploadPhotoUsecase {
  final AccountRepository accountRepository;

  UploadPhotoUsecase(this.accountRepository);

  FutureOr<void> call(UploadPhoto event, Emitter<AccountState> emit) async {
    emit(const AccountLoading());

    final convertedImage = utf8.encode(String.fromCharCodes(event.imageData));
    final response = await accountRepository.addProfilePhoto(convertedImage);

    return response.fold(
      (l) => emit(AccountState.error(l)),
      (r) => _storeUser(r, emit),
    );
  }

  _storeUser(LoginResponse r, Emitter<AccountState> emit) async {
    if (r.user != null) {
      await accountRepository.storeUser(r.user!);
    }
    emit(AccountState.userModified(r.user!));
  }
}
