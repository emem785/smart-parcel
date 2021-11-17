import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';

class BaseUseCases {
  final ShowErrorUseCase showErrorUseCase;
  final ShowPromptUseCase showPromptUseCase;
  final ShowAlertUseCase showAlertUseCase;

  BaseUseCases({
    required this.showAlertUseCase,
    required this.showErrorUseCase,
    required this.showPromptUseCase,
  });
}
