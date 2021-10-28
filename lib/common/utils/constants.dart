import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_parcel/common/theme.dart';

class Constants {
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

class LayoutConstants {
  static AppBar appBar({required String title, required BuildContext context}) {
    return AppBar(
      title: Text(title),
      titleTextStyle: GlobalTheme.textTheme(context).headline6,
      centerTitle: false,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: GlobalTheme.primaryColor,
        ),
        onPressed: () => context.router.pop(),
      ),
    );
  }

  static Padding padButton(ElevatedButton elevatedButton) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: elevatedButton,
    );
  }

  static SizedBox sizeBox(BuildContext context, double percent) {
    return SizedBox(height: Constants.height(context) * percent);
  }

  static SizedBox sizeBoxH(BuildContext context, double percent) {
    return SizedBox(width: Constants.width(context) * percent);
  }
}
