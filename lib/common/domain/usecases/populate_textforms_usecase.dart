import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

class PopulateTextFormUseCase {
  PopulateTextFormUseCase();
  FutureOr<void> call({
    required TextEditingController firstnameController,
    required TextEditingController lastnameController,
    required TextEditingController phoneController,
    required TextEditingController emailController,
    required User user,
  }) async {
    firstnameController.text = user.firstName;
    lastnameController.text = user.lastName;
    phoneController.text = user.phone.substring(4);
    emailController.text = user.email;
  }
}
