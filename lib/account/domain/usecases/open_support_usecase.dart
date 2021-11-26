import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';

const String email = "hello@smartparcel.ng";

class OpenSupportUseCase {
  OpenSupportUseCase();
  FutureOr<void> call(OpenSupport event, Emitter<AccountState> emit) async {
    emit(const AccountState.loading());

    final emailContent = EmailContent(
      to: [email],
      subject: "Support",
      body: "Dear customer service,",
    );

    final result =
        await OpenMailApp.composeNewEmailInMailApp(emailContent: emailContent);

    if (!result.didOpen && !result.canOpen) {
      emit(const AccountState.error(Failure("Error trying to open email")));
    } else if (!result.didOpen && result.canOpen) {
      showDialog(
        context: event.context,
        builder: (_) {
          return MailAppPickerDialog(
            mailApps: result.options,
          );
        },
      );
    }
  }
}
