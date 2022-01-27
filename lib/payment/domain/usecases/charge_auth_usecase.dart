import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';
import 'package:smart_parcel/payment/domain/models/charge_response.dart';
import 'package:smart_parcel/payment/domain/repositories/payment_repository.dart';

const nairaConversionRate = 100;

class ChargeAuthUseCase {
  final PaymentRepository paymentRepository;

  ChargeAuthUseCase(this.paymentRepository);
  FutureOr<void> call(ChargeAuthCode event, Emitter<PaymentState> emit) async {
    emit(const PaymentLoading());

    final userOrFailure = paymentRepository.getUserFromStorage();

    return userOrFailure.fold(
      (l) => emit(PaymentState.error(l)),
      (r) => _chargeCode(r, event, emit),
    );
  }

  _chargeCode(
    User user,
    ChargeAuthCode event,
    Emitter<PaymentState> emit,
  ) async {
    final response = await paymentRepository.chargeAuthCode(
      authCode: event.authCode,
      amount: event.amount,
      email: user.email,
    );

    return response.fold(
      (l) => emit(PaymentState.error(l)),
      (r) => _confirmTransaction(r, event, emit),
    );
  }

  _confirmTransaction(
    ChargeResponse chargeResponse,
    ChargeAuthCode event,
    Emitter<PaymentState> emit,
  ) {
    if (chargeResponse.data.gatewayResponse.contains("Approved")) {
      emit(PaymentState.cardCharged(
        "Transaction Completed Successfully",
        chargeResponse.data.reference,
      ));
      return;
    }
    emit(PaymentState.error(Failure(chargeResponse.data.gatewayResponse)));
  }
}
