import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';
import 'package:smart_parcel/payment/domain/interface/payment_interface.dart';
import 'package:smart_parcel/payment/domain/models/paystack_response.dart';
import 'package:smart_parcel/payment/infrastructure/services/payment_http_service.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class PaymentRepository {
  final ChopperClient chopperClient;
  final PaymentInterface paymentInterface;
  final CommonStorageInterface commonStorageInterface;
  late PaymentHttpService _paymentHttpService;

  PaymentRepository(
    this.paymentInterface,
    this.chopperClient,
    this.commonStorageInterface,
  ) {
    _paymentHttpService = PaymentHttpService.create(chopperClient);
  }

  Future<CheckoutResponse> makePayment({
    required BuildContext context,
    required PaystackResponse paystackResponse,
    required String email,
    required int amount,
  }) {
    return paymentInterface.makePayment(
      context: context,
      email: email,
      amount: amount,
      paystackResponse: paystackResponse,
    );
  }

  SingleResponse<PaystackResponse> initializePayment({
    required String email,
    required int amount,
  }) {
    final body = {
      "email": email,
      "amount": amount,
    };
    return postDataPaystack(_paymentHttpService.initializePayment, body);
  }

  Either<Failure, User> getUserFromStorage() {
    try {
      final user = commonStorageInterface.getUser();
      return Right(user);
    } catch (_) {
      return const Left(Failure("No User in storage"));
    }
  }
}
