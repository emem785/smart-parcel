import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/hooks/page_tween_hooks.dart';
import 'package:smart_parcel/common/theme.dart';

Widget buildDotContainer({
  required PageController pageController,
  required int index,
  bool isInitial = false,
}) {
  final controller = useAnimationController();
  final color = isInitial
      ? GlobalTheme.primaryColor
      : useAnimation(useTweenAnimationHook(
          controller: controller,
          index: index,
          pageController: pageController,
        ));

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 3.0),
    child: ClipOval(
      child: Container(
        height: 8,
        width: 8,
        color: color,
      ),
    ),
  );
}
