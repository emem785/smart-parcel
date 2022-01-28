import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_full_screen_alert.dart';
import 'package:smart_parcel/common/domain/usecases/show_options_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';
import 'package:smart_parcel/parcels/domain/usecases/get_history_usecase.dart';

class ParcelUseCases extends BaseUseCases {
  final GetHistoryUseCase getHistoryUseCase;

  ParcelUseCases({
    required this.getHistoryUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
          showOptionUseCase: ShowOptionUseCase(),
          showFullScreenDialogue: ShowFullScreenDialogue(),
        );
}
