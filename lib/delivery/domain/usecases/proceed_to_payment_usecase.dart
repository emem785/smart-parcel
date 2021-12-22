import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/domain/repositories/delivery_repository.dart';

class ProceedToPaymentUseCase {
  final DeliveryRepository deliveryRepository;

  ProceedToPaymentUseCase(this.deliveryRepository);
  FutureOr<void> call(
    ProccedToPayment event,
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
    ProccedToPayment event,
    Emitter<DeliveryState> emit,
  ) async {
    final userId = _getUserId();
    final response = await deliveryRepository.bookSelfStorage(
      duration: event.duration ?? "",
      userId: userId,
      location: event.locationId,
      paystackResponse: event.paystackResponse,
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
    ProccedToPayment event,
    Emitter<DeliveryState> emit,
  ) async {
    final response = await deliveryRepository.bookCustomerToCustomer(
      email: event.customerForm!.email,
      name: event.customerForm!.name,
      phone: event.customerForm!.phone,
      address: event.customerForm!.address!,
      location: event.locationId,
      paystackResponse: event.paystackResponse,
    );

    return response.fold(
      (l) => emit(DeliveryState.error(l)),
      (r) => emit(DeliveryState.bookingFinished(r.data)),
    );
  }

  _bookCustomerToCourier(
    ProccedToPayment event,
    Emitter<DeliveryState> emit,
  ) async {
    final response = await deliveryRepository.bookCustomerToCourier(
      email: event.customerForm!.email,
      name: event.customerForm!.name,
      phone: event.customerForm!.phone,
      address: event.customerForm!.address!,
      city: event.customerForm!.city!,
      location: event.locationId,
      paystackResponse: event.paystackResponse,
    );

    return response.fold(
      (l) => emit(DeliveryState.error(l)),
      (r) => emit(DeliveryState.bookingFinished(r.data)),
    );
  }
}
