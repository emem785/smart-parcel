import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/application/user_bloc/user_bloc.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/user_repository.dart';

class GetStoredUserStreamUseCase {
  final UserRepository userRepository;

  GetStoredUserStreamUseCase(this.userRepository);
  FutureOr<void> call(
    GetUserStreamFromStorage event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserLoading());
    final response =
        userRepository.getUserStream().map((user) => user ?? User.empty());
    emit(UserState.userStreamRetreived(response));
  }
}
