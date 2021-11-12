import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smart_parcel/auth/domain/usecases/auth_usecases.dart';

part 'signin_bloc.freezed.dart';
part 'signin_event.dart';
part 'signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthUseCases authUseCases;
  SignInBloc(this.authUseCases) : super(const SigInInitial()) {
    on<Login>(authUseCases.signInUsecase);
  }
}
