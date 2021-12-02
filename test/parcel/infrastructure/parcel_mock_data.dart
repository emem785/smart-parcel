import 'package:smart_parcel/parcel/domain/models/customer_to_customer.dart';
import 'package:smart_parcel/parcel/domain/models/parcel_data.dart';
import 'package:smart_parcel/parcel/domain/models/parcel_response.dart';
import 'package:smart_parcel/parcel/domain/models/self_storage.dart';

const getParcelJson2 = '''{
    "status": true,
    "message": "Successful",
    "data": {
        "id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
        "username": "emem",
        "first_name": "emem",
        "last_name": "ememzz",
        "email": "iemmanuel785@gmail.com",
        "phone": "080575757",
        "is_admin": false,
        "is_staff": false,
        "profile_pics": null,
        "profile_pics_url": null,
        "date_joined": "2021-11-17T13:15:51.656429+01:00",
        "self_storages": [
            {
                "id": 12,
                "duration": "12",
                "location__address": "Lennox Mall, Admiralty Way",
                "drop_off": "7YQ0L8",
                "pick_up": "ZO30VU",
                "status": "pending",
                "created_at": "2021-11-26T15:10:30.833441Z"
            }
        ],
        "customer_to_customer": [
            {
                "id": 1,
                "name": "emmzz",
                "email": "emmmanuelisong1@gmail.com",
                "phone": "0803333333",
                "drop_off": "7YQ0L8",
                "pick_up": "ZO30VU",
                "location__address": "The Palms Shopping Mall",
                "status": "pending",
                "created_at": "2021-11-17T14:06:22.007376Z"
            }        ],
        "payment_history": [
            {
                "id": 1,
                "user_id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
                "amount": 1000.0,
                "payment_for": "self_storage",
                "reference": "a3hzs1xh4f",
                "currency": "NGN",
                "transaction_date": "2021-11-25T18:36:01.000Z",
                "is_active": true,
                "created_at": "2021-11-25T18:36:24.227456Z"
            }        ]
    }
}''';

const parcelResonse2 = ParcelResponse(
    status: true,
    message: "Successful",
    data: ParcelData(selfStorages: [
      SelfStorage(
          id: 12,
          userId: "",
          duration: "12",
          locationId: 0,
          dropOff: "7YQ0L8",
          pickUp: "ZO30VU",
          status: "pending",
          address: "Lennox Mall, Admiralty Way",
          isActive: false,
          createdAt: "2021-11-26T15:10:30.833441Z")
    ], customerToCustomer: [
      CustomerToCustomer(
          id: 1,
          userId: "",
          name: "emmzz",
          dropOff: "7YQ0L8",
          pickUp: "ZO30VU",
          email: "emmmanuelisong1@gmail.com",
          phone: "0803333333",
          address: "The Palms Shopping Mall",
          locationId: 0,
          status: "pending",
          isActive: false,
          createdAt: "2021-11-17T14:06:22.007376Z")
    ]));
