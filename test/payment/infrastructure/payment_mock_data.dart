import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/parcels/domain/models/payment_history.dart';
import 'package:smart_parcel/payment/domain/models/bank_card.dart';
import 'package:smart_parcel/payment/domain/models/card_data.dart';
import 'package:smart_parcel/payment/domain/models/cards_response.dart';
import 'package:smart_parcel/payment/domain/models/charge_data.dart';
import 'package:smart_parcel/payment/domain/models/charge_response.dart';
import 'package:smart_parcel/payment/domain/models/location.dart';
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

const selfStorageJson2 = '''{
  "message": "success",
  "data": {
    "id": 5,
    "name": "person",
    "phone": "080373737737",
    "email": "emma@emma.com",
    "duration": null,
    "address": "No.1 nndfkjdf",
    "city": null,
    "pick_up": "ZNDI",
    "drop_off": "BBTS",
    "dropoff_used": false,
    "pickup_used": false,
    "parcel_type": "customer_to_customer",
    "status": "pending",
    "is_active": true,
    "created_at": "2021-12-16T18:29:38.774387+01:00",
    "user": {
      "id": "4ecc81a7-f892-4260-8626-1c20f10678ed",
      "last_login": "2021-12-16T18:13:17.149481+01:00",
      "first_name": "emme",
      "last_name": "emem",
      "email": "iemmanuel785@gmail.com",
      "phone": "0803333333",
      "profile_pics": null,
      "profile_pics_url": null,
      "address": null,
      "is_active": true,
      "is_staff": false,
      "is_admin": false,
      "role": "user",
      "is_superuser": false,
      "date_joined": "2021-12-15T18:27:01.611108+01:00",
      "auth_provider": "email",
      "groups": [],
      "user_permissions": []
    },
    "location": {
      "id": 1,
      "location": "Lekki",
      "center_name": "The Palms Shopping Mall",
      "address": "10, Fola Osibo Road, Lekki, Lagos, Nigeria",
      "no_of_compartment": 5,
      "available_space": 5,
      "is_active": true,
      "created_at": "2021-12-15T18:23:24.484591+01:00",
      "user": null
    }
  }
}
''';

const paymentResponse = PaymentResponse(
    message: 'success',
    data: PaymentData(
        name: '',
        phone: '',
        email: '',
        duration: '5',
        address: '',
        city: '',
        pickUp: '8PT3',
        dropOff: '2FPI',
        parcelType: 'self_storage',
        user: User(
            id: '4ecc81a7-f892-4260-8626-1c20f10678ed',
            firstName: 'emme',
            lastName: 'emem',
            email: 'iemmanuel785@gmail.com',
            profilePicUrl: '',
            phone: '0803333333'),
        location: Location(
            id: 3,
            location: 'Yaba',
            centerName: 'Spar, Tejuoso Market, Yaba',
            address: '1-3, Ijaoye Street, Yaba, Nigeria',
            noOfCompartment: 2,
            availableSpace: 2,
            isActive: true,
            createdAt: '2021-12-15T18:23:24.484648+01:00')));

// const paymentResponse = PaymentResponse(
//   message: "success",
//   data: PaymentData(
//       id: 4,
//       duration: "string",
//       pickUp: "3XWX30",
//       dropOff: "81L3FM",
//       status: "string",
//       isActive: true,
//       address: "Lennox Mall, Admiralty Way",
//       createdAt: "2021-11-25T17:52:32.626618+01:00",
//       user: "05dd61f9-f989-4006-9a7d-f48296932a40",
//       location: 3),
// );

// const paymentResponseCustomer = PaymentResponse(
//     message: "success",
//     data: PaymentData(
//         id: 1,
//         duration: "",
//         pickUp: "M3DOD4",
//         dropOff: "59G3EU",
//         status: "string",
//         isActive: true,
//         createdAt: "2021-11-25T18:28:33.056583+01:00",
//         user: '05dd61f9-f989-4006-9a7d-f48296932a40',
//         location: 2,
//         address: "Lennox Mall, Admiralty Way"));

