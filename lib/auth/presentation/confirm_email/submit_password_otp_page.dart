import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';
import 'package:smart_parcel/inject_conf.dart';

class SubmitPasswordOtpPage extends StatelessWidget {
  final String email;
  const SubmitPasswordOtpPage({
    Key? key,
    required this.email,
  }) : super(key: key);

  static const enterButtonKey = Key("enter_button");
  static const otpKey = Key("otp_text_Field");
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: Scaffold(
        appBar: LayoutConstants.appBar(
          title: "Verify your Account",
          context: context,
        ),
        body: SubmitPasswordOtpBody(email: email),
      ),
    );
  }
}

class SubmitPasswordOtpBody extends HookWidget {
  final String email;
  const SubmitPasswordOtpBody({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final otpController = useTextEditingController();
    final formKey = useState(GlobalKey<FormState>());
    final signInBloc = context.read<SignInBloc>();
    final conuntDown = useState(0);
    final countDownText = useState("Resend Code");

    final resendCodeFunction = useState(() {
      signInBloc.add(SignInEvent.forgotPassword(email: email));
      signInBloc.authUseCases.startCountDownUseCase(conuntDown, 30);
    });

    useEffect(() {
      if (conuntDown.value > 0) {
        countDownText.value =
            "You can retry in ${conuntDown.value.toString()} seconds";
      } else {
        countDownText.value = "Resend Code";
      }
    }, [conuntDown.value]);

    useEffect(() {
      if (conuntDown.value > 0) {
        resendCodeFunction.value = () {};
      } else {
        resendCodeFunction.value = () {
          signInBloc.add(SignInEvent.forgotPassword(email: email));
          signInBloc.authUseCases.startCountDownUseCase(conuntDown, 30);
        };
      }
    }, [conuntDown.value]);

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LayoutConstants.sizeBox(context, 24),
                Text(
                  "Enter the 6-digit OTP we sent to $email",
                  style: const TextStyle(
                    fontSize: 11,
                  ),
                ),
                LayoutConstants.sizeBox(context, 24),
                buildConfirmEmailForForgotPasswordForm(
                  context: context,
                  controller: otpController,
                  formKey: formKey.value,
                ),
                LayoutConstants.sizeBox(context, 72),
                BlocConsumer<SignInBloc, SignInState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () => 0,
                      otpConfirmed: (v) => context.router
                          .push(ConfirmPasswordRoute(email: email)),
                      error: (v) => signInBloc.authUseCases.showErrorUseCase(
                          message: v.failure.message, context: context),
                    );
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => LayoutConstants.padButton(ElevatedButton(
                        key: SubmitPasswordOtpPage.enterButtonKey,
                        onPressed: () {
                          if (formKey.value.currentState!.validate()) {
                            signInBloc.add(SignInEvent.confirmOtp(
                              otp: otpController.text,
                              email: email,
                            ));
                          }
                        },
                        child: const Text("Enter"),
                      )),
                      loading: (v) => CommonWidgets.loading(),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Text(
                      countDownText.value,
                      style: const TextStyle(color: GlobalTheme.primary400),
                    ),
                    onTap: () => resendCodeFunction.value(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildConfirmEmailForForgotPasswordForm({
  required BuildContext context,
  required TextEditingController controller,
  required GlobalKey<FormState> formKey,
}) {
  return Form(
    key: formKey,
    child: TextFormField(
      keyboardType: TextInputType.number,
      controller: controller,
      maxLength: 6,
      validator: ValidatorUtil.otpValidator,
      decoration: const InputDecoration(labelText: "OTP"),
      key: SubmitPasswordOtpPage.otpKey,
    ),
  );
}
