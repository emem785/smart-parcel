import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/utils/constants.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LayoutConstants.appBarNoBack(
        title: "Home",
        context: context,
      ),
      body: buildHomePage(context: context),
    );
  }
}

Widget buildHomePage({required BuildContext context}) {
  return Column();
}
