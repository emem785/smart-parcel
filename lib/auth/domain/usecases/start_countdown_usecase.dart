import 'dart:async';

import 'package:flutter/cupertino.dart';

class StartCountDownUseCase {
  FutureOr<void> call(ValueNotifier<int> count, int max) async {
    try {
      for (int i = max; i >= 0; i--) {
        await Future.delayed(const Duration(seconds: 1));
        count.value = i;
      }
    } on FlutterError {
      print("flutter error");
    }
  }
}
