import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/auth/utils/auth_constants.dart';
import 'package:smart_parcel/common/theme.dart';

import '../content_tile_model.dart';

const content1 =
    "Highly economical citywide and intercity logistics. Either personal or business, you will get the lowest prices for sending multiple items to different locations.";
const content2 =
    "Store an item for pick-up later or for someone else to pick-up, anonymize your pick-up and delivery by using SmartParcel locker as your default address.";
const content3 =
    "Schedule pick-ups, send parcels to diiferent recipients within the same city and receive parcel(s) at your convenience any time.";

const pageContent = [
  ContentModel(title: "Ultra low-priced logistics", content: content1),
  ContentModel(title: "Security", content: content2),
  ContentModel(title: "24/7 Accessible Logistics", content: content3),
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
