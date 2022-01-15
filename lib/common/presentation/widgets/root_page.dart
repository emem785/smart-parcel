import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/application/notification_bloc/notification_bloc.dart';
import 'package:smart_parcel/common/utils/hooks/firebase_hook.dart';
import 'package:smart_parcel/inject_conf.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NotificationBloc>(),
      child: const RootPageBody(),
    );
  }
}

class RootPageBody extends HookWidget {
  const RootPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notificationBloc = context.read<NotificationBloc>();

    useEffect(() {
      notificationBloc.add(NotificationEvent.initializeFirebaseMessaging(
        useFirebaseMessagingHook(context),
      ));
    }, []);

    return const Scaffold(
      backgroundColor: Colors.white,
      body: AutoRouter(),
    );
  }
}
