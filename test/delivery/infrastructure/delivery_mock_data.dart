import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/delivery/domain/models/center.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';
import 'package:smart_parcel/delivery/domain/models/location_result_response.dart';
import 'package:smart_parcel/delivery/domain/models/result.dart';
import 'package:smart_parcel/delivery/domain/models/size_data.dart';
import 'package:smart_parcel/delivery/domain/models/sizes_response.dart';
import 'package:smart_parcel/payment/domain/models/booking_data.dart';
import 'package:smart_parcel/payment/domain/models/booking_response.dart';
import 'package:smart_parcel/payment/domain/models/compartment.dart';
import 'package:smart_parcel/payment/domain/models/location.dart';

const selfStorageError = '''{
  "message": "failed",
  "errors": {
    "user": [
      "Invalid pk '3fa85f64-5717-4562-b3fc-2c963f66afa6' - object does not exist."
    ]
  }
}''';

const selfStorageJson = '''{
  "message": "success",
  "data": {
    "id": 1,
    "name": null,
    "phone": null,
    "email": null,
    "duration": "5",
    "address": null,
    "description": "string",
    "city": null,
    "pick_up": "HSDN",
    "drop_off": "RMYV",
    "dropoff_used": false,
    "pickup_used": false,
    "parcel_type": "self_storage",
    "status": "pending",
    "is_active": true,
    "created_at": "2022-02-07T21:32:01.908441+01:00",
    "user": {
      "id": "e44fa73e-a06b-48e1-9fc1-f68f6a3afb4d",
      "last_login": "2022-02-07T20:03:48.171067+01:00",
      "first_name": "emma",
      "last_name": "emmz",
      "email": "iemmanuel785@gmail.com",
      "phone": "+2349137801016",
      "profile_pics": null,
      "profile_pics_url": null,
      "address": null,
      "is_active": true,
      "is_staff": false,
      "is_admin": false,
      "role": "user",
      "is_superuser": false,
      "date_joined": "2022-02-06T13:41:51.619878+01:00",
      "auth_provider": "email",
      "firebase_key": "string",
      "logistic_partner": null,
      "groups": [],
      "user_permissions": []
    },
    "location": {
      "id": 6,
      "center_apikey": "1a02c7621d5f4ec5b227300bcbc8e285:909U8IbWAdzlnNsLQSndmMefDdw",
      "location": "Victoria Island",
      "center_name": "Cubana Pablo",
      "address": "17 Adeola Odeku St, Victoria Island 106104, Lagos",
      "available_small_space": 0,
      "available_medium_space": 0,
      "available_large_space": 1,
      "available_xlarge_space": 0,
      "available_xxlarge_space": 0,
      "is_active": true,
      "created_at": "2022-02-07T21:27:55.937088+01:00",
      "user": "9122829c-25bf-4dc3-bd82-9da6d40b164c",
      "category": 1
    },
    "compartment": {
      "id": 2,
      "number": "2",
      "is_available": true,
      "is_active": true,
      "created_at": "2022-02-05T22:26:05.067157+01:00",
      "size": 1,
      "category": 1
    },
    "delivery_partner": null
  }
}''';

