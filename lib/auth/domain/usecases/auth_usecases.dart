import 'package:smart_parcel/auth/domain/usecases/request_otp_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/sign_in_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/sign_up_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/start_countdown_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/submit_otp_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';

import 'forgot_password_usecase.dart';

class AuthUseCases extends BaseUseCases {
  final SignInUsecase signInUsecase;
  final SignUpUsecase signUpUsecase;
  final SubmitOtpUseCase submitOtpUseCase;
  final RequestOtpUseCase requestOtpUseCase;
  final StartCountDownUseCase startCountDownUseCase;
  final ForgotPasswordUseCase forgotPasswordUseCase;

  AuthUseCases({
    required this.signInUsecase,
    required this.signUpUsecase,
    required this.requestOtpUseCase,
    required this.submitOtpUseCase,
    required this.startCountDownUseCase,
    required this.forgotPasswordUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
        );
}
