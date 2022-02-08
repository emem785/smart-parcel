import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/user_repository.dart';
import 'package:smart_parcel/common/domain/usecases/common_usecases.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final CommonUseCases commonUseCases;
  final UserRepository userRepository;
  UserBloc(this.commonUseCases, this.userRepository)
      : super(const UserInitial()) {
    on<GetUserFromStorage>(commonUseCases.getStoredUserUseCase);
    on<GetUserStreamFromStorage>(commonUseCases.getStoredUserStreamUseCase);
    on<DeactivateAccount>(_deactivateAccount);
  }

  FutureOr<void> _deactivateAccount(
    DeactivateAccount event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserLoading());
    final response = await userRepository.deactivateAccount();
    return response.fold(
      (l) => emit(UserState.error(l)),
      (r) => emit(const UserState.accountDeactivated()),
    );
  }
}
