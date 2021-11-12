import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/auth/application/bloc/sign_up_bloc/signup_bloc.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/widgets/sign_up_page_body.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/inject_conf.dart';

class SignUpPage extends HookWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: Scaffold(
        appBar: LayoutConstants.appBar(
          title: "Create an account",
          context: context,
        ),
        body: const SignUpPageBody(),
      ),
    );
  }
}
