import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/hooks/firebase_hook.dart';

import 'common/application/notification_bloc/notification_bloc.dart';
import 'common/presentation/routing/router.gr.dart';
import 'inject_conf.dart';
import 'object_box_conf.dart';

late ObjectBox objectbox;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp();
  await configureDependencies();
  objectbox = await ObjectBox.create();
  runApp(const MyAppWrapper());
}

class MyAppWrapper extends StatelessWidget {
  const MyAppWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NotificationBloc>(),
      child: MyApp(appRouter: AppRouter()),
    );
  }
}

class MyApp extends HookWidget {
  final AppRouter appRouter;
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseMessaging = useState<FirebaseMessaging?>(null);

    useEffect(() {
      firebaseMessaging.value = useFirebaseMessagingHook(context);
    });

    return Provider(
      create: (context) => firebaseMessaging.value,
      child: MaterialApp.router(
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(),
        debugShowCheckedModeBanner: false,
        theme: GlobalTheme.getGlobalTheme(),
      ),
    );
  }
}
