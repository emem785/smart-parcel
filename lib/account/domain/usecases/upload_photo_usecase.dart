import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/account/domain/repositories/account_repository.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';

class UploadPhotoUsecase {
  final AccountRepository accountRepository;

  UploadPhotoUsecase(this.accountRepository);

  FutureOr<void> call(UploadPhoto event, Emitter<AccountState> emit) async {
    emit(const AccountLoading());

    final imagePart =
        await MultipartFile.fromPath("profile_pics", event.imageFile.path);

    final response = await accountRepository.addProfilePhoto(imagePart);

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
  }
}
