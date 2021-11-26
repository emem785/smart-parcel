import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/payment/domain/models/payment_data.dart';
import 'package:smart_parcel/payment/domain/models/payment_response.dart';
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

const selfStoragePaymentJson = '''{
  "message": "success",
  "data": {
    "id": 4,
    "duration": "string",
    "pick_up": "3XWX30",
    "drop_off": "81L3FM",
    "address": "Lennox Mall, Admiralty Way",
    "status": "string",
    "is_active": true,
    "created_at": "2021-11-25T17:52:32.626618+01:00",
    "user": "05dd61f9-f989-4006-9a7d-f48296932a40",
    "location": 3
  }
}''';

const paymentResponse = PaymentResponse(
  message: "success",
  data: PaymentData(
      id: 4,
      duration: "string",
      pickUp: "3XWX30",
      dropOff: "81L3FM",
      status: "string",
      isActive: true,
      address: "Lennox Mall, Admiralty Way",
      createdAt: "2021-11-25T17:52:32.626618+01:00",
      user: "05dd61f9-f989-4006-9a7d-f48296932a40",
      location: 3),
);

const paymentResponseCustomer = PaymentResponse(
    message: "success",
    data: PaymentData(
        id: 1,
        duration: "",
        pickUp: "M3DOD4",
        dropOff: "59G3EU",
        status: "string",
        isActive: true,
        createdAt: "2021-11-25T18:28:33.056583+01:00",
        user: '05dd61f9-f989-4006-9a7d-f48296932a40',
        location: 2,
        address: "Lennox Mall, Admiralty Way"));
