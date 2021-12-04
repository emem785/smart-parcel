import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/auth/application/bloc/sign_up_bloc/signup_bloc.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/widgets/sign_up_form.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/utils/constants.dart';

class SignUpPageBody extends HookWidget {
  static const signUpButtonKey = Key("sign_up_button");
  static const username = Key("sign_up_username");
  static const firstName = Key("sign_up_firstname");
  static const lastname = Key("sign_up_lastname");
  static const email = Key("sign_up_email");
  static const phone = Key("sign_up_phone");
  static const password = Key("sign_up_password");
  static const confirmPassword = Key("sign_up_confirmPassword");

  const SignUpPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstnameController = useTextEditingController();
    final lastnameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final formKey = useState(GlobalKey<FormState>());
    final signUpBloc = context.read<SignUpBloc>();

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LayoutConstants.sizeBox(context, 48),
                const Text("This helps us to personalise your experience."),
                LayoutConstants.sizeBox(context, 24),
                buildSignUpForm(
                  context: context,
                  firstnameController: firstnameController,
                  lastnameController: lastnameController,
                  phoneController: phoneController,
                  emailController: emailController,
                  passwordController: passwordController,
                  confirmPasswordController: confirmPasswordController,
                  formKey: formKey.value,
                ),
                LayoutConstants.sizeBox(context, 72),
                BlocConsumer<SignUpBloc, SignUpState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () => 0,
                      registered: (v) async {
                        await signUpBloc.authUseCases.showPromptUseCase(
                          context: context,
                          message: "An otp has been sent to your email",
                        );
                        await Future.delayed(const Duration(milliseconds: 500),
                            () {
                          context.router.push(ConfirmEmailRoute(
                            email: emailController.text,
                            password: passwordController.text,
                          ));
                        });
                      },
                      error: (v) => signUpBloc.authUseCases.showErrorUseCase(
                          message: v.failure.message, context: context),
                      userExistsError: (v) =>
                          signUpBloc.authUseCases.showErrorUseCase(
                        message: v.failure.message,
                        context: context,
                        buttonText: "Sign In",
                        onTap: () => context.router.pop(),
                      ),
                    );
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => LayoutConstants.padButton(ElevatedButton(
                        key: signUpButtonKey,
                        onPressed: () {
                          if (formKey.value.currentState!.validate()) {
                            final user = User(
                              id: null,
                              firstName: firstnameController.text,
                              lastName: lastnameController.text,
                              email: emailController.text,
                              phone: phoneController.text,
                            );
                            signUpBloc.add(SignUpEvent.signUp(
                              user: user,
                              password: passwordController.text,
                              confirmPassword: confirmPasswordController.text,
                            ));
                          }
                        },
                        child: const Text("Next"),
                      )),
                      loading: (v) => CommonWidgets.loading(),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
