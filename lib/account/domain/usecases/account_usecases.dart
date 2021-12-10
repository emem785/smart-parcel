import 'package:smart_parcel/account/domain/usecases/edit_user_usecase.dart';
import 'package:smart_parcel/account/domain/usecases/open_support_usecase.dart';
import 'package:smart_parcel/account/domain/usecases/reset_password_usecase.dart';
import 'package:smart_parcel/account/domain/usecases/select_image_usecase.dart';
import 'package:smart_parcel/account/domain/usecases/upload_photo_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';

class AccountUseCases extends BaseUseCases {
  final EditUserUseCase editUserUseCase;
  final OpenSupportUseCase openSupportUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;
  final UploadPhotoUsecase uploadPhotoUsecase;
  final SelectImageUsecase selectImageUsecase;

  AccountUseCases({
    required this.editUserUseCase,
    required this.openSupportUseCase,
    required this.resetPasswordUseCase,
    required this.uploadPhotoUsecase,
    required this.selectImageUsecase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
        );
}
