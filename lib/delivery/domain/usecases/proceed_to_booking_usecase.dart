import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/domain/repositories/delivery_repository.dart';

class ProceedToBookingUseCase {
  final DeliveryRepository deliveryRepository;

  ProceedToBookingUseCase(this.deliveryRepository);
  FutureOr<void> call(
    ProccedToBooking event,
    Emitter<DeliveryState> emit,
  ) async {
    emit(const DeliveryState.loading());
    if (event.routeInfo is SelfStoragePaymentRoute) {
      await _bookSelfStorage(event, emit);
    } else if (event.routeInfo is CustomerToCustomerPaymentRoute) {
      await _bookCustomerToCustomer(event, emit);
    } else if (event.routeInfo is CustomerToCourierPaymentRoute) {
      await _bookCustomerToCourier(event, emit);
    }
  }

  Future<void> _bookSelfStorage(
    ProccedToBooking event,
    Emitter<DeliveryState> emit,
  ) async {
    final userId = _getUserId();
    final response = await deliveryRepository.bookSelfStorage(
      duration: event.duration ?? "0",
      userId: userId,
      location: event.locationId,
      reference: event.reference,
      saveCard: event.saveCard,
    );

    return response.fold(
      (l) => emit(DeliveryState.error(l)),
      (r) => emit(DeliveryState.bookingFinished(r.data)),
    );
  }

  String _getUserId() {
    final response = deliveryRepository.getUserFromStorage();

    return response.fold(
      (l) => "",
      (r) => r.id!,
    );
  }

  _bookCustomerToCustomer(
    ProccedToBooking event,
    Emitter<DeliveryState> emit,
  ) async {
    final response = await deliveryRepository.bookCustomerToCustomer(
      location: event.locationId,
      refrence: event.reference,
      saveCard: event.saveCard,
    );

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
      customerForm: event.customerForm!,
      city: event.customerForm!.city!,
      location: event.locationId,
      reference: event.reference,
      saveCard: event.saveCard,
    );

    return response.fold(
      (l) => emit(DeliveryState.error(l)),
      (r) => emit(DeliveryState.bookingFinished(r.data)),
    );
  }
}
