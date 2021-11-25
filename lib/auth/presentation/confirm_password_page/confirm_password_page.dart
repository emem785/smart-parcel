import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/inject_conf.dart';

class ConfirmPasswordPage extends StatelessWidget {
  final String email;
  const ConfirmPasswordPage({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: Scaffold(
        appBar: LayoutConstants.appBar(
          title: "Password Recovery",
          context: context,
        ),
        body: ConfirmPasswordBody(email: email),
      ),
    );
  }
}

class ConfirmPasswordBody extends HookWidget {
  final String email;
  static const password = Key("confirm_password_password");
  static const confirmPassword =
      Key("confirm_password_confirm_confirm_password");
  const ConfirmPasswordBody({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final formKey = useState(GlobalKey<FormState>());
    final signInBloc = context.read<SignInBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Form(
            key: formKey.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Enter the details below to reset your password"),
                LayoutConstants.sizeBox(context, 24),
                CommonWidgets.buildPasswordTextField(
                  controller: passwordController,
                  key: password,
                  labelText: "New Password",
                ),
                CommonWidgets.buildPasswordTextField(
                  controller: confirmPasswordController,
                  key: confirmPassword,
                  labelText: "Confirm Password",
                ),
              ],
            ),
          ),
          LayoutConstants.sizeBox(context, 54),
          BlocConsumer<SignInBloc, SignInState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () => 1,
                error: (v) => signInBloc.authUseCases.showErrorUseCase(
                    context: context, message: v.failure.message),
                passwordConfirmed: (v) =>
                    context.router.push(const PasswordChangedRoute()),
              );
            },
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => LayoutConstants.padButton(ElevatedButton(
                  onPressed: () {
                    if (formKey.value.currentState!.validate()) {
                      signInBloc.add(SignInEvent.confirmPassword(
                        email: email,
                        password: passwordController.text,
                        confirmPassword: confirmPasswordController.text,
                      ));
                    }
                  },
                  child: const Text("Ok"),
                )),
                loading: (v) => CommonWidgets.loading(),
              );
            },
          )
        ],
      ),
    );
  }
}
