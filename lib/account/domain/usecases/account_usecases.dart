import 'package:smart_parcel/account/domain/usecases/edit_user_usecase.dart';
import 'package:smart_parcel/account/domain/usecases/reset_password_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';

class AccountUseCases extends BaseUseCases {
  final EditUserUseCase editUserUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;

  AccountUseCases({
    required this.editUserUseCase,
    required this.resetPasswordUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
        );
}
