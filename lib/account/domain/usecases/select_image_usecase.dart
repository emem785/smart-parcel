import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';

class SelectImageUsecase {
  FutureOr<void> call(event, Emitter<AccountState> emit) async {
    emit(const AccountLoading());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      dialogTitle: "Choose a profile picture",
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      emit(AccountState.imageSelected(file));
    } else {
      emit(const AccountState.error(Failure("Failed to select image")));
    }
  }
}
