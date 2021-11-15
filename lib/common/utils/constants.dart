import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_parcel/common/theme.dart';

const canvsHeight = 926;
const canvasWidth = 428;

class Constants {
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double responsiveHeight(BuildContext context, double size) {
    return height(context) * (size / canvsHeight);
  }

  static double responsiveWidth(BuildContext context, double size) {
    return width(context) * (size / canvsHeight);
  }

  static final dateFormat = DateFormat("dd-MM-yyyy HH:mm");
}

class LayoutConstants {
  static AppBar appBar({required String title, required BuildContext context}) {
    return AppBar(
      title: Text(title),
      titleTextStyle: GlobalTheme.textTheme(context).headline6,
      centerTitle: false,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: const BackButton(color: GlobalTheme.primaryColor),
    );
  }

  static AppBar autoAppBar({
    required String title,
    required BuildContext context,
  }) {
    return AppBar(
      title: Text(title),
      titleTextStyle: GlobalTheme.textTheme(context).headline6,
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: const AutoBackButton(color: GlobalTheme.primaryColor),
    );
  }

  static AppBar appBarNoBack({
    required String title,
    required BuildContext context,
  }) {
    return AppBar(
      title: Text(title),
      titleTextStyle: GlobalTheme.textTheme(context).headline6,
      centerTitle: false,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    );
  }

  static Padding padButton(ElevatedButton elevatedButton) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: elevatedButton,
    );
  }

  static SizedBox sizeBox(BuildContext context, double size) {
    return SizedBox(
      height: Constants.height(context) * (size / canvsHeight),
    );
  }

  static SizedBox sizeBoxH(BuildContext context, double size) {
    return SizedBox(
      width: Constants.width(context) * (size / canvasWidth),
    );
  }
}
