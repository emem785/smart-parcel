import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';
import 'package:smart_parcel/payment/domain/repositories/payment_repository.dart';

class OpenMapUseCase {
  final PaymentRepository paymentRepository;

  OpenMapUseCase(this.paymentRepository);
  FutureOr<void> call(OpenMap event, Emitter<PaymentState> emit) async {
    try {
      await paymentRepository.openMap(event.address);
    } catch (e) {
      emit(PaymentState.error(Failure(e.toString())));
    }
  }
}
