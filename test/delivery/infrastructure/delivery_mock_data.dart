import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/delivery/domain/models/booking_data.dart';
import 'package:smart_parcel/delivery/domain/models/booking_response.dart';
import 'package:smart_parcel/delivery/domain/models/center.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';
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
    "id": 6,
    "name": null,
    "phone": null,
    "email": null,
    "duration": "5",
    "address": null,
    "city": null,
    "pick_up": "8PT3",
    "drop_off": "2FPI",
    "dropoff_used": false,
    "pickup_used": false,
    "parcel_type": "self_storage",
    "status": "pending",
    "is_active": true,
    "created_at": "2021-12-16T19:11:26.270728+01:00",
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
      "id": 3,
      "location": "Yaba",
      "center_name": "Spar, Tejuoso Market, Yaba",
      "address": "1-3, Ijaoye Street, Yaba, Nigeria",
      "no_of_compartment": 2,
      "available_space": 2,
      "is_active": true,
      "created_at": "2021-12-15T18:23:24.484648+01:00",
      "user": null
    }
  }
}''';

const getParcelCentersJson = '''[
    {
        "name": "Lekki",
        "centers": [
            {
                "id": 1,
                "user_id": null,
                "location": "Lekki",
                "center_name": "The Palms Shopping Mall",
                "address": "10, Fola Osibo Road, Lekki, Lagos, Nigeria",
                "no_of_compartment": 5,
                "available_space": 5,
                "is_active": true,
                "created_at": "2021-12-02T11:24:12.880460Z"
            },
            {
                "id": 2,
                "user_id": null,
                "location": "Lekki",
                "center_name": "Lennox Mall, Admiralty Way",
                "address": " 12, Layi Yusuf Crescent, Lekki, Lagos, Nigeria",
                "no_of_compartment": 2,
                "available_space": 2,
                "is_active": true,
                "created_at": "2021-12-02T11:24:12.880499Z"
            },
            {
                "id": 4,
                "user_id": null,
                "location": "Lekki",
                "center_name": "The Palms Shopping Mall",
                "address": " 38, Olanrewaju Ninalowo Crescent, Lekki, Lagos, Nigeria",
                "no_of_compartment": 5,
                "available_space": 5,
                "is_active": true,
                "created_at": "2021-12-02T11:24:12.880541Z"
            }
        ]
    },
    {
        "name": "Surulere",
        "centers": [
            {
                "id": 6,
                "user_id": null,
                "location": "Surulere",
                "center_name": "Leisure Mall",
                "address": "18,oyekan Street, Surulere, Lagos, Nigeria",
                "no_of_compartment": 3,
                "available_space": 3,
                "is_active": true,
                "created_at": "2021-12-02T11:24:12.880594Z"
            }
        ]
    },
    {
        "name": "Yaba",
        "centers": [
            {
                "id": 3,
                "user_id": null,
                "location": "Yaba",
                "center_name": "Spar, Tejuoso Market, Yaba",
                "address": "1-3, Ijaoye Street, Yaba, Nigeria",
                "no_of_compartment": 2,
                "available_space": 2,
                "is_active": true,
                "created_at": "2021-12-02T11:24:12.880518Z"
            },
            {
                "id": 5,
                "user_id": null,
                "location": "Yaba",
                "center_name": "Mini so, Tejuoso Market, Yaba",
                "address": "6 Araoti Street, Yaba, Lagos, Nigeria",
                "no_of_compartment": 4,
                "available_space": 4,
                "is_active": true,
                "created_at": "2021-12-02T11:24:12.880563Z"
            }
        ]
    }
]''';

const bookCustomerToCourierResponse = '''{
  "message": "success",
  "data": {
    "id": 7,
    "name": "person",
    "phone": "080373737737",
    "email": "emma@emma.com",
    "duration": null,
    "address": "No.1 nndfkjdf",
    "description": "a big box",
    "city": "lagos",
    "pick_up": "8VT1",
    "drop_off": "7S54",
    "dropoff_used": false,
    "pickup_used": false,
    "parcel_type": "customer_to_courier",
    "status": "pending",
    "is_active": true,
    "created_at": "2021-12-16T19:18:48.999800+01:00",
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
const bookCustomerToCustomerResponse = '''{
  "message": "success",
  "data": {
    "id": 5,
    "name": "person",
    "phone": "080373737737",
    "email": "emma@emma.com",
    "duration": null,
    "address": "No.1 nndfkjdf",
    "description": "a big box",
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
  CenterDistrict(name: 'Lekki', centers: [
    ParcelCenter(
        id: 1,
        noOfCompartments: 5,
        availableSpaces: 5,
        location: 'Lekki',
        address: '10, Fola Osibo Road, Lekki, Lagos, Nigeria',
        is_active: true,
        created_at: '2021-12-02T11:24:12.880460Z'),
    ParcelCenter(
        id: 2,
        noOfCompartments: 2,
        availableSpaces: 2,
        location: 'Lekki',
        address: ' 12, Layi Yusuf Crescent, Lekki, Lagos, Nigeria',
        is_active: true,
        created_at: '2021-12-02T11:24:12.880499Z'),
    ParcelCenter(
        id: 4,
        noOfCompartments: 5,
        availableSpaces: 5,
        location: 'Lekki',
        address: ' 38, Olanrewaju Ninalowo Crescent, Lekki, Lagos, Nigeria',
        is_active: true,
        created_at: '2021-12-02T11:24:12.880541Z')
  ]),
  CenterDistrict(name: 'Surulere', centers: [
    ParcelCenter(
        id: 6,
        noOfCompartments: 3,
        availableSpaces: 3,
        location: 'Surulere',
        address: '18,oyekan Street, Surulere, Lagos, Nigeria',
        is_active: true,
        created_at: '2021-12-02T11:24:12.880594Z')
  ]),
  CenterDistrict(name: 'Yaba', centers: [
    ParcelCenter(
        id: 3,
        noOfCompartments: 2,
        availableSpaces: 2,
        location: 'Yaba',
        address: '1-3, Ijaoye Street, Yaba, Nigeria',
        is_active: true,
        created_at: '2021-12-02T11:24:12.880518Z'),
    ParcelCenter(
        id: 5,
        noOfCompartments: 4,
        availableSpaces: 4,
        location: 'Yaba',
        address: '6 Araoti Street, Yaba, Lagos, Nigeria',
        is_active: true,
        created_at: '2021-12-02T11:24:12.880563Z')
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

const customerFormCourier = CustomerForm(
    name: 'person',
    phone: '080373737737',
    email: 'emma@emma.com',
    address: 'No.1 nndfkjdf',
    city: 'lagos',
    description: "a tiny box");

const customerFormC = CustomerForm(
    name: 'person',
    phone: '080373737737',
    email: 'emma@emma.com',
    address: 'No.1 nndfkjdf',
    city: null,
    description: "a tiny box");
