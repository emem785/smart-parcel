import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/payment/domain/models/bank_card.dart';
import 'package:smart_parcel/payment/domain/models/paystack_response.dart';
import 'package:smart_parcel/payment/domain/repositories/payment_repository.dart';
import 'package:smart_parcel/payment/domain/usecases/payment_usecases.dart';

part 'payment_bloc.freezed.dart';
part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final PaymentRepository paymentRepository;
  final PaymentUseCases paymentUseCases;

  PaymentBloc(this.paymentUseCases, this.paymentRepository)
      : super(const PaymentInitial()) {
    on<MakePayment>(paymentUseCases.makePaymentUseCase);
    on<OpenMap>(paymentUseCases.openMapUseCase);
    on<GetCards>(_getCards);
    on<ChargeAuthCode>(paymentUseCases.chargeAuthUseCase);
  }

  FutureOr<void> _getCards(GetCards event, Emitter<PaymentState> emit) async {
    emit(const PaymentLoading());
    final response = await paymentRepository.getCards();
    return response.fold(
      (l) => emit(PaymentState.error(l)),
      (r) => emit(PaymentState.cardsRetreived(r.data.savedCards)),
    );
  }
}
