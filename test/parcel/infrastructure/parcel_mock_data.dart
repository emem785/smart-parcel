import 'package:smart_parcel/parcel/domain/models/customer_to_customer.dart';
import 'package:smart_parcel/parcel/domain/models/parcel_data.dart';
import 'package:smart_parcel/parcel/domain/models/parcel_response.dart';
import 'package:smart_parcel/parcel/domain/models/self_storage.dart';

const getParcelJson = '''{
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
                "id": 1,
                "user_id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
                "duration": "5",
                "location_id": 4,
                "status": "pending",
                "is_active": true,
                "created_at": "2021-11-17T13:17:18.819155Z"
            },
            {
                "id": 2,
                "user_id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
                "duration": "5",
                "location_id": 4,
                "status": "pending",
                "is_active": true,
                "created_at": "2021-11-17T14:02:26.411140Z"
            },
            {
                "id": 3,
                "user_id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
                "duration": "1 hours",
                "location_id": 3,
                "status": "pending",
                "is_active": true,
                "created_at": "2021-11-22T12:20:35.936680Z"
            },
            {
                "id": 4,
                "user_id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
                "duration": "1 hours",
                "location_id": 5,
                "status": "pending",
                "is_active": true,
                "created_at": "2021-11-22T12:43:37.356587Z"
            },
            {
                "id": 5,
                "user_id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
                "duration": "1 hours",
                "location_id": 5,
                "status": "pending",
                "is_active": true,
                "created_at": "2021-11-22T12:44:36.006504Z"
            },
            {
                "id": 6,
                "user_id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
                "duration": "2 hours",
                "location_id": 5,
                "status": "pending",
                "is_active": true,
                "created_at": "2021-11-22T14:09:03.460822Z"
            },
            {
                "id": 9,
                "user_id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
                "duration": "12",
                "location_id": 6,
                "status": "pending",
                "is_active": true,
                "created_at": "2021-11-24T13:47:03.087143Z"
            }
        ],
        "customer_to_customer": [
            {
                "id": 1,
                "user_id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
                "name": "emmzz",
                "email": "emmmanuelisong1@gmail.com",
                "phone": "0803333333",
                "location_id": 4,
                "status": "pending",
                "is_active": true,
                "created_at": "2021-11-17T14:06:22.007376Z"
            },
            {
                "id": 2,
                "user_id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
                "name": "emem",
                "email": "emmanuelisong1@gmail.com",
                "phone": "08033333333",
                "location_id": 6,
                "status": "pending",
                "is_active": true,
                "created_at": "2021-11-22T14:24:32.168453Z"
            }
        ]
    }
}''';

const parcelResponse = ParcelResponse(
    status: true,
    message: "Successful",
    data: ParcelData(selfStorages: [
      SelfStorage(
          id: 1,
          userId: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
          duration: "5",
          locationId: 4,
          status: "pending",
          isActive: true,
          createdAt: "2021-11-17T13:17:18.819155Z"),
      SelfStorage(
          id: 2,
          userId: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
          duration: "5",
          locationId: 4,
          status: "pending",
          isActive: true,
          createdAt: "2021-11-17T14:02:26.411140Z"),
      SelfStorage(
          id: 3,
          userId: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
          duration: "1 hours",
          locationId: 3,
          status: "pending",
          isActive: true,
          createdAt: "2021-11-22T12:20:35.936680Z"),
      SelfStorage(
          id: 4,
          userId: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
          duration: "1 hours",
          locationId: 5,
          status: "pending",
          isActive: true,
          createdAt: "2021-11-22T12:43:37.356587Z"),
      SelfStorage(
          id: 5,
          userId: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
          duration: "1 hours",
          locationId: 5,
          status: "pending",
          isActive: true,
          createdAt: "2021-11-22T12:44:36.006504Z"),
      SelfStorage(
          id: 6,
          userId: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
          duration: "2 hours",
          locationId: 5,
          status: "pending",
          isActive: true,
          createdAt: "2021-11-22T14:09:03.460822Z"),
      SelfStorage(
          id: 9,
          userId: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
          duration: "12",
          locationId: 6,
          status: "pending",
          isActive: true,
          createdAt: "2021-11-24T13:47:03.087143Z")
    ], customerToCustomer: [
      CustomerToCustomer(
          id: 1,
          userId: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
          name: "emmzz",
          email: "emmmanuelisong1@gmail.com",
          phone: "0803333333",
          locationId: 4,
          status: "pending",
          isActive: true,
          createdAt: "2021-11-17T14:06:22.007376Z"),
      CustomerToCustomer(
          id: 2,
          userId: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
          name: "emem",
          email: "emmanuelisong1@gmail.com",
          phone: "08033333333",
          locationId: 6,
          status: "pending",
          isActive: true,
          createdAt: "2021-11-22T14:24:32.168453Z")
    ]));
