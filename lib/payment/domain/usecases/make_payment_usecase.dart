import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';
import 'package:smart_parcel/payment/domain/models/paystack_response.dart';
import 'package:smart_parcel/payment/domain/repositories/payment_repository.dart';

class MakePaymentUseCase {
  final PaymentRepository paymentRepository;

  MakePaymentUseCase(this.paymentRepository);
  FutureOr<void> call(MakePayment event, Emitter<PaymentState> emit) async {
    emit(const PaymentLoading());

    final response = paymentRepository.getUserFromStorage();

    return response.fold(
      (l) => emit(PaymentState.error(l)),
      (r) => _makePayment(r, event, emit),
    );
  }

  _makePayment(
    User user,
    MakePayment event,
    Emitter<PaymentState> emit,
  ) async {
    final response = await paymentRepository.initializePayment(
      email: user.email,
      amount: event.amount,
    );

    return response.fold(
      (l) => emit(PaymentState.error(l)),
      (r) => _checkout(r, user, event, emit),
    );
  }

  _checkout(
    PaystackResponse r,
    User user,
    MakePayment event,
    Emitter<PaymentState> emit,
  ) async {
    final response = await paymentRepository.makePayment(
      context: event.context,
      email: user.email,
      amount: event.amount * 100,
      paystackResponse: r,
    );

    if (response.status) {
      emit(const PaymentState.paymentSuccessful("Payment Successful"));
      return;
    }
    emit(PaymentState.error(Failure(response.message)));
  }
}
