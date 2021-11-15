import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/usecases/common_usecases.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final CommonUseCases commonUseCases;
  UserBloc(this.commonUseCases) : super(const UserInitial()) {
    on<GetUserFromStorage>(commonUseCases.getStoredUserUseCase);
  }
}
