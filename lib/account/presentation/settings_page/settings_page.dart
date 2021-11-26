import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/common/application/auth_bloc/auth_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/inject_conf.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<AccountBloc>()),
      ],
      child: const SettingsBody(),
    );
  }
}

class SettingsBody extends StatelessWidget {
  static const logout = Key("logout_tile");
  static const delete = Key("delete_tile");
  static const faq = Key("faq_tile");
  static const password = Key("password_tile");
  static const support = Key("support_tile");
  const SettingsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final accountBloc = context.read<AccountBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => 1,
            loggedOut: (v) => context.router.pushAndPopUntil(
              const WelcomeRoute(),
              predicate: (route) => false,
            ),
          );
        },
        child: Column(
          children: [
            buildSettingTile(
              key: faq,
              context: context,
              icon: "faqs",
              title: "FAQs",
              onTap: () {},
            ),
            buildSettingTile(
              key: support,
              context: context,
              icon: "support",
              title: "Support",
              onTap: () => accountBloc.add(AccountEvent.openSupport(context)),
            ),
            buildSettingTile(
              key: password,
              context: context,
              icon: "change_password",
              title: "Change Password",
              onTap: () => context.router.push(const ResetPasswordRoute()),
            ),
            buildSettingTile(
                key: delete,
                context: context,
                icon: "delete",
                title: "Delete Account",
                onTap: () {
                  authBloc.commonUseCases.showAlertUseCase(
                    buttonText: "Delete",
                    content:
                        "Are you sure you want to delete your account all your user data will be lost ?",
                    title: "Delete Account",
                    context: context,
                    onConfirm: () => authBloc.add(const AuthEvent.logout()),
                  );
                }),
            buildSettingTile(
                key: logout,
                context: context,
                icon: "logout",
                title: "Logout",
                onTap: () {
                  authBloc.commonUseCases.showAlertUseCase(
                    buttonText: "Logout",
                    content: "Are you sure ?",
                    title: "Logout",
                    context: context,
                    onConfirm: () => authBloc.add(const AuthEvent.logout()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

Widget buildSettingTile({
  required BuildContext context,
  required String title,
  required String icon,
  required Function onTap,
  required Key key,
}) {
  return Padding(
    key: key,
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: ListTile(
      onTap: () => onTap(),
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
