import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/delivery/domain/models/booking_data.dart';
import 'package:smart_parcel/delivery/domain/models/booking_response.dart';
import 'package:smart_parcel/delivery/domain/models/center.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/delivery/domain/models/location_result_response.dart';
import 'package:smart_parcel/delivery/domain/models/result.dart';

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

const getParcelCentersJson = '''[
    {
        "name": "Yaba",
        "centers": [
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
        ]
    },
    {
        "name": "Surulere",
        "centers": [
            {
                "id": 6,
                "location": "Surulere",
                "address": "Leisure Mall",
                "is_active": true,
                "created_at": "2021-11-16T17:06:59.540767Z"
            }
        ]
    },
    {
        "name": "Lekki",
        "centers": [
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
    }
]''';

const bookCustomerToCustomerResponse = '''{
  "message": "success",
  "data": {
    "id": 1,
    "address": "Lennox Mall, Admiralty Way",
    "name": "string",
    "email": "user@example.com",
    "phone": "string",
    "pick_up": "M3DOD4",
    "drop_off": "59G3EU",
    "status": "string",
    "is_active": true,
    "created_at": "2021-11-25T18:28:33.056583+01:00",
    "user": "05dd61f9-f989-4006-9a7d-f48296932a40",
    "location": 2
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
const mockCustomerToCustomerResponse = BookingResponse(
    message: "success",
    data: BookingData(
        email: "emmmanuelisong1@gmail.com",
        name: "emmzz",
        phone: "0803333333",
        id: 1,
        status: "pending",
        isActive: true,
        createdAt: "2021-11-17T15:06:22.007376+01:00",
        user: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
        location: 4));

const selfStorageFailure = Failure("Unexpected Server Error");

const mockCenterDistricts = [
  CenterDistrict(name: "Yaba", centers: [
    ParcelCenter(
        id: 3,
        location: "Yaba",
        address: "Spar, Tejuoso Market, Yaba",
        is_active: true,
        created_at: "2021-11-16T17:06:59.540708Z"),
    ParcelCenter(
        id: 5,
        location: "Yaba",
        address: "Mini so, Tejuoso Market, Yaba",
        is_active: true,
        created_at: "2021-11-16T17:06:59.540747Z")
  ]),
  CenterDistrict(name: "Surulere", centers: [
    ParcelCenter(
        id: 6,
        location: "Surulere",
        address: "Leisure Mall",
        is_active: true,
        created_at: "2021-11-16T17:06:59.540767Z")
  ]),
  CenterDistrict(name: "Lekki", centers: [
    ParcelCenter(
        id: 1,
        location: "Lekki",
        address: "The Palms Shopping Mall",
        is_active: true,
        created_at: "2021-11-16T17:06:59.540638Z"),
    ParcelCenter(
        id: 2,
        location: "Lekki",
        address: "Lennox Mall, Admiralty Way",
        is_active: true,
        created_at: "2021-11-16T17:06:59.540686Z"),
    ParcelCenter(
        id: 4,
        location: "Lekki",
        address: "The Palms Shopping Mall",
        is_active: true,
        created_at: "2021-11-16T17:06:59.540729Z")
  ])
];

const googlePlacesResponse = '''{
    "html_attributions": [],
    "next_page_token": "Aap_uECmij5juJyyNm6Be0uqmBsvW4ib5YsPZrUStAE7MEb-XBImVyU5mgFxNUHNheXSUOEIM2KvXzFiK835sL2FIbGwBQJKJNiy3NGRFZ5lxbgQgQi-kur0NilMHcHzu3YMgbKXGjnbNHxgpwLAhLsGtKG9lDuPPZYoTLYN3uhXY38gLyPefL2RJxqXaQP0LsZk-WVXWZ3G79uhx7NfBowig17NV8ZdA1TkQkM2kzu7BoiXUe-ny05EvuzU0q3a1YJtVxujq8Fm58H88iRbw8RP8WhD-I_ZEOboqafzzppbS-7xuPcEZ6ncV7aqkEn_FXGMAs3d32FQQzkDi9SBVth1uPnQsNVxBhGnh92a-pCouCpHvMuhkympMBVxK80KwEegjM9iA3gQ",
    "results": [
        {
            "business_status": "OPERATIONAL",
            "formatted_address": "no 9 bakare street off oriola ketu lagos kosofe local government, Ketu 105102, Lagos, Nigeria",
            "geometry": {
                "location": {
                    "lat": 6.5909719,
                    "lng": 3.3937029
                },
                "viewport": {
                    "northeast": {
                        "lat": 6.592297979892722,
                        "lng": 3.395088529892722
                    },
                    "southwest": {
                        "lat": 6.589598320107278,
                        "lng": 3.392388870107277
                    }
                }
            },
            "icon": "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png",
            "icon_background_color": "#7B9EB0",
            "icon_mask_base_uri": "https://maps.gstatic.com/mapfiles/place_api/icons/v2/generic_pinlet",
            "name": "Adebambo Professional Partners",
            "opening_hours": {
                "open_now": true
            },
            "place_id": "ChIJs9kWLXeTOxARtlLYZczFvrQ",
            "plus_code": {
                "compound_code": "H9RV+9F Lagos",
                "global_code": "6FR5H9RV+9F"
            },
            "rating": 0,
            "reference": "ChIJs9kWLXeTOxARtlLYZczFvrQ",
            "types": [
                "point_of_interest",
                "establishment"
            ],
            "user_ratings_total": 0
        },
        {
            "business_status": "OPERATIONAL",
            "formatted_address": "228 Ikorodu Rd, Somolu 102216, Lagos, Nigeria",
            "geometry": {
                "location": {
                    "lat": 6.5442886,
                    "lng": 3.3676105
                },
                "viewport": {
                    "northeast": {
                        "lat": 6.545637479892722,
                        "lng": 3.368903979892722
                    },
                    "southwest": {
                        "lat": 6.542937820107278,
                        "lng": 3.366204320107277
                    }
                }
            },
            "icon": "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/shopping-71.png",
            "icon_background_color": "#4B96F3",
            "icon_mask_base_uri": "https://maps.gstatic.com/mapfiles/place_api/icons/v2/shopping_pinlet",
            "name": "Abiodun Stores, 7, Adebambo Street, Obanikoro,La",
            "place_id": "ChIJU2EHwnSNOxARN6Vr7tYmEFo",
            "plus_code": {
                "compound_code": "G9V9+P2 Lagos",
                "global_code": "6FR5G9V9+P2"
            },
            "rating": 0,
            "reference": "ChIJU2EHwnSNOxARN6Vr7tYmEFo",
            "types": [
                "food",
                "point_of_interest",
                "store",
                "establishment"
            ],
            "user_ratings_total": 0
        }        
    ],
    "status": "OK"
}''';

const locationResult = LocationResultResponse(
    htmlAttributions: [],
    nextPageToken:
        "Aap_uECmij5juJyyNm6Be0uqmBsvW4ib5YsPZrUStAE7MEb-XBImVyU5mgFxNUHNheXSUOEIM2KvXzFiK835sL2FIbGwBQJKJNiy3NGRFZ5lxbgQgQi-kur0NilMHcHzu3YMgbKXGjnbNHxgpwLAhLsGtKG9lDuPPZYoTLYN3uhXY38gLyPefL2RJxqXaQP0LsZk-WVXWZ3G79uhx7NfBowig17NV8ZdA1TkQkM2kzu7BoiXUe-ny05EvuzU0q3a1YJtVxujq8Fm58H88iRbw8RP8WhD-I_ZEOboqafzzppbS-7xuPcEZ6ncV7aqkEn_FXGMAs3d32FQQzkDi9SBVth1uPnQsNVxBhGnh92a-pCouCpHvMuhkympMBVxK80KwEegjM9iA3gQ",
    results: [
      LocationResult(
          businessStatus: "OPERATIONAL",
          formattedAddress:
              "no 9 bakare street off oriola ketu lagos kosofe local government, Ketu 105102, Lagos, Nigeria"),
      LocationResult(
          businessStatus: "OPERATIONAL",
          formattedAddress: "228 Ikorodu Rd, Somolu 102216, Lagos, Nigeria")
    ],
    status: "OK");
