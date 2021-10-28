import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/auth/presentation/welcome_page/widgets/dot_container.dart';
import 'package:smart_parcel/auth/presentation/welcome_page/widgets/welcom_screen_content.dart';
import 'package:smart_parcel/common/utils/constants.dart';

const images = [
  "assets/images/package.png",
  "assets/images/locker.png",
  "assets/images/delivery.png",
];

class WelcomePage extends HookWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildWelcomeScreen(context: context),
      ),
    );
  }
}

Widget buildWelcomeScreen({required BuildContext context}) {
  final height = MediaQuery.of(context).size.height;
  final pageController = usePageController(initialPage: 0);

  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: height * 0.569,
          child: PageView.builder(
            controller: pageController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        LayoutConstants.sizeBox(context, 68),
        buildContentAnimation(pageController: pageController, context: context),
        LayoutConstants.sizeBox(context, 48),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i <= 2; i++)
              buildDotContainer(
                pageController: pageController,
                index: i - 1,
                isInitial: i == 0,
              ),
          ],
        ),
        LayoutConstants.sizeBox(context, 50),
        LayoutConstants.padButton(ElevatedButton(
          onPressed: () => context.router.pushNamed("/login"),
          child: const Text("Get Started"),
        )),
      ],
    ),
  );
}
