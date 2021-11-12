part of 'signin_bloc.dart';

@immutable
@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = SigInInitial;
  const factory SignInState.loading() = SigInLoading;
}