const getParcelCentersJson = '''[
    {
        "name": "Lekki",
        "centers": [
            {
                "id": 1,
                "center_apikey": "904c59ce50704ea9932d055f7b4014d4:vboXH3pfhImV7-UkcIFv5l_I9rk",
                "user_id": "9122829c-25bf-4dc3-bd82-9da6d40b164c",
                "location": "Lekki",
                "center_name": "Palms Mall",
                "address": "Palms Mall, Lekki",
                "category_id": 1,
                "available_small_space": 1,
                "available_medium_space": 1,
                "available_large_space": 0,
                "available_xlarge_space": 0,
                "is_active": true,
                "created_at": "2022-02-06T00:36:58.673133Z"
            },
            {
                "id": 2,
                "center_apikey": "6f4fa7df5e31453b975ce434ff011dfb:6_xaaGl9DW1Au8Sr8CbrTTy6Hhk",
                "user_id": "9122829c-25bf-4dc3-bd82-9da6d40b164c",
                "location": "Lekki",
                "center_name": "Shoprite",
                "address": "Shoprite, Lekki",
                "category_id": 2,
                "available_small_space": 1,
                "available_medium_space": 2,
                "available_large_space": 1,
                "available_xlarge_space": 0,
                "is_active": true,
                "created_at": "2022-02-06T00:36:58.673204Z"
            },
            {
                "id": 3,
                "center_apikey": "3c630415766f4515a34b554786c1acb0:3QXC-y8KJECcSCZ5D38BPE4TSGo",
                "user_id": "9122829c-25bf-4dc3-bd82-9da6d40b164c",
                "location": "Lekki",
                "center_name": "Prince Ebeano Supermarket",
                "address": "Lekki",
                "category_id": 3,
                "available_small_space": 1,
                "available_medium_space": 1,
                "available_large_space": 1,
                "available_xlarge_space": 0,
                "is_active": true,
                "created_at": "2022-02-06T00:44:16.079924Z"
            }
        ]
    }
]''';

const bookCustomerToCourierJson = '''{
  "message": "success",
  "data": {
    "id": 2,
    "name": "string",
    "phone": "string",
    "email": "user@example.com",
    "duration": null,
    "address": "string",
    "description": "string",
    "city": "lagos",
    "pick_up": "GRKB",
    "drop_off": "4BSM",
    "dropoff_used": false,
    "pickup_used": false,
    "parcel_type": "customer_to_courier",
    "status": "pending",
    "is_active": true,
    "created_at": "2022-02-07T21:43:46.291961+01:00",
    "user": {
      "id": "e44fa73e-a06b-48e1-9fc1-f68f6a3afb4d",
      "last_login": "2022-02-07T20:03:48.171067+01:00",
      "first_name": "emma",
      "last_name": "emmz",
      "email": "iemmanuel785@gmail.com",
      "phone": "+2349137801016",
      "profile_pics": null,
      "profile_pics_url": null,
      "address": null,
      "is_active": true,
      "is_staff": false,
      "is_admin": false,
      "role": "user",
      "is_superuser": false,
      "date_joined": "2022-02-06T13:41:51.619878+01:00",
      "auth_provider": "email",
      "firebase_key": "string",
      "logistic_partner": null,
      "groups": [],
      "user_permissions": []
    },
    "location": {
      "id": 7,
      "center_apikey": "db4ab3d020e14dc8b9b673b08156f594:prrCpJgaAUW25V5HGRjFXqd40s4",
      "location": "Victoria Island",
      "center_name": "Churchgate Towers",
      "address": "PC 30 Churchgate St, Victoria Island 106104, Lagos",
      "available_small_space": 1,
      "available_medium_space": 2,
      "available_large_space": 2,
      "available_xlarge_space": 0,
      "available_xxlarge_space": 0,
      "is_active": true,
      "created_at": "2022-02-07T21:42:37.085564+01:00",
      "user": "9122829c-25bf-4dc3-bd82-9da6d40b164c",
      "category": 4
    },
    "compartment": {
      "id": 16,
      "number": "6",
      "is_available": true,
      "is_active": true,
      "created_at": "2022-02-07T13:07:48.117921+01:00",
      "size": 1,
      "category": 4
    },
    "delivery_partner": null
  }
}''';
const bookCustomerToCustomerJson = '''{
  "message": "success",
  "data": {
    "id": 3,
    "name": "string",
    "phone": "string",
    "email": "user@example.com",
    "duration": null,
    "address": "string",
    "description": "string",
    "city": null,
    "pick_up": "Y4LQ",
    "drop_off": "7E2J",
    "dropoff_used": false,
    "pickup_used": false,
    "parcel_type": "customer_to_customer",
    "status": "pending",
    "is_active": true,
    "created_at": "2022-02-07T21:45:17.191673+01:00",
    "user": {
      "id": "e44fa73e-a06b-48e1-9fc1-f68f6a3afb4d",
      "last_login": "2022-02-07T20:03:48.171067+01:00",
      "first_name": "emma",
      "last_name": "emmz",
      "email": "iemmanuel785@gmail.com",
      "phone": "+2349137801016",
      "profile_pics": null,
      "profile_pics_url": null,
      "address": null,
      "is_active": true,
      "is_staff": false,
      "is_admin": false,
      "role": "user",
      "is_superuser": false,
      "date_joined": "2022-02-06T13:41:51.619878+01:00",
      "auth_provider": "email",
      "firebase_key": "string",
      "logistic_partner": null,
      "groups": [],
      "user_permissions": []
    },
    "location": {
      "id": 7,
      "center_apikey": "db4ab3d020e14dc8b9b673b08156f594:prrCpJgaAUW25V5HGRjFXqd40s4",
      "location": "Victoria Island",
      "center_name": "Churchgate Towers",
      "address": "PC 30 Churchgate St, Victoria Island 106104, Lagos",
      "available_small_space": 0,
      "available_medium_space": 2,
      "available_large_space": 2,
      "available_xlarge_space": 0,
      "available_xxlarge_space": 0,
      "is_active": true,
      "created_at": "2022-02-07T21:42:37.085564+01:00",
      "user": "9122829c-25bf-4dc3-bd82-9da6d40b164c",
      "category": 4
    },
    "compartment": {
      "id": 13,
      "number": "3",
      "is_available": true,
      "is_active": true,
      "created_at": "2022-02-07T13:07:48.117835+01:00",
      "size": 1,
      "category": 4
    },
    "delivery_partner": null
  }
}''';

