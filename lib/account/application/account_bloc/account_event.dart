part of 'account_bloc.dart';

@immutable
@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.editUser(User user) = EditUser;
  const factory AccountEvent.openSupport(BuildContext context) = OpenSupport;
  const factory AccountEvent.uploadPhoto(Uint8List imageData) = UploadPhoto;
  const factory AccountEvent.selectImage({required BuildContext context}) =
      SelectImage;
  const factory AccountEvent.resetPassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) = ResetPassword;
}
