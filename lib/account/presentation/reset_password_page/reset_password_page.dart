import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/inject_conf.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AccountBloc>(),
      child: const ResetPasswordBody(),
    );
  }
}

class ResetPasswordBody extends HookWidget {
  static const oldPassword = Key("reset_password_old_password");
  static const newPassword = Key("reset_password_new_password");
  static const confirmPassword = Key("reset_password_confirm_password");
  const ResetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oldPasswordController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final formKey = useState(GlobalKey<FormState>());
    final accountBloc = context.read<AccountBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Form(
            key: formKey.value,
            child: Column(
              children: [
                CommonWidgets.buildPasswordTextField(
                  controller: oldPasswordController,
                  key: oldPassword,
                  labelText: "Old Password",
                ),
                CommonWidgets.buildPasswordTextField(
                  controller: passwordController,
                  key: newPassword,
                  labelText: "New Password",
                ),
                CommonWidgets.buildPasswordTextField(
                  controller: confirmPasswordController,
                  key: confirmPassword,
                  labelText: "Confirm Password",
                ),
              ],
            ),
          ),
          LayoutConstants.sizeBox(context, 54),
          BlocConsumer<AccountBloc, AccountState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () => 1,
                error: (v) => accountBloc.accountUseCases.showErrorUseCase(
                    context: context, message: v.failure.message),
                passwordChanged: (v) =>
                    accountBloc.accountUseCases.showPromptUseCase(
                  context: context,
                  message: "Password changed successfully",
                ),
              );
            },
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => LayoutConstants.padButton(ElevatedButton(
                  onPressed: () {
                    if (formKey.value.currentState!.validate()) {
                      accountBloc.add(AccountEvent.resetPassword(
                        oldPassword: oldPasswordController.text,
                        newPassword: passwordController.text,
                        confirmPassword: confirmPasswordController.text,
                      ));
                    }
                  },
                  child: const Text("Save"),
                )),
                loading: (v) => CommonWidgets.loading(),
              );
            },
          )
        ],
      ),
    );
  }
}