const selfStorageBookingResponse = BookingResponse(
    message: 'success',
    data: BookingData(
        name: '',
        phone: '',
        email: '',
        duration: '5',
        address: '',
        city: '',
        pickUp: 'HSDN',
        dropOff: 'RMYV',
        parcelType: 'self_storage',
        user: User(
            id: 'e44fa73e-a06b-48e1-9fc1-f68f6a3afb4d',
            firstName: 'emma',
            lastName: 'emmz',
            email: 'iemmanuel785@gmail.com',
            profilePicUrl: '',
            phone: '+2349137801016'),
        location: Location(
            id: 6,
            location: 'Victoria Island',
            centerName: 'Cubana Pablo',
            address: '17 Adeola Odeku St, Victoria Island 106104, Lagos',
            noOfCompartment: 0,
            availableSpace: 0,
            isActive: true,
            createdAt: '2022-02-07T21:27:55.937088+01:00'),
        compartment: Compartment(
            id: 2,
            number: '2',
            isAvailable: true,
            isActive: true,
            createdAt: '2022-02-05T22:26:05.067157+01:00',
            size: 1,
            category: 1)));

const customerToCustomerResponse = BookingResponse(
    message: 'success',
    data: BookingData(
        name: 'string',
        phone: 'string',
        email: 'user@example.com',
        duration: '',
        address: 'string',
        city: '',
        pickUp: 'Y4LQ',
        dropOff: '7E2J',
        parcelType: 'customer_to_customer',
        user: User(
            id: 'e44fa73e-a06b-48e1-9fc1-f68f6a3afb4d',
            firstName: 'emma',
            lastName: 'emmz',
            email: 'iemmanuel785@gmail.com',
            profilePicUrl: '',
            phone: '+2349137801016'),
        location: Location(
            id: 7,
            location: 'Victoria Island',
            centerName: 'Churchgate Towers',
            address: 'PC 30 Churchgate St, Victoria Island 106104, Lagos',
            noOfCompartment: 0,
            availableSpace: 0,
            isActive: true,
            createdAt: '2022-02-07T21:42:37.085564+01:00'),
        compartment: Compartment(
            id: 13,
            number: '3',
            isAvailable: true,
            isActive: true,
            createdAt: '2022-02-07T13:07:48.117835+01:00',
            size: 1,
            category: 4)));

