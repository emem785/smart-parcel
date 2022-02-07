import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';
import 'package:smart_parcel/payment/domain/models/bank_card.dart';
import 'package:smart_parcel/payment/domain/repositories/payment_repository.dart';

const nairaConversionRate = 100;

class PayWithMethodUseCase {
  final PaymentRepository paymentRepository;

  PayWithMethodUseCase(this.paymentRepository);

  Future<void> call({
    required PaymentBloc paymentBloc,
    required BuildContext context,
    required BankCard bankCard,
  }) async {
    final amount = context.read<DeliveryViewModel>().boxSize?.price ?? 0;
    if (bankCard.isEmpty()) {
      _makePaystackPayment(
        amount: amount,
        context: context,
        paymentBloc: paymentBloc,
      );
      return;
    }
    _makeAuthCodePayment(
      amount: amount,
      bankCard: bankCard,
      context: context,
      paymentBloc: paymentBloc,
    );
  }

  Future<void> _makeAuthCodePayment({
    required PaymentBloc paymentBloc,
    required BuildContext context,
    required BankCard bankCard,
    required int amount,
  }) async {
    final makePayment = await paymentBloc.paymentUseCases.showOptionUseCase(
          context: context,
          title: "Confirm Payment",
          content:
              "Are you sure you want to pay with the card ending with ${bankCard.last4}?",
          buttonText: "Yes",
          alternativeButtonText: "No",
        ) ??
        false;

    if (makePayment) {
      paymentBloc.add(PaymentEvent.chargeAuthCode(
        authCode: bankCard.authorizationCode,
        amount: (amount * nairaConversionRate).toInt(),
      ));
    }
  }

  void _makePaystackPayment({
    required PaymentBloc paymentBloc,
    required BuildContext context,
    required int amount,
  }) {
    paymentBloc.add(PaymentEvent.makePayment(context: context, amount: amount));
  }
}
