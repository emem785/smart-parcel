import 'package:flutter/material.dart';
import 'package:smart_parcel/common/routing/router.gr.dart';
import 'package:smart_parcel/common/theme.dart';

import 'inject_conf.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      theme: GlobalTheme.getGlobalTheme(),
    );
  }
}
