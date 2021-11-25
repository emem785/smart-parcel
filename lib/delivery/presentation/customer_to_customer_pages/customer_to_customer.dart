import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';

import '../../../inject_conf.dart';
import 'widgets/customer_to_customer_body.dart';

class CustomerToCustomerPage extends StatelessWidget {
  const CustomerToCustomerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DeliveryBloc>(),
      child: const CustomerToCustomerBody(),
    );
  }
}
