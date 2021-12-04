import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/domain/repositories/delivery_repository.dart';

class SearchUsecase {
  final DeliveryRepository deliveryRepository;

  SearchUsecase(this.deliveryRepository);

  FutureOr<void> call(Search event, Emitter<DeliveryState> emit) async {
    emit(const DeliveryLoading());

    final result = await deliveryRepository.searchPlaces(event.query);

    return result.fold(
      (l) => emit(DeliveryState.error(l)),
      (r) => emit(DeliveryState.placeRetrieved(r)),
    );
  }
}
