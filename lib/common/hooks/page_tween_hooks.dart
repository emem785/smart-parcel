import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/theme.dart';

Animation<Color?> useTweenAnimationHook({
  required controller,
  required index,
  required pageController,
}) {
  return use(_PageTweenHook(
      controller: controller, index: index, pageController: pageController));
}

class _PageTweenHook extends Hook<Animation<Color?>> {
  final PageController pageController;
  final AnimationController controller;
  final int index;

  const _PageTweenHook({
    required this.controller,
    required this.index,
    required this.pageController,
  });

  @override
  __PageTweenHookState createState() => __PageTweenHookState();
}

class __PageTweenHookState
    extends HookState<Animation<Color?>, _PageTweenHook> {
  late Animation<Color?> _color;

  @override
  void initHook() {
    super.initHook();

    hook.pageController.addListener(() {
      hook.controller.animateTo(
        hook.pageController.page! - hook.index,
        curve: Curves.linear,
        duration: const Duration(milliseconds: 300),
      );
    });

    _color = ColorTween(begin: Colors.black12, end: GlobalTheme.primaryColor)
        .animate(hook.controller);
  }

  @override
  Animation<Color?> build(BuildContext context) => _color;
}
