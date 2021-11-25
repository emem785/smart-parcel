import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/payment/domain/models/paystack_data.dart';
import 'package:smart_parcel/payment/domain/models/paystack_response.dart';

const paystackJson = '''{
    "status": true,
    "message": "Authorization URL created",
    "data": {
        "authorization_url": "https://checkout.paystack.com/8rubjnh3poe3syy",
        "access_code": "8rubjnh3poe3syy",
        "reference": "2uemi5ucjy"
    }
}''';

const paystackResponse = PaystackResponse(
  status: true,
  message: "Authorization URL created",
  data: PaystackData(
      authorizationUrl: "https://checkout.paystack.com/8rubjnh3poe3syy",
      accessCode: "8rubjnh3poe3syy",
      reference: "2uemi5ucjy"),
);

const paystackFailure = Failure("Payment Gateway error encountered");
