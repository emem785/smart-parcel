import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_parcel/common/routing/router.gr.dart';

class ParcelsPage extends StatelessWidget {
  const ParcelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: AutoTabsScaffold(
        appBarBuilder: (_, tabsRouter) {
          return PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: const Color(0xFFFAFAFA),
              bottom: TabBar(
                tabs: const [
                  Tab(child: Text("Available")),
                  Tab(child: Text("My Deposits")),
                  Tab(child: Text("History")),
                ],
                onTap: tabsRouter.setActiveIndex,
              ),
            ),
          );
        },
        routes: const [
          AvailableRoute(),
          DepositRoute(),
          HistoryRoute(),
        ],
      ),
    );
  }
}
