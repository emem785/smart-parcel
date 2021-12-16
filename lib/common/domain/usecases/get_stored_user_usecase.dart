import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/application/user_bloc/user_bloc.dart';
import 'package:smart_parcel/common/domain/repositories/user_repository.dart';

class GetStoredUserUseCase {
  final UserRepository userRepository;

  GetStoredUserUseCase(this.userRepository);
  FutureOr<void> call(GetUserFromStorage event, Emitter<UserState> emit) async {
    emit(const UserLoading());
    final response = userRepository.getUserFromStorage();

    return response.fold(
      (l) => emit(UserState.error(l)),
      (r) => emit(UserState.userRetreived(r)),
    );
  }
}
