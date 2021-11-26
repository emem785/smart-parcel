import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';
import 'package:smart_parcel/payment/domain/usecases/make_payment_usecase.dart';
import 'package:smart_parcel/payment/domain/usecases/open_map_usecase.dart';

class PaymentUseCases extends BaseUseCases {
  final MakePaymentUseCase makePaymentUseCase;
  final OpenMapUseCase openMapUseCase;

  PaymentUseCases({
    required this.makePaymentUseCase,
    required this.openMapUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
        );
}
