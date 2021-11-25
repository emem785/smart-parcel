import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';
import 'package:smart_parcel/payment/domain/usecases/make_payment_usecase.dart';

class PaymentUseCases extends BaseUseCases {
  final MakePaymentUseCase makePaymentUseCase;

  PaymentUseCases({
    required this.makePaymentUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
        );
}
