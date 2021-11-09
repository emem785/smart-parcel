import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';

const loginButtonKey = Key("login_button");
const emailKey = Key("email_text_Field");
const passwordKey = Key("password_text_Field");

class LoginPage extends HookWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LayoutConstants.appBar(
        title: "Log in to your account",
        context: context,
      ),
      body: buildLoginPage(context: context),
    );
  }
}

Widget buildLoginPage({required BuildContext context}) {
  final emailController = useTextEditingController();
  final passwordController = useTextEditingController();
  final formKey = useState(GlobalKey<FormState>());

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
              LayoutConstants.padButton(ElevatedButton(
                key: loginButtonKey,
                onPressed: () {
                  if (formKey.value.currentState!.validate()) {
                    print("d");
                  }
                },
                child: const Text("Sign In"),
              )),
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
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(labelText: "Email Address"),
          key: emailKey,
        ),
        CommonWidgets.buildPasswordTextField(
          controller: passwordController,
          labelText: "Password",
        )
      ],
    ),
  );
}
