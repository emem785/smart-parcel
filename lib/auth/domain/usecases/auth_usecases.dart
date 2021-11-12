import 'package:smart_parcel/auth/domain/usecases/request_otp_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/sign_in_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/sign_up_usecase.dart';
import 'package:smart_parcel/auth/domain/usecases/submit_otp_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/common/domain/usecases/show_error_usecase.dart';
import 'package:smart_parcel/common/domain/usecases/show_prompt_usecase.dart';

class AuthUseCases extends BaseUseCases {
  final SignInUsecase signInUsecase;
  final SignUpUsecase signUpUsecase;
  final SubmitOtpUseCase submitOtpUseCase;
  final RequestOtpUseCase requestOtpUseCase;

  AuthUseCases({
    required this.signInUsecase,
    required this.signUpUsecase,
    required this.requestOtpUseCase,
    required this.submitOtpUseCase,
  }) : super(
          showErrorUseCase: ShowErrorUseCase(),
          showPromptUseCase: ShowPromptUseCase(),
        );
}
