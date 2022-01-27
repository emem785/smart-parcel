import 'package:smart_parcel/auth/domain/usecases/confirm_password_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/request_otp_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/sign_in_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/sign_up_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/start_countdown_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/submit_otp_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/submit_password_otp_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_options_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';

import 'forgot_password_usecase.dart';

class AuthUseCases extends BaseUseCases {
  final SignInUsecase signInUsecase;
  final SignUpUsecase signUpUsecase;
  final SubmitOtpUseCase submitOtpUseCase;
  final SubmitPasswordOtpUseCase submitPasswordOtpUseCase;
  final ConfirmPasswordUseCase confirmPasswordUseCase;
  final RequestOtpUseCase requestOtpUseCase;
  final StartCountDownUseCase startCountDownUseCase;
  final ForgotPasswordUseCase forgotPasswordUseCase;

  AuthUseCases({
    required this.signInUsecase,
    required this.signUpUsecase,
    required this.requestOtpUseCase,
    required this.submitOtpUseCase,
    required this.startCountDownUseCase,
    required this.confirmPasswordUseCase,
    required this.forgotPasswordUseCase,
    required this.submitPasswordOtpUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
          showAlertUseCase: ShowAlertUseCase(),
          showOptionUseCase: ShowOptionUseCase(),
        );
}
