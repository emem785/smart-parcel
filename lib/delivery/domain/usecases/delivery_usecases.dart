import 'package:injectable/injectable.dart';
import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';
import 'package:smart_parcel/delivery/domain/usecases/choose_duration_usecase.dart';
import 'package:smart_parcel/delivery/domain/usecases/get_location_districts_usecase.dart';
import 'package:smart_parcel/delivery/domain/usecases/proceed_to_payment_usecase.dart';
import 'package:smart_parcel/delivery/domain/usecases/search_usecase.dart';

@injectable
class DeliveryUseCases extends BaseUseCases {
  final ChooseDurationUseCase chooseDurationUseCase;
  final GetLocationDistrictUseCase getLocationDistrictUseCase;
  final ProceedToPaymentUseCase proceedToPaymentUseCase;
  final SearchUsecase searchUsecase;

  DeliveryUseCases({
    required this.chooseDurationUseCase,
    required this.getLocationDistrictUseCase,
    required this.proceedToPaymentUseCase,
    required this.searchUsecase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
        );
}
