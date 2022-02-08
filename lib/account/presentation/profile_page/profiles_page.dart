import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/application/user_bloc/user_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';
import 'package:smart_parcel/inject_conf.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<UserBloc>(),
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: const Text(
                          "Edit",
                          style: TextStyle(
                            color: GlobalTheme.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        onTap: () => context.router.push(
                          ProfileEditRoute(
                              onExit: () => userBloc
                                  .add(const UserEvent.getUserFromStorage())),
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: () => context.router.push(EditPhotoRoute(
                            onUploaded: () => userBloc
                                .add(const UserEvent.getUserFromStorage()))),
                        child: BlocBuilder<UserBloc, UserState>(
                          builder: (context, state) {
                            return state.maybeMap(
                              orElse: () => const SizedBox(),
                              userRetreived: (v) => v
                                      .user.profilePicUrl!.isEmpty
                                  ? const CircleAvatar(
                                      child: Icon(
                                        Icons.person_add_alt,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: GlobalTheme.lightGrey,
                                      minRadius: 32,
                                    )
                                  : buildImageHolder(
                                      context, v.user.profilePicUrl!),
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
        ],
      ),
    );
  }

  Widget buildImageHolder(BuildContext context, String url) {
    return ClipOval(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: CachedNetworkImageProvider(url),
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
          enabled: false,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(labelText: "FirsName"),
          key: ProfileBody.firstName,
        ),
        LayoutConstants.sizeBox(context, 24),
        TextFormField(
          controller: lastnameController,
          enabled: false,
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
          enabled: false,
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
