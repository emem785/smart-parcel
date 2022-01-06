import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_parcel/common/presentation/widgets/notification_icon.dart';
import 'package:smart_parcel/common/theme.dart';

enum Status { pending, assigned, dropped, completed }

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

  static final dateFormat = DateFormat("dd/MM/yyyy hh:mm aa");

  static const phoneRegex = r'^(0?)\d{10}$';
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
      actions: const [
        NotificationIcon(),
        SizedBox(width: 8),
      ],
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

  static Color getStatusColor(Status status) {
    switch (status) {
      case Status.pending:
        return const Color(0xFFF29E25);
      case Status.dropped:
        return const Color(0xFF27930C);
      case Status.assigned:
        return const Color(0xFF1120A8);
      case Status.completed:
        return const Color(0xFF27930C);
    }
  }
}
