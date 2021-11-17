import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/delivery/domain/models/booking_data.dart';
import 'package:smart_parcel/delivery/domain/models/booking_response.dart';

const selfStorageError = '''{
  "message": "failed",
  "errors": {
    "user": [
      "Invalid pk \"3fa85f64-5717-4562-b3fc-2c963f66afa6\" - object does not exist."
    ]
  }
}''';

const selfStorageJson = '''{
  "message": "success",
  "data": {
    "id": 1,
    "duration": "5",
    "status": "pending",
    "is_active": true,
    "created_at": "2021-11-17T14:17:18.819155+01:00",
    "user": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
    "location": 4
  }
}''';

const getParcelCentersJson = '''{
    "Yaba": [
        {
            "id": 3,
            "location": "Yaba",
            "address": "Spar, Tejuoso Market, Yaba",
            "is_active": true,
            "created_at": "2021-11-16T17:06:59.540708Z"
        },
        {
            "id": 5,
            "location": "Yaba",
            "address": "Mini so, Tejuoso Market, Yaba",
            "is_active": true,
            "created_at": "2021-11-16T17:06:59.540747Z"
        }
    ],
    "Surulere": [
        {
            "id": 6,
            "location": "Surulere",
            "address": "Leisure Mall",
            "is_active": true,
            "created_at": "2021-11-16T17:06:59.540767Z"
        }
    ],
    "Lekki": [
        {
            "id": 1,
            "location": "Lekki",
            "address": "The Palms Shopping Mall",
            "is_active": true,
            "created_at": "2021-11-16T17:06:59.540638Z"
        },
        {
            "id": 2,
            "location": "Lekki",
            "address": "Lennox Mall, Admiralty Way",
            "is_active": true,
            "created_at": "2021-11-16T17:06:59.540686Z"
        },
        {
            "id": 4,
            "location": "Lekki",
            "address": "The Palms Shopping Mall",
            "is_active": true,
            "created_at": "2021-11-16T17:06:59.540729Z"
        }
    ]
}''';

const bookCustomerToCustomerResponse = '''{
  "message": "success",
  "data": {
    "id": 1,
    "name": "emmzz",
    "email": "emmmanuelisong1@gmail.com",
    "phone": "0803333333",
    "status": "pending",
    "is_active": true,
    "created_at": "2021-11-17T15:06:22.007376+01:00",
    "user": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
    "location": 4
  }
}''';

const mockSelfStorageBookingResponse = BookingResponse(
    message: "success",
    data: BookingData(
        email: "",
        name: "",
        phone: "",
        id: 1,
        status: "pending",
        isActive: true,
        createdAt: "2021-11-17T14:17:18.819155+01:00",
        user: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
        location: 4));

const selfStorageFailure = Failure("Unexpected Server Error");
