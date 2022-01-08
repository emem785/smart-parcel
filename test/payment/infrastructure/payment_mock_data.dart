import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
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
