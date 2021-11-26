import 'package:flutter/material.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/widgets/sign_up_page_body.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';

Widget buildSignUpForm({
  required BuildContext context,
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
          controller: firstnameController,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(
            labelText: "Firstname",
          ),
          key: SignUpPageBody.firstName,
        ),
        TextFormField(
          controller: lastnameController,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(
            labelText: "Lastname",
          ),
          key: SignUpPageBody.lastname,
        ),
        TextFormField(
          controller: phoneController,
          keyboardType: TextInputType.number,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(
            labelText: "Phone",
            prefixText: "+234 ",
          ),
          key: SignUpPageBody.phone,
        ),
        TextFormField(
          controller: emailController,
          validator: ValidatorUtil.emailValidator,
          decoration: const InputDecoration(
            labelText: "Email Address",
          ),
          key: SignUpPageBody.email,
        ),
        CommonWidgets.buildPasswordTextField(
          controller: passwordController,
          labelText: "Password",
          key: SignUpPageBody.password,
        ),
        CommonWidgets.buildPasswordTextField(
          controller: confirmPasswordController,
          labelText: "Confirm Password",
          key: SignUpPageBody.confirmPassword,
        ),
      ],
    ),
  );
}
