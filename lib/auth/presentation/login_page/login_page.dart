import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';

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

  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Please enter the details below to log into your account."),
              buildSignInForm(
                context: context,
                emailController: emailController,
                passwordController: passwordController,
              ),
              const Text(
                "Forgot your password?",
                style: TextStyle(color: GlobalTheme.primary400),
              ),
              LayoutConstants.padButton(ElevatedButton(
                onPressed: () {},
                child: const Text("Sign In"),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an existing account?"),
                  LayoutConstants.sizeBoxH(context, 0.0093),
                  GestureDetector(
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: GlobalTheme.primary400),
                    ),
                    onTap: () {},
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
}) {
  return Column(
    children: [
      TextFormField(
        decoration: const InputDecoration(labelText: "Email"),
      ),
      TextFormField(
        decoration: const InputDecoration(
          labelText: "Password",
        ),
      )
    ],
  );
}
