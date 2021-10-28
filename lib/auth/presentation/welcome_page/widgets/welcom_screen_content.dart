import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/auth/utils/auth_constants.dart';
import 'package:smart_parcel/common/theme.dart';

import '../content_tile_model.dart';

const content1 =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget non turpis congue dui at praesent fringilla. et non turpis congue dui at praesent fringilla.";

const pageContent = [
  ContentModel(title: "Safe to use", content: content1),
  ContentModel(title: "Totally Digital", content: content1),
  ContentModel(title: "Convenient", content: content1),
];

Widget buildContentAnimation({
  required PageController pageController,
  required BuildContext context,
}) {
  final animationController =
      useAnimationController(duration: AuthConstants.duration);
  final tween =
      useAnimation(Tween(begin: 1.0, end: 0.0).animate(animationController));
  final content = useState<ContentModel>(pageContent[0]);

  useEffect(() {
    pageController.addListener(() {
      if (pageController.page! % 1 == 0) {
        animationController.forward();
      }
    });
  });

  useEffect(() {
    animationController.addListener(() {
      if (animationController.isCompleted && pageController.page! % 1 == 0) {
        content.value = pageContent[pageController.page!.floor()];
        animationController.reverse();
      }
    });
  });

  return Opacity(
    opacity: tween,
    child: buildContent(context: context, contentModel: content.value),
  );
}

Widget buildContent({
  required BuildContext context,
  required ContentModel contentModel,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Column(
      children: [
        Text(
          contentModel.title,
          style: GlobalTheme.textTheme(context).headline6,
        ),
        Text(
          contentModel.content,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
