import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/delivery/domain/repositories/delivery_repository.dart';

class ProceedToBookingUseCase {
  final DeliveryRepository deliveryRepository;

  ProceedToBookingUseCase(this.deliveryRepository);
  FutureOr<void> call(
    ProccedToBooking event,
    Emitter<DeliveryState> emit,
  ) async {
    switch (event.bookingInformation.booking) {
      case Booking.selfStorage:
        await _bookSelfStorage(event, emit);
        break;
      case Booking.customer:
        await _bookCustomerToCustomer(event, emit);
        break;
      default:
        await _bookCustomerToCourier(event, emit);
        break;
    }
  }

  Future<void> _bookSelfStorage(
    ProccedToBooking event,
    Emitter<DeliveryState> emit,
  ) async {
    final response =
        await deliveryRepository.bookSelfStorage(event.bookingInformation);

    return response.fold(
      (l) => emit(DeliveryState.error(l)),
      (r) => emit(DeliveryState.bookingFinished(r.data)),
    );
  }

  _bookCustomerToCustomer(
    ProccedToBooking event,
    Emitter<DeliveryState> emit,
  ) async {
    final response = await deliveryRepository
        .bookCustomerToCustomer(event.bookingInformation);

    return response.fold(
      (l) => emit(DeliveryState.error(l)),
      (r) => emit(DeliveryState.bookingFinished(r.data)),
    );
  }

  _bookCustomerToCourier(
    ProccedToBooking event,
    Emitter<DeliveryState> emit,
  ) async {
    final response = await deliveryRepository.bookCustomerToCourier(
      event.bookingInformation,
    );

    return response.fold(
      (l) => emit(DeliveryState.error(l)),
      (r) => emit(DeliveryState.bookingFinished(r.data)),
    );
  }
}