const paymentResponeCustomer = PaymentResponse(
    message: 'success',
    data: PaymentData(
        name: 'person',
        phone: '080373737737',
        email: 'emma@emma.com',
        duration: '',
        address: 'No.1 nndfkjdf',
        city: '',
        pickUp: 'ZNDI',
        dropOff: 'BBTS',
        parcelType: 'customer_to_customer',
        user: User(
            id: '4ecc81a7-f892-4260-8626-1c20f10678ed',
            firstName: 'emme',
            lastName: 'emem',
            email: 'iemmanuel785@gmail.com',
            profilePicUrl: '',
            phone: '0803333333'),
        location: Location(
            id: 1,
            location: 'Lekki',
            centerName: 'The Palms Shopping Mall',
            address: '10, Fola Osibo Road, Lekki, Lagos, Nigeria',
            noOfCompartment: 5,
            availableSpace: 5,
            isActive: true,
            createdAt: '2021-12-15T18:23:24.484591+01:00')));

const paymentResponeCourier = PaymentResponse(
    message: 'success',
    data: PaymentData(
        name: 'person',
        phone: '080373737737',
        email: 'emma@emma.com',
        duration: '',
        address: 'No.1 nndfkjdf',
        city: 'lagos',
        pickUp: '8VT1',
        dropOff: '7S54',
        parcelType: 'customer_to_courier',
        user: User(
            id: '4ecc81a7-f892-4260-8626-1c20f10678ed',
            firstName: 'emme',
            lastName: 'emem',
            email: 'iemmanuel785@gmail.com',
            profilePicUrl: '',
            phone: '0803333333'),
        location: Location(
            id: 1,
            location: 'Lekki',
            centerName: 'The Palms Shopping Mall',
            address: '10, Fola Osibo Road, Lekki, Lagos, Nigeria',
            noOfCompartment: 5,
            availableSpace: 5,
            isActive: true,
            createdAt: '2021-12-15T18:23:24.484591+01:00')));

const getCardsJson = '''{
    "status": true,
    "message": "Successful",
    "data": {
        "id": "f98874f7-8662-4376-a83c-238c9e5c7586",
        "first_name": "emmanuel",
        "last_name": "isong",
        "email": "iemmanuel785@gmail.com",
        "phone": "+2348011111111",
        "role": "user",
        "address": null,
        "profile_pics": null,
        "logistic_partner": null,
        "profile_pics_url": null,
        "firebase_key": "cj0JIj3WTp27tTMHb3N_U4:APA91bFqZO1M1oiwajCHFZ2It6jrGujZgyjpYmp23p9fri69XSgqI2Tl3Gm2dw2qo-MiLBCUnmIKyiCQkkE1BKlgcMtmgB4uZWJo_gFjjo70Jbpq-DW_qqcmJk29fbk9kmlDQ-JEYR0-",
        "date_joined": "2022-01-21T16:10:41.290558+01:00",
        "self_storages": [
            {
                "id": 40,
                "duration": "12",
                "location__address": "Murtala Muhammed Way",
                "status": "pending",
                "drop_off": "45AT",
                "pick_up": "NXS8",
                "created_at": "2022-01-22T18:57:00.499753Z"
            }
        ],
        "customer_to_customer": [
            {
                "id": 38,
                "name": "emem",
                "email": "emembest10@yahoo.com",
                "phone": "+2349137801016",
                "location__address": "Surulere, Lagos State",
                "status": "pending",
                "drop_off": "ZJVG",
                "pick_up": "KZ0E",
                "created_at": "2022-01-21T16:33:51.024367Z"
            }
        ],
        "customer_to_courier": [
            {
                "id": 39,
                "name": "emem",
                "email": "emembest10@yahoo.com",
                "phone": "+2349137801016",
                "location__address": "Surulere, Lagos State",
                "city": "lagos",
                "status": "pending",
                "drop_off": "778J",
                "pick_up": "Q1Y8",
                "created_at": "2022-01-21T16:34:56.818032Z"
            }
        ],
        "payment_history": [
            {
                "id": 37,
                "user_id": "f98874f7-8662-4376-a83c-238c9e5c7586",
                "amount": 1000.0,
                "payment_for": "self_storage",
                "reference": "tzyccci21w",
                "currency": "NGN",
                "transaction_date": "2021-12-29T13:30:15Z",
                "is_active": true,
                "created_at": "2022-01-21T16:32:12.926668Z"
            }
         
        ],
        "parcel_stats": {
            "pending": 6,
            "dropped": 0,
            "assigned": 0,
            "completed": 0
        },
        "saved_cards": [
            {
                "id": 1,
                "user_id": "f98874f7-8662-4376-a83c-238c9e5c7586",
                "authorization_code": "AUTH_ww27xd6vgk",
                "bin": "408408",
                "last4": "4081",
                "exp_month": "08",
                "exp_year": "2023",
                "bank": "TEST BANK",
                "card_type": "visa ",
                "country_code": "NG",
                "account_name": null,
                "date_added": "2022-01-26T16:58:30.868162Z"
            }
        ]
    }
}''';

