import 'package:flutter/cupertino.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:smart_parcel/payment/domain/models/paystack_response.dart';

abstract class PaymentInterface {
  Future<CheckoutResponse> makePayment({
    required BuildContext context,
    required PaystackResponse paystackResponse,
    required String email,
    required int amount,
  });
}
