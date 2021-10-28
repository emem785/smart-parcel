import 'package:flutter/material.dart';

Widget buildSignUpForm({
  required BuildContext context,
  required TextEditingController usernameController,
  required TextEditingController firstnameController,
  required TextEditingController lastnameController,
  required TextEditingController phoneController,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required TextEditingController confirmPasswordController,
}) {
  return Column(
    children: [
      TextFormField(
        controller: usernameController,
        decoration: const InputDecoration(
          labelText: "Username",
        ),
      ),
      TextFormField(
        controller: firstnameController,
        decoration: const InputDecoration(
          labelText: "Firstname",
        ),
      ),
      TextFormField(
        controller: lastnameController,
        decoration: const InputDecoration(
          labelText: "Lastname",
        ),
      ),
      TextFormField(
        controller: phoneController,
        decoration: const InputDecoration(
          labelText: "Phone",
        ),
      ),
      TextFormField(
        controller: emailController,
        decoration: const InputDecoration(
          labelText: "Email Address",
        ),
      ),
      TextFormField(
        controller: passwordController,
        decoration: const InputDecoration(
          labelText: "Password",
        ),
      ),
      TextFormField(
        controller: confirmPasswordController,
        decoration: const InputDecoration(
          labelText: "Confirm Password",
        ),
      ),
    ],
  );
}
