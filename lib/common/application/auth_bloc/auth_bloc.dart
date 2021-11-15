import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/usecases/common_usecases.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CommonUseCases commonUseCases;
  AuthBloc(this.commonUseCases) : super(const AuthInitial()) {
    on<Authenticate>(commonUseCases.authenticateUseCase);
  }
}
