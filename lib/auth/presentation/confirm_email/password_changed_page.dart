import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';

class PasswordChangedPage extends StatelessWidget {
  const PasswordChangedPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PasswordChangedBody(),
    );
  }
}

class PasswordChangedBody extends StatelessWidget {
  const PasswordChangedBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            LayoutConstants.sizeBox(context, 200),
            SvgPicture.asset("assets/images/envelope.svg"),
            Text(
              "Password Recovery",
              style: GlobalTheme.textTheme(context).headline6,
            ),
            LayoutConstants.sizeBox(context, 24),
            const Text("You have successfully reset your password"),
            LayoutConstants.sizeBox(context, 54),
          ],
        ),
        LayoutConstants.padButton(ElevatedButton(
          onPressed: () => context.router.popUntil(
            (route) => route.settings.name == LoginRoute.name,
          ),
          child: const Text("OK"),
        )),
      ],
    );
  }
}
