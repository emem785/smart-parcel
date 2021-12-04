import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';

class AddressSearchDelegate extends SearchDelegate {
  final Bloc<DeliveryEvent, DeliveryState> deliveryBloc;

  AddressSearchDelegate(this.deliveryBloc);
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const SizedBox();
  }

  @override
  Widget buildResults(BuildContext context) {
    return Column();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      deliveryBloc.add(DeliveryEvent.search(query));
    }

    return Column(
      children: <Widget>[
        Expanded(
          child: BlocBuilder(
            bloc: deliveryBloc,
            builder: (context, DeliveryState state) {
              return state.maybeMap(
                orElse: () => const SizedBox(),
                error: (_) =>
                    const Center(child: Text("Encountered Search Error")),
                placeRetrieved: (v) => ListView.builder(
                  itemCount: v.locationResultResponse.results.length,
                  itemBuilder: (context, index) {
                    final location = v.locationResultResponse.results[index];
                    return ListTile(
                      leading: const Icon(
                        Icons.location_on,
                        color: GlobalTheme.primaryColor,
                      ),
                      title: Text(
                        location.formattedAddress,
                        style: const TextStyle(fontSize: 14),
                      ),
                      onTap: () => close(context, location.formattedAddress),
                    );
                  },
                ),
              );
            },
          ),
        ),
        BlocBuilder(
          bloc: deliveryBloc,
          builder: (context, DeliveryState state) {
            return state.maybeMap(
              orElse: () => const SizedBox(),
              loading: (_) => const LinearProgressIndicator(
                backgroundColor: Color(0xFFFAFAFA),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return super.appBarTheme(context).copyWith(
          appBarTheme: Theme.of(context).appBarTheme.copyWith(
                elevation: 0.3,
                centerTitle: false,
                titleSpacing: 0,
                backgroundColor: const Color(0xFFFAFAFA),
              ),
        );
  }
}
