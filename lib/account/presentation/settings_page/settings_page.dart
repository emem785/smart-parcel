import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          buildSettingTile(
            context: context,
            icon: "faqs",
            title: "FAQs",
            onTap: () {},
          ),
          buildSettingTile(
            context: context,
            icon: "support",
            title: "Support",
            onTap: () {},
          ),
          buildSettingTile(
            context: context,
            icon: "change_password",
            title: "Change Password",
            onTap: () {},
          ),
          buildSettingTile(
            context: context,
            icon: "logout",
            title: "Logout",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

Widget buildSettingTile({
  required BuildContext context,
  required String title,
  required String icon,
  required Function onTap,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: ListTile(
      leading: SvgPicture.asset("assets/images/$icon.svg"),
      title: Text(
        title,
        style: const TextStyle(fontSize: 15),
      ),
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.black,
        size: 30,
      ),
    ),
  );
}
