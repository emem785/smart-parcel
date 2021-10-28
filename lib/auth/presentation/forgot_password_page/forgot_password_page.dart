import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';

class ForgotPasswordPage extends HookWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LayoutConstants.appBar(
        title: "Create an account",
        context: context,
      ),
      body: buildForgotPasswordPage(context: context),
    );
  }
}

Widget buildForgotPasswordPage({required BuildContext context}) {
  final emailController = useTextEditingController();

  return SingleChildScrollView(
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
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email Address",
                ),
              ),
              LayoutConstants.sizeBox(context, 72),
              LayoutConstants.padButton(ElevatedButton(
                onPressed: () => context.router.pushNamed("/forgotPassword"),
                child: const Text("Enter"),
              )),
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
  );
}
