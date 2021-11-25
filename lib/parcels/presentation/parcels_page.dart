import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/parcels/application/parcels_bloc/parcel_bloc.dart';

import '../../inject_conf.dart';

class ParcelsPage extends StatelessWidget {
  const ParcelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ParcelBloc>(),
      child: const ParcelsBody(),
    );
  }
}

class ParcelsBody extends StatelessWidget {
  const ParcelsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AutoTabsScaffold(
        appBarBuilder: (_, tabsRouter) {
          return PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: const Color(0xFFFAFAFA),
              bottom: TabBar(
                tabs: const [
                  Tab(child: Text("Self Storage")),
                  Tab(child: Text("Customer-Customer")),
                ],
                onTap: tabsRouter.setActiveIndex,
              ),
            ),
          );
        },
        routes: [
          SelfStorageParcelRoute(),
          CustomerParcelRoute(),
        ],
      ),
    );
  }
}
