import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_full_screen_alert.dart';
import 'package:smart_parcel/common/domain/usecases/show_options_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';

class BaseUseCases {
  final ShowErrorUseCase showErrorUseCase;
  final ShowPromptUseCase showPromptUseCase;
  final ShowAlertUseCase showAlertUseCase;
  final ShowOptionUseCase showOptionUseCase;
  final ShowFullScreenDialogue showFullScreenDialogue;

  BaseUseCases({
    required this.showAlertUseCase,
    required this.showErrorUseCase,
    required this.showPromptUseCase,
    required this.showOptionUseCase,
    required this.showFullScreenDialogue,
  });
}
