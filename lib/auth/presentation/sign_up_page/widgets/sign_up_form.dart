import 'package:flutter/material.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';

Widget buildSignUpForm({
  required BuildContext context,
  required TextEditingController usernameController,
  required TextEditingController firstnameController,
  required TextEditingController lastnameController,
  required TextEditingController phoneController,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required TextEditingController confirmPasswordController,
  required GlobalKey<FormState> formKey,
}) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        TextFormField(
          validator: ValidatorUtil.normalValidator,
          controller: usernameController,
          decoration: const InputDecoration(
            labelText: "Username",
          ),
        ),
        TextFormField(
          controller: firstnameController,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(
            labelText: "Firstname",
          ),
        ),
        TextFormField(
          controller: lastnameController,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(
            labelText: "Lastname",
          ),
        ),
        TextFormField(
          controller: phoneController,
          keyboardType: TextInputType.number,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(
            labelText: "Phone",
          ),
        ),
        TextFormField(
          controller: emailController,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(
            labelText: "Email Address",
          ),
        ),
        CommonWidgets.buildPasswordTextField(
          controller: passwordController,
          labelText: "Password",
        ),
        CommonWidgets.buildPasswordTextField(
          controller: confirmPasswordController,
          labelText: "Confirm Password",
        ),
      ],
    ),
  );
}
