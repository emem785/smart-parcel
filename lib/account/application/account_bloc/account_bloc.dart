import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_parcel/account/domain/usecases/account_usecases.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final AccountUseCases accountUseCases;
  AccountBloc(this.accountUseCases) : super(const AccountInitial()) {
    on<EditUser>(accountUseCases.editUserUseCase);
    on<ResetPassword>(accountUseCases.resetPasswordUseCase);
    on<OpenSupport>(accountUseCases.openSupportUseCase);
    on<UploadPhoto>(accountUseCases.uploadPhotoUsecase);
    on<SelectImage>(accountUseCases.selectImageUsecase);
  }
}
