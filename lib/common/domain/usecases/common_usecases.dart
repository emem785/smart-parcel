import 'package:smart_parcel/common/domain/usecases/authenticate_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/get_stored_user_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/logout_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/populate_textforms_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';

class CommonUseCases extends BaseUseCases {
  final GetStoredUserUseCase getStoredUserUseCase;
  final AuthenticateUseCase authenticateUseCase;
  final LogoutUseCase logoutUseCase;
  final PopulateTextFormUseCase populateTextFormUseCase;

  CommonUseCases({
    required this.getStoredUserUseCase,
    required this.authenticateUseCase,
    required this.logoutUseCase,
    required this.populateTextFormUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
        );
}
