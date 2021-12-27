import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/parcels/application/parcels_bloc/parcel_bloc.dart';
import 'package:smart_parcel/parcels/domain/models/self_storage.dart';

class SelfStorageParcelPage extends HookWidget {
  final DateFormat dateFormat = DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY);
  SelfStorageParcelPage({Key? key}) : super(key: key);

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
                  historyRetreived: (v) => buildHistoryList(
                      v.parcelResponse.data.selfStorages, visibility, context),
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

  Widget buildHistoryItem(SelfStorage historyItem, BuildContext context) {
    return ListTile(
      onTap: () =>
          context.router.push(SelfParcelDetailsRoute(selfStorage: historyItem)),
      title: Text(
        historyItem.address,
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

  Widget buildHistoryList(
    List<SelfStorage> selfStorages,
    ValueNotifier<double> visibility,
    BuildContext ctx,
  ) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: visibility.value,
      child: selfStorages.isNotEmpty
          ? ListView.builder(
              itemCount: selfStorages.length,
              itemBuilder: (context, index) {
                final historyItem = selfStorages[index];
                return buildHistoryItem(historyItem, ctx);
              },
            )
          : const Center(
              child: Text(
                "You currently have no  parcel's",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
    );
  }
}
