import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/domain/repositories/delivery_repository.dart';

class GetLocationDistrictUseCase {
  final DeliveryRepository deliveryRepository;

  GetLocationDistrictUseCase(this.deliveryRepository);
  FutureOr<void> call(
    GetParcelCenters event,
    Emitter<DeliveryState> emit,
  ) async {
    emit(const DeliveryState.loading());
    final response = await deliveryRepository.getParcelCenters();
    return response.fold(
      (l) => emit(DeliveryState.error(l)),
      (r) => emit(DeliveryState.centersRetreived(r)),
    );
  }
}
