import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/widgets/sign_up_form.dart';
import 'package:smart_parcel/common/utils/constants.dart';

class SignUpPage extends HookWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LayoutConstants.appBar(
        title: "Create an account",
        context: context,
      ),
      body: buildSignUpPage(context: context),
    );
  }
}

Widget buildSignUpPage({required BuildContext context}) {
  final usernameController = useTextEditingController();
  final firstnameController = useTextEditingController();
  final lastnameController = useTextEditingController();
  final phoneController = useTextEditingController();
  final emailController = useTextEditingController();
  final passwordController = useTextEditingController();
  final confirmPasswordController = useTextEditingController();

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
                usernameController: usernameController,
                firstnameController: firstnameController,
                lastnameController: lastnameController,
                phoneController: phoneController,
                emailController: emailController,
                passwordController: passwordController,
                confirmPasswordController: confirmPasswordController,
              ),
              LayoutConstants.sizeBox(context, 72),
              LayoutConstants.padButton(ElevatedButton(
                onPressed: () {},
                child: const Text("Next"),
              ))
            ],
          ),
        ),
      ],
    ),
  );
}
