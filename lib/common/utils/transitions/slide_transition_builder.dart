import 'package:flutter/material.dart';

class SlideTransitionBuilder extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;
  const SlideTransitionBuilder({
    Key? key,
    required this.child,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final curveAnimation =
        CurvedAnimation(parent: animation, curve: Curves.easeOutCubic);
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(curveAnimation),
      child: child,
    );
  }
}
