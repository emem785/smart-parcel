import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_parcel/common/theme.dart';

import 'common/presentation/routing/router.gr.dart';
import 'inject_conf.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFFFAFAFA),
    systemNavigationBarDividerColor: Color(0xFFFAFAFA),
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
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