const customerToCourierResponse = BookingResponse(
    message: 'success',
    data: BookingData(
        name: 'string',
        phone: 'string',
        email: 'user@example.com',
        duration: '',
        address: 'string',
        city: 'lagos',
        pickUp: 'GRKB',
        dropOff: '4BSM',
        parcelType: 'customer_to_courier',
        user: User(
            id: 'e44fa73e-a06b-48e1-9fc1-f68f6a3afb4d',
            firstName: 'emma',
            lastName: 'emmz',
            email: 'iemmanuel785@gmail.com',
            profilePicUrl: '',
            phone: '+2349137801016'),
        location: Location(
            id: 7,
            location: 'Victoria Island',
            centerName: 'Churchgate Towers',
            address: 'PC 30 Churchgate St, Victoria Island 106104, Lagos',
            noOfCompartment: 0,
            availableSpace: 0,
            isActive: true,
            createdAt: '2022-02-07T21:42:37.085564+01:00'),
        compartment: Compartment(
            id: 16,
            number: '6',
            isAvailable: true,
            isActive: true,
            createdAt: '2022-02-07T13:07:48.117921+01:00',
            size: 1,
            category: 4)));
const selfStorageFailure = Failure("Unexpected Server Error");

const mockCenterDistricts = [
  CenterDistrict(name: 'Lekki', centers: [
    ParcelCenter(
        id: 1,
        location: 'Lekki',
        centerName: 'Palms Mall',
        address: 'Palms Mall, Lekki',
        availableSmallSpace: 1,
        availableMediumSpace: 1,
        availableLargeSpace: 0,
        availableXlargeSpace: 0,
        isActive: true,
        createdAt: '2022-02-06T00:36:58.673133Z'),
    ParcelCenter(
        id: 2,
        location: 'Lekki',
        centerName: 'Shoprite',
        address: 'Shoprite, Lekki',
        availableSmallSpace: 1,
        availableMediumSpace: 2,
        availableLargeSpace: 1,
        availableXlargeSpace: 0,
        isActive: true,
        createdAt: '2022-02-06T00:36:58.673204Z'),
    ParcelCenter(
        id: 3,
        location: 'Lekki',
        centerName: 'Prince Ebeano Supermarket',
        address: 'Lekki',
        availableSmallSpace: 1,
        availableMediumSpace: 1,
        availableLargeSpace: 1,
        availableXlargeSpace: 0,
        isActive: true,
        createdAt: '2022-02-06T00:44:16.079924Z')
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

const sizesJson = '''{
  "message": "success",
  "data": [
    {
      "id": 1,
      "name": "small",
      "length": 100,
      "breadth": 100,
      "price": 5000,
      "is_active": true,
      "created_at": "2022-02-05T22:28:58.039038+01:00"
    },
    {
      "id": 2,
      "name": "medium",
      "length": 300,
      "breadth": 300,
      "price": 10000,
      "is_active": true,
      "created_at": "2022-02-06T00:25:13.431472+01:00"
    },
    {
      "id": 3,
      "name": "large",
      "length": 500,
      "breadth": 500,
      "price": 20000,
      "is_active": true,
      "created_at": "2022-02-06T00:33:14.061167+01:00"
    }
  ]
}''';
const sizesResponse = SizesResponse(message: 'success', data: [
  SizeData(id: 1, name: 'small', length: 100, breadth: 100, price: 5000),
  SizeData(id: 2, name: 'medium', length: 300, breadth: 300, price: 10000),
  SizeData(id: 3, name: 'large', length: 500, breadth: 500, price: 20000)
]);
