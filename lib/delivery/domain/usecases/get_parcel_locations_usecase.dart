import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/domain/repositories/delivery_repository.dart';

class GetParcelLocationUseCase {
  final DeliveryRepository deliveryRepository;

  GetParcelLocationUseCase(this.deliveryRepository);
  FutureOr<void> call(SelectLocation event, Emitter<DeliveryState> emit) async {
    event.context.router.push(
      SelectLocationDistrictRoute(onSelected: (location) {
        event.onRetreived(location);
      }),
    );
  }
}
