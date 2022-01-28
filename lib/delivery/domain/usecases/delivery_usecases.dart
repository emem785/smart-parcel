import 'package:injectable/injectable.dart';
import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_full_screen_alert.dart';
import 'package:smart_parcel/common/domain/usecases/show_options_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';
import 'package:smart_parcel/delivery/domain/usecases/choose_duration_usecase.dart';
import 'package:smart_parcel/delivery/domain/usecases/finish_transaction_usecase.dart';
import 'package:smart_parcel/delivery/domain/usecases/get_location_districts_usecase.dart';
import 'package:smart_parcel/delivery/domain/usecases/proceed_to_booking_usecase.dart';
import 'package:smart_parcel/delivery/domain/usecases/search_usecase.dart';

@injectable
class DeliveryUseCases extends BaseUseCases {
  final ChooseDurationUseCase chooseDurationUseCase;
  final GetLocationDistrictUseCase getLocationDistrictUseCase;
  final ProceedToBookingUseCase proceedToBookingUseCase;
  final SearchUsecase searchUsecase;
  final FinishTransactionUseCase finishTransactionUseCase;

  DeliveryUseCases({
    required this.chooseDurationUseCase,
    required this.getLocationDistrictUseCase,
    required this.proceedToBookingUseCase,
    required this.searchUsecase,
    required this.finishTransactionUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
          showOptionUseCase: ShowOptionUseCase(),
          showFullScreenDialogue: ShowFullScreenDialogue(),
        );
}
