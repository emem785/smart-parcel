import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ValueNotifier<int> useTimerHook(int max) {
  return use(_TimerHook(max));
}

class _TimerHook extends Hook<ValueNotifier<int>> {
  final int max;
  const _TimerHook(this.max);

  @override
  __TimerHookState createState() => __TimerHookState();
}

class __TimerHookState extends HookState<ValueNotifier<int>, _TimerHook> {
  late Timer _timer;
  final ValueNotifier<int> _count = ValueNotifier<int>(0);

  @override
  void initHook() {
    super.initHook();
    _count.value = hook.max;
    _timer = Timer.periodic(Duration(seconds: hook.max), (timer) {
      if (_count.value > 0) {
        _count.value--;
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  ValueNotifier<int> build(BuildContext context) => _count;
}
