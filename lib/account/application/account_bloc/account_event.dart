part of 'account_bloc.dart';

@immutable
@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.editUser(User user) = EditUser;
  const factory AccountEvent.resetPassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) = ResetPassword;
}
