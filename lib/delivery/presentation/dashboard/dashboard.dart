import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/application/user_bloc/user_bloc.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/delivery/presentation/dashboard/widgets/quick_actions.dart';
import 'package:smart_parcel/delivery/presentation/dashboard/widgets/status_tiles.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/parcels/application/parcels_bloc/parcel_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<UserBloc>()),
        BlocProvider(create: (context) => getIt<ParcelBloc>()),
      ],
      child: const DashboardBody(),
    );
  }
}

class DashboardBody extends HookWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userBloc = context.read<UserBloc>();
    final parcelBloc = context.read<ParcelBloc>();

    useEffect(() {
      userBloc.add(GetUserStreamFromStorage(context));
    }, []);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: RefreshIndicator(
          onRefresh: () async {
            parcelBloc.add(const ParcelEvent.getHistory());
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LayoutConstants.sizeBox(context, 24),
                BlocListener<UserBloc, UserState>(
                  child: const StatusTiles(),
                  listener: (context, state) => state.maybeMap(
                    orElse: () => 1,
                    error: (v) => userBloc.commonUseCases.showErrorUseCase(
                        message: v.failure.message, context: context),
                  ),
                ),
                LayoutConstants.sizeBox(context, 24),
                LayoutConstants.sizeBox(context, 24),
                const Text(
                    "Schedule a delivery by selecting from the list below."),
                LayoutConstants.sizeBox(context, 24),
                LayoutConstants.sizeBox(context, 16),
                buildQuickActions(context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
