import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/parcels/application/parcels_bloc/parcel_bloc.dart';
import 'package:smart_parcel/parcels/domain/models/cutomer_to_courier.dart';

class CourierParcelPage extends HookWidget {
  final DateFormat dateFormat = DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY);
  CourierParcelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final visibility = useState(0.0);
    final parcelBloc = context.read<ParcelBloc>();

    useEffect(() {
      parcelBloc.add(const ParcelEvent.getHistory());
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
                  historyRetreived: (v) => buildCourierList(
                      v.parcelResponse.data.customerToCourier,
                      visibility,
                      context),
                );
              },
              listener: (context, state) {
                state.maybeMap(
                  orElse: () => 1,
                  error: (v) => parcelBloc.parcelUseCases.showErrorUseCase(
                      message: v.failure.message, context: context),
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

  Widget buildCourierList(
    List<CustomerToCourier> courier,
    ValueNotifier<double> visibility,
    BuildContext ctx,
  ) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: visibility.value,
      child: courier.isNotEmpty
          ? ListView.builder(
              itemCount: courier.length,
              itemBuilder: (context, index) {
                final historyItem = courier[index];
                return buildCourierItem(historyItem, ctx);
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

  Widget buildCourierItem(
    CustomerToCourier historyItem,
    BuildContext context,
  ) {
    return ListTile(
      onTap: () => context.router
          .push(CourierParcelDetailsRoute(customerToCourier: historyItem)),
      title: Text(
        historyItem.locationAddress,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        historyItem.status,
        style: TextStyle(
          color: LayoutConstants.getStatusColor(historyItem.statusStrict),
        ),
      ),
      trailing: Text(getDate(historyItem.createdAt)),
    );
  }

  String getDate(String date) {
    return dateFormat.format(DateTime.parse(date));
  }
}
