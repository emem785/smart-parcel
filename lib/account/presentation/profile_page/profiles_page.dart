import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              child: const Text(
                "Edit",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: GlobalTheme.primaryColor,
                ),
              ),
            ),
          ),
          LayoutConstants.sizeBox(context, 24),
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
              child: Icon(
                Icons.person_add_alt,
                color: Colors.white,
              ),
              backgroundColor: GlobalTheme.lightGrey,
              minRadius: 32,
            ),
          ),
          const Text(
            "Change Profile Picture",
            style: TextStyle(color: GlobalTheme.primaryColor),
          ),
          LayoutConstants.sizeBox(context, 45),
          buildProfileForm(context: context),
        ],
      ),
    );
  }
}

Widget buildProfileForm({required BuildContext context}) {
  return Column(
    children: [
      TextFormField(
        decoration: InputDecoration(labelText: "FirsName"),
      ),
      LayoutConstants.sizeBox(context, 24),
      TextFormField(
        decoration: InputDecoration(labelText: "LastName"),
      ),
      LayoutConstants.sizeBox(context, 24),
      TextFormField(
        decoration: InputDecoration(labelText: "Email Address"),
      ),
      LayoutConstants.sizeBox(context, 24),
      TextFormField(
        decoration: InputDecoration(labelText: "Phone Number"),
      ),
    ],
  );
}
