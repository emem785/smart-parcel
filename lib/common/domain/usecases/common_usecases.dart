import 'package:smart_parcel/common/domain/usecases/authenticate_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/get_stored_user_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';

class CommonUseCases extends BaseUseCases {
  final GetStoredUserUseCase getStoredUserUseCase;
  final AuthenticateUseCase authenticateUseCase;

  CommonUseCases({
    required this.getStoredUserUseCase,
    required this.authenticateUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
        );
}