const cardResponse = CardResponse(
    status: true,
    message: 'Successful',
    data: CardData(paymentHistory: [
      PaymentHistory(
          id: 37,
          user_id: 'f98874f7-8662-4376-a83c-238c9e5c7586',
          amount: 1000,
          payment_for: 'self_storage',
          reference: 'tzyccci21w',
          currency: 'NGN',
          transaction_date: '2021-12-29T13:30:15Z',
          is_active: true,
          created_at: '2022-01-21T16:32:12.926668Z')
    ], savedCards: [
      BankCard(
          id: 1,
          userId: 'f98874f7-8662-4376-a83c-238c9e5c7586',
          authorizationCode: 'AUTH_ww27xd6vgk',
          bin: '408408',
          last4: '4081',
          expMonth: '08',
          expYear: '2023',
          bank: 'TEST BANK',
          cardType: 'visa ',
          countryCode: 'NG',
          dateAdded: '2022-01-26T16:58:30.868162Z')
    ]));

const chargeCardJson = '''{
    "status": true,
    "message": "Charge attempted",
    "data": {
        "amount": 300000,
        "currency": "NGN",
        "transaction_date": "2022-01-26T18:32:03.000Z",
        "status": "success",
        "reference": "eybs0nnnv3gqwt3",
        "domain": "test",
        "metadata": "",
        "gateway_response": "Approved",
        "message": null,
        "channel": "card",
        "ip_address": null,
        "log": null,
        "fees": 14500,
        "authorization": {
            "authorization_code": "AUTH_ww27xd6vgk",
            "bin": "408408",
            "last4": "4081",
            "exp_month": "08",
            "exp_year": "2023",
            "channel": "card",
            "card_type": "visa ",
            "bank": "TEST BANK",
            "country_code": "NG",
            "brand": "visa",
            "reusable": true,
            "signature": "SIG_ZK2MNo07R4qBmTcK0EH9",
            "account_name": null
        },
        "customer": {
            "id": 62450498,
            "first_name": null,
            "last_name": null,
            "email": "iemmanuel785@gmail.com",
            "customer_code": "CUS_p2jd17ur3oixakd",
            "phone": null,
            "metadata": null,
            "risk_action": "default",
            "international_format_phone": null
        },
        "plan": null,
        "id": 1586422530
    }
}''';

const chargeResponse = ChargeResponse(
    status: true,
    message: 'Charge attempted',
    data: ChargeData(
        amount: 300000,
        currency: 'NGN',
        transactionDate: '2022-01-26T18:32:03.000Z',
        status: 'success',
        reference: 'eybs0nnnv3gqwt3',
        domain: 'test',
        metadata: '',
        gatewayResponse: 'Approved',
        channel: 'card',
        fees: 14500));
