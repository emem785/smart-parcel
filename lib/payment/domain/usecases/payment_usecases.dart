import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_full_screen_alert.dart';
import 'package:smart_parcel/common/domain/usecases/show_options_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';
import 'package:smart_parcel/payment/domain/usecases/charge_auth_usecase.dart';
import 'package:smart_parcel/payment/domain/usecases/make_payment_usecase.dart';
import 'package:smart_parcel/payment/domain/usecases/open_map_usecase.dart';
import 'package:smart_parcel/payment/domain/usecases/pay_with_method_usecase.dart';

class PaymentUseCases extends BaseUseCases {
  final MakePaymentUseCase makePaymentUseCase;
  final OpenMapUseCase openMapUseCase;
  final ChargeAuthUseCase chargeAuthUseCase;
  final PayWithMethodUseCase payWithMethodUseCase;

  PaymentUseCases({
    required this.makePaymentUseCase,
    required this.openMapUseCase,
    required this.chargeAuthUseCase,
    required this.payWithMethodUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
          showOptionUseCase: ShowOptionUseCase(),
          showFullScreenDialogue: ShowFullScreenDialogue(),
        );
}
