import 'package:flutter/cupertino.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:flutter_paystack/src/models/checkout_response.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_parcel/payment/domain/interface/payment_interface.dart';
import 'package:smart_parcel/payment/domain/models/paystack_response.dart';

@Injectable(as: PaymentInterface)
class PaymentService implements PaymentInterface {
  final PaystackPlugin plugin;

  PaymentService(this.plugin);

  @override
  Future<CheckoutResponse> makePayment({
    required BuildContext context,
    required String email,
    required int amount,
    required PaystackResponse paystackResponse,
  }) async {
    final charge = Charge()
      ..amount = amount
      ..email = email
      ..accessCode = paystackResponse.data.accessCode
      ..reference = paystackResponse.data.reference
      ..currency = 'NGN';

    final response = await plugin.checkout(context, charge: charge);
    return response;
  }
}
