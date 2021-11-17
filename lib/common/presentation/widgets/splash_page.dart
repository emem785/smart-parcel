import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_parcel/common/application/auth_bloc/auth_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/inject_conf.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: const SplashPageBody(),
    );
  }
}

class SplashPageBody extends HookWidget {
  const SplashPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    useEffect(() {
      authBloc.add(const AuthEvent.authenticate());
    }, []);

    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => 1,
            error: (v) => context.router.pushAndPopUntil(
              const WelcomeRoute(),
              predicate: (route) => false,
            ),
            authenticated: (v) => context.router.pushAndPopUntil(
              const HomeRoute(),
              predicate: (route) => false,
            ),
          );
        },
        child: Center(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/logo.png")),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "SmartParcel",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF2B9B60)),
                ),
                Text(
                  "Secured Simplified Logistics",
                  style: GoogleFonts.quicksand(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
