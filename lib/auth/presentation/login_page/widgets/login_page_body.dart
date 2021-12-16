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

class LoginPageBody extends HookWidget {
  const LoginPageBody({Key? key}) : super(key: key);
  static const loginButtonKey = Key("login_button");
  static const emailKey = Key("email_text_Field");
  static const passwordKey = Key("password_text_Field");

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useState(GlobalKey<FormState>());
    final signInBloc = context.read<SignInBloc>();

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LayoutConstants.sizeBox(context, 48),
                const Text(
                    "Please enter the details below to log into your account."),
                LayoutConstants.sizeBox(context, 24),
                buildSignInForm(
                  context: context,
                  emailController: emailController,
                  passwordController: passwordController,
                  formKey: formKey.value,
                ),
                LayoutConstants.sizeBox(context, 8),
                GestureDetector(
                  onTap: () => context.router.pushNamed("/forgotPassword"),
                  child: const Text(
                    "Forgot your password?",
                    style: TextStyle(color: GlobalTheme.primary400),
                  ),
                ),
                LayoutConstants.sizeBox(context, 72),
                BlocConsumer<SignInBloc, SignInState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () => 1,
                      loggedIn: (v) => context.router.pushAndPopUntil(
                          const HomeRoute(),
                          predicate: (route) => false),
                      error: (v) => signInBloc.authUseCases.showErrorUseCase(
                          message: v.failure.message, context: context),
                      userNotActivated: (v) =>
                          signInBloc.authUseCases.showErrorUseCase(
                        message: v.failure.message,
                        context: context,
                        buttonText: "Complete Registration",
                        onTap: () => context.router.push(ConfirmEmailRoute(
                            email: emailController.text,
                            password: passwordController.text)),
                      ),
                    );
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => LayoutConstants.padButton(ElevatedButton(
                        onPressed: () {
                          if (formKey.value.currentState!.validate()) {
                            signInBloc.add(SignInEvent.login(
                              email: emailController.text,
                              password: passwordController.text,
                              context: context,
                            ));
                          }
                        },
                        child: const Text("Sign In"),
                      )),
                      loading: (v) => CommonWidgets.loading(),
                    );
                  },
                ),
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
    );
  }
}

Widget buildSignInForm({
  required BuildContext context,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required GlobalKey<FormState> formKey,
}) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        TextFormField(
          controller: emailController,
          validator: ValidatorUtil.emailValidator,
          decoration: const InputDecoration(labelText: "Email Address"),
          key: LoginPageBody.emailKey,
        ),
        CommonWidgets.buildPasswordTextField(
          controller: passwordController,
          labelText: "Password",
          key: LoginPageBody.passwordKey,
        )
      ],
    ),
  );
}
