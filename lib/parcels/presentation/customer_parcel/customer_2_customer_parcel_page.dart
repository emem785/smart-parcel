import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/parcels/application/parcels_bloc/parcel_bloc.dart';
import 'package:smart_parcel/parcels/domain/models/customer_to_customer.dart';

class CustomerParcelPage extends HookWidget {
  final DateFormat dateFormat = DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY);
  CustomerParcelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final visibility = useState(0.0);

    useEffect(() {
      context.read<ParcelBloc>().add(const ParcelEvent.getHistory());
    }, []);
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<ParcelBloc>(context)
            .add(const ParcelEvent.getHistory());
        visibility.value = 0.0;
      },
      child: Column(
        children: [
          BlocBuilder<ParcelBloc, ParcelState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => const SizedBox(),
                loading: (_) => const LinearProgressIndicator(
                  backgroundColor: Color(0xFFFAFAFA),
                ),
              );
            },
          ),
          Expanded(
            child: BlocConsumer<ParcelBloc, ParcelState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => const SizedBox(),
                  historyRetreived: (v) => buildCustomerList(
                      v.parcelResponse.data.customerToCustomer,
                      visibility,
                      context),
                );
              },
              listener: (context, state) {
                state.maybeMap(
                  orElse: () => 1,
                  historyRetreived: (v) async {
                    await Future.delayed(const Duration(milliseconds: 50));
                    visibility.value = 1;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCustomerList(
    List<CustomerToCustomer> c2c,
    ValueNotifier<double> visibility,
    BuildContext ctx,
  ) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: visibility.value,
      child: c2c.isNotEmpty
          ? ListView.builder(
              itemCount: c2c.length,
              itemBuilder: (context, index) {
                final historyItem = c2c[index];
                return buildCustomerItem(historyItem, ctx);
              },
            )
          : const Center(
              child: Text(
                "You currently have no parcel's",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
    );
  }

  Widget buildCustomerItem(
      CustomerToCustomer historyItem, BuildContext context) {
    return ListTile(
      onTap: () => context.router
          .push(CustomerParcelDetailsRoute(customerToCustomer: historyItem)),
      title: Text("Obanikoro"),
      subtitle: Text(
        historyItem.status,
        style: const TextStyle(color: Color(0xFFF29E25)),
      ),
      trailing: Text(getDate(historyItem.createdAt)),
    );
  }

  String getDate(String date) {
    return dateFormat.format(DateTime.parse(date));
  }
}
