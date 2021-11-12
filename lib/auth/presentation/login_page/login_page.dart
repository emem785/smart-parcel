import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/auth/presentation/login_page/widgets/login_page_body.dart';
import 'package:smart_parcel/common/utils/constants.dart';

import '../../../inject_conf.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: Scaffold(
        appBar: LayoutConstants.appBar(
          title: "Log in to your account",
          context: context,
        ),
        body: const LoginPageBody(),
      ),
    );
  }
}
