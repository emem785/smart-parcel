import 'package:smart_parcel/parcels/domain/models/customer_to_customer.dart';
import 'package:smart_parcel/parcels/domain/models/cutomer_to_courier.dart';
import 'package:smart_parcel/parcels/domain/models/parcel_data.dart';
import 'package:smart_parcel/parcels/domain/models/parcel_response.dart';
import 'package:smart_parcel/parcels/domain/models/self_storage.dart';

const getParcelJson2 = '''{
  "status": true,
  "message": "Successful",
  "data": {
    "id": "4ecc81a7-f892-4260-8626-1c20f10678ed",
    "first_name": "emme",
    "last_name": "emem",
    "email": "iemmanuel785@gmail.com",
    "phone": "0803333333",
    "role": "user",
    "address": null,
    "profile_pics": null,
    "profile_pics_url": null,
    "date_joined": "2021-12-15T18:27:01.611108+01:00",
    "self_storages": [
      {
        "id": 1,
        "duration": "6",
        "location__address": "18,oyekan Street, Surulere, Lagos, Nigeria",
        "status": "pending",
        "drop_off": "AS5M",
        "pick_up": "1HNC",
        "created_at": "2021-12-15T20:49:53.955889Z"
      }
    ],
    "customer_to_customer": [
      {
        "id": 4,
        "name": "aaa",
        "email": "user@example.com",
        "phone": "080333333",
        "location__address": "10, Fola Osibo Road, Lekki, Lagos, Nigeria",
        "status": "pending",
        "drop_off": "4G6C",
        "pick_up": "PP54",
        "created_at": "2021-12-16T15:23:58.282228Z"
      }
    ],
    "customer_to_courier": [
      {
        "id": 7,
        "name": "person",
        "email": "emma@emma.com",
        "phone": "080373737737",
        "location__address": "10, Fola Osibo Road, Lekki, Lagos, Nigeria",
        "city": "lagos",
        "status": "pending",
        "drop_off": "7S54",
        "pick_up": "8VT1",
        "created_at": "2021-12-16T18:18:48.999800Z"
      }
    ],
    "payment_history": [
      {
        "id": 1,
        "user_id": "4ecc81a7-f892-4260-8626-1c20f10678ed",
        "amount": 1000,
        "payment_for": "self_storage",
        "reference": "skqv5swoil",
        "currency": "NGN",
        "transaction_date": "2021-12-15T20:43:59Z",
        "is_active": true,
        "created_at": "2021-12-15T20:49:53.948197Z"
      }
    ]
  }
}''';

// const parcelResonse2 = ParcelResponse(
//     status: true,
//     message: "Successful",
//     data: ParcelData(selfStorages: [
//       SelfStorage(
//           id: 12,
//           userId: "",
//           duration: "12",
//           locationId: 0,
//           dropOff: "7YQ0L8",
//           pickUp: "ZO30VU",
//           status: "pending",
//           address: "Lennox Mall, Admiralty Way",
//           isActive: false,
//           createdAt: "2021-11-26T15:10:30.833441Z")
//     ], customerToCustomer: [
//       CustomerToCustomer(
//           id: 1,
//           userId: "",
//           name: "emmzz",
//           dropOff: "7YQ0L8",
//           pickUp: "ZO30VU",
//           email: "emmmanuelisong1@gmail.com",
//           phone: "0803333333",
//           address: "The Palms Shopping Mall",
//           locationId: 0,
//           status: "pending",
//           isActive: false,
//           createdAt: "2021-11-17T14:06:22.007376Z")
//     ]));

const parcelResonse2 = ParcelResponse(
    status: true,
    message: 'Successful',
    data: ParcelData(selfStorages: [
      SelfStorage(
          id: 1,
          userId: '',
          duration: '6',
          locationId: 0,
          status: 'pending',
          isActive: false,
          createdAt: '2021-12-15T20:49:53.955889Z',
          address: '18,oyekan Street, Surulere, Lagos, Nigeria',
          pickUp: '1HNC',
          dropOff: 'AS5M')
    ], customerToCustomer: [
      CustomerToCustomer(
          id: 4,
          userId: '',
          name: 'aaa',
          email: 'user@example.com',
          phone: '080333333',
          locationId: 0,
          status: 'pending',
          address: '10, Fola Osibo Road, Lekki, Lagos, Nigeria',
          dropOff: '4G6C',
          pickUp: 'PP54',
          isActive: false,
          createdAt: '2021-12-16T15:23:58.282228Z')
    ], customerToCourier: [
      CustomerToCourier(
          id: 7,
          name: 'person',
          email: 'emma@emma.com',
          phone: '080373737737',
          locationAddress: '10, Fola Osibo Road, Lekki, Lagos, Nigeria',
          city: 'lagos',
          status: 'pending',
          dropOff: '7S54',
          pickUp: '8VT1',
          createdAt: '2021-12-16T18:18:48.999800Z')
    ]));
