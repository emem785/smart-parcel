import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/common/application/auth_bloc/auth_bloc.dart';
import 'package:smart_parcel/common/application/notification_bloc/notification_bloc.dart';
import 'package:smart_parcel/common/application/user_bloc/user_bloc.dart';
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
        BlocProvider(create: (context) => getIt<UserBloc>()),
      ],
      child: const SettingsBody(),
    );
  }
}

class SettingsBody extends StatelessWidget {
  static const logout = Key("logout_tile");
  static const delete = Key("delete_tile");
  static const faq = Key("faq_tile");
  static const payment = Key("payment_tile");
  static const password = Key("password_tile");
  static const support = Key("support_tile");
  const SettingsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final accountBloc = context.read<AccountBloc>();
    final userBloc = context.read<UserBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => 1,
            loggedOut: (v) {
              context
                  .read<NotificationBloc>()
                  .add(const NotificationEvent.clearNotification());

              context.router.pop();

              context.router.pushAndPopUntil(
                const WelcomeRoute(),
                predicate: (route) => false,
              );
            },
          );
        },
        child: Column(
          children: [
            buildSettingTile(
              key: payment,
              context: context,
              icon: "payment",
              title: "Payments",
              onTap: () => context.router.push(const StoredCardsRoute()),
            ),
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
            BlocListener<UserBloc, UserState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () => 1,
                  error: (failure) => userBloc.commonUseCases.showErrorUseCase(
                      context: context, message: failure.message),
                  accountDeactivated: () {
                    context.router.pop();

                    context.router.pushAndPopUntil(
                      const WelcomeRoute(),
                      predicate: (route) => false,
                    );
                  },
                );
              },
              child: buildSettingTile(
                  key: delete,
                  context: context,
                  icon: "delete",
                  title: "Delete Account",
                  onTap: () async {
                    final shouldDeactivate =
                        await userBloc.commonUseCases.showOptionUseCase(
                              context: context,
                              title: "Delete Account",
                              content:
                                  "This action will cause your account to be deactivated",
                              buttonText: "Yes",
                              alternativeButtonText: "No",
                            ) ??
                            false;

                    if (shouldDeactivate) {
                      userBloc.add(const UserEvent.deactivateAccount());
                    }
                  }),
            ),
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
            const Spacer(),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                final loading = state.maybeMap(
                  orElse: () => false,
                  loading: (v) => true,
                );
                return Visibility(
                  visible: loading,
                  child: const LinearProgressIndicator(
                    backgroundColor: Color(0xFFFAFAFA),
                  ),
                );
              },
            ),
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
