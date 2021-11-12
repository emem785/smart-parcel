import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';

class BaseUseCases {
  final ShowErrorUseCase showErrorUseCase;
  final ShowPromptUseCase showPromptUseCase;

  BaseUseCases({
    required this.showErrorUseCase,
    required this.showPromptUseCase,
  });
}
