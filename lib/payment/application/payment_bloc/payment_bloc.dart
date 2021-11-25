import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/payment/domain/usecases/payment_usecases.dart';

part 'payment_bloc.freezed.dart';
part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final PaymentUseCases paymentUseCases;
  PaymentBloc(this.paymentUseCases) : super(const PaymentInitial()) {
    on<MakePayment>(paymentUseCases.makePaymentUseCase);
  }
}
