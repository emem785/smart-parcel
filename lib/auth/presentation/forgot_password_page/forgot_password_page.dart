import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';
import 'package:smart_parcel/inject_conf.dart';

class ForgotPasswordPage extends HookWidget {
  static const email = Key("forgot_password_email");
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: Scaffold(
        appBar: LayoutConstants.appBar(
          title: "Recover Password",
          context: context,
        ),
        body: const ForgotPasswordBody(),
      ),
    );
  }
}

class ForgotPasswordBody extends HookWidget {
  const ForgotPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final formKey = useState(GlobalKey<FormState>());
    final signInBloc = context.read<SignInBloc>();

    return SingleChildScrollView(
      child: Form(
        key: formKey.value,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LayoutConstants.sizeBox(context, 48),
                  const Text(
                      "Put in the email you registered this account with. A recovery mail will be sent shortly."),
                  LayoutConstants.sizeBox(context, 24),
                  TextFormField(
                    key: ForgotPasswordPage.email,
                    controller: emailController,
                    validator: ValidatorUtil.emailValidator,
                    decoration: const InputDecoration(
                      labelText: "Email Address",
                    ),
                  ),
                  LayoutConstants.sizeBox(context, 72),
                  BlocConsumer<SignInBloc, SignInState>(
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () => 1,
                        error: (v) => signInBloc.authUseCases.showErrorUseCase(
                            message: v.failure.message, context: context),
                        requestSent: (v) async {
                          signInBloc.authUseCases.showPromptUseCase(
                            context: context,
                            message: "An otp has been sent to your email",
                          );
                          await Future.delayed(
                            const Duration(milliseconds: 200),
                            () => context.router.push(SubmitPasswordOtpRoute(
                                email: emailController.text)),
                          );
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => LayoutConstants.padButton(ElevatedButton(
                          onPressed: () {
                            if (formKey.value.currentState!.validate()) {
                              signInBloc.add(
                                SignInEvent.forgotPassword(
                                  email: emailController.text,
                                ),
                              );
                            }
                          },
                          child: const Text("Enter"),
                        )),
                        loading: (v) => CommonWidgets.loading(),
                      );
                    },
                  ),
                  LayoutConstants.sizeBox(context, 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an existing account?"),
                      LayoutConstants.sizeBoxH(context, 4),
                      GestureDetector(
                        child: const Text(
                          "Sign up",
                          style: TextStyle(color: GlobalTheme.primary400),
                        ),
                        onTap: () => context.router.pushNamed("/signUp"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
