import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/common/application/user_bloc/user_bloc.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';
import 'package:smart_parcel/inject_conf.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<UserBloc>()),
        BlocProvider(create: (_) => getIt<AccountBloc>()),
      ],
      child: const ProfileBody(),
    );
  }
}

class ProfileBody extends HookWidget {
  static const firstName = Key("profile_firstname");
  static const lastname = Key("profile_lastname");
  static const email = Key("profile_email");
  static const phone = Key("profile_phone");
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstnameController = useTextEditingController();
    final lastnameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final emailController = useTextEditingController();
    final formKey = useState(GlobalKey<FormState>());
    final userBloc = context.read<UserBloc>();
    final accountBloc = context.read<AccountBloc>();

    useEffect(() {
      userBloc.add(const UserEvent.getUserFromStorage());
    });

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Column(
                  children: [
                    LayoutConstants.sizeBox(context, 24),
                    InkWell(
                        onTap: () => context.router.push(EditPhotoRoute(
                            onUploaded: () => userBloc
                                .add(const UserEvent.getUserFromStorage()))),
                        child: BlocBuilder<UserBloc, UserState>(
                          builder: (context, state) {
                            return state.maybeMap(
                              orElse: () => const SizedBox(),
                              userRetreived: (v) => v
                                      .user.profilePicFilePath!.isEmpty
                                  ? const CircleAvatar(
                                      child: Icon(
                                        Icons.person_add_alt,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: GlobalTheme.lightGrey,
                                      minRadius: 32,
                                    )
                                  : buildImageHolder(
                                      context, v.user.profilePicFilePath!),
                            );
                          },
                        )),
                    LayoutConstants.sizeBox(context, 45),
                    BlocListener<UserBloc, UserState>(
                      listener: (context, state) {
                        state.maybeMap(
                          orElse: () => 1,
                          error: (v) => userBloc.commonUseCases
                              .showErrorUseCase(
                                  message: v.failure.message, context: context),
                          userRetreived: (v) =>
                              userBloc.commonUseCases.populateTextFormUseCase(
                            user: v.user,
                            emailController: emailController,
                            firstnameController: firstnameController,
                            lastnameController: lastnameController,
                            phoneController: phoneController,
                          ),
                        );
                      },
                      child: buildProfileForm(
                        context: context,
                        emailController: emailController,
                        firstnameController: firstnameController,
                        lastnameController: lastnameController,
                        phoneController: phoneController,
                        formKey: formKey.value,
                      ),
                    ),
                    LayoutConstants.sizeBox(context, 42),
                  ],
                ),
              ],
            ),
          ),
          BlocConsumer<AccountBloc, AccountState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () => 0,
                error: (v) => accountBloc.accountUseCases.showErrorUseCase(
                    message: v.failure.message, context: context),
                userModified: (v) => accountBloc.accountUseCases
                    .showPromptUseCase(
                        context: context, message: "User profile saved"),
              );
            },
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => LayoutConstants.padButton(ElevatedButton(
                  onPressed: () {
                    if (formKey.value.currentState!.validate()) {
                      accountBloc.add(AccountEvent.editUser(User(
                        id: null,
                        profilePicUrl: null,
                        firstName: firstnameController.text,
                        lastName: lastnameController.text,
                        email: emailController.text,
                        phone: phoneController.text,
                      )));
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

  Widget buildImageHolder(BuildContext context, String filePath) {
    return ClipOval(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: FileImage(File(filePath)),
          ),
        ),
      ),
    );
  }
}

Widget buildProfileForm({
  required BuildContext context,
  required TextEditingController firstnameController,
  required TextEditingController lastnameController,
  required TextEditingController phoneController,
  required TextEditingController emailController,
  required GlobalKey<FormState> formKey,
}) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        TextFormField(
          controller: firstnameController,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(labelText: "FirsName"),
          key: ProfileBody.firstName,
        ),
        LayoutConstants.sizeBox(context, 24),
        TextFormField(
          controller: lastnameController,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(labelText: "LastName"),
          key: ProfileBody.lastname,
        ),
        LayoutConstants.sizeBox(context, 24),
        TextFormField(
          controller: emailController,
          validator: ValidatorUtil.emailValidator,
          enabled: false,
          decoration: const InputDecoration(labelText: "Email Address"),
          key: ProfileBody.email,
        ),
        LayoutConstants.sizeBox(context, 24),
        TextFormField(
          controller: phoneController,
          validator: ValidatorUtil.phoneValidator,
          decoration: const InputDecoration(
            labelText: "Phone Number",
            prefixText: "+234 ",
          ),
          key: ProfileBody.phone,
        ),
      ],
    ),
  );
}
