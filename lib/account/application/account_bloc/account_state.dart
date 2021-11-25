part of 'account_bloc.dart';

@immutable
@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = AccountInitial;
  const factory AccountState.loading() = AccountLoading;
  const factory AccountState.error(Failure failure) = AccountError;
  const factory AccountState.userModified(User user) = UserModified;
  const factory AccountState.passwordChanged() = PasswordChanged;
}
