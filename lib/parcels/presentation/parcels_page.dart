import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/parcels/application/parcels_bloc/parcel_bloc.dart';
import 'package:smart_parcel/parcels/presentation/customer_parcel/customer_2_customer_parcel_page.dart';
import 'package:smart_parcel/parcels/presentation/self_storage_parcel/self_storage_parcel.dart';

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
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: const Color(0xFFFAFAFA),
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("Self Storage")),
                Tab(child: Text("Customer-Customer")),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          SelfStorageParcelPage(),
          CustomerParcelPage(),
        ]),
      ),
    );
  }
}
