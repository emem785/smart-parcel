import 'package:smart_parcel/parcels/domain/models/customer_to_customer.dart';
import 'package:smart_parcel/parcels/domain/models/cutomer_to_courier.dart';
import 'package:smart_parcel/parcels/domain/models/parcel_data.dart';
import 'package:smart_parcel/parcels/domain/models/parcel_response.dart';
import 'package:smart_parcel/parcels/domain/models/parcel_stats.dart';
import 'package:smart_parcel/parcels/domain/models/self_storage.dart';

const getParcelJson2 = '''{
    "status": true,
    "message": "Successful",
    "data": {
        "id": "29727e2f-b6b4-4cde-99fc-eb5de36413c8",
        "first_name": "emem",
        "last_name": "emem",
        "email": "iemmanuel785@gmail.com",
        "phone": "+2349137801016",
        "role": "user",
        "address": null,
        "profile_pics": null,
        "profile_pics_url": null,
        "firebase_key": "f0TqqVZ-TQa-Hzm0p5uzGD:APA91bH0gUg041EP_Y7lFDff4Z6RqypNq745UZLggQk06UY84MJLVByt6D2gaV_04_gy-xnlMv3yoVk6ZGd_1Pcp-lCku8Uns-7tHzUioH8_xY-gZvdG1Z_tYGuv4KN7yuzhThQmopbE",
        "date_joined": "2021-12-23T10:18:06.417998+01:00",
        "self_storages": [
            {
                "id": 11,
                "duration": "12",
                "location__address": "18,oyekan Street, Surulere, Lagos, Nigeria",
                "status": "pending",
                "drop_off": "8MFT",
                "pick_up": "9HO9",
                "created_at": "2021-12-29T13:30:35.942771Z"
            }
        ],
        "customer_to_customer": [
            {
                "id": 9,
                "name": "mary",
                "email": "emembest10@yahoo.com",
                "phone": "08044755575",
                "location__address": "10, Fola Osibo Road, Lekki, Lagos, Nigeria",
                "status": "pending",
                "drop_off": "WM10",
                "pick_up": "44TP",
                "created_at": "2021-12-29T09:27:02.192370Z"
            },
            {
                "id": 12,
                "name": "trey",
                "email": "trey@young.com",
                "phone": "+2349155588724",
                "location__address": "1-3, Ijaoye Street, Yaba, Nigeria",
                "status": "pending",
                "drop_off": "JIZ5",
                "pick_up": "8148",
                "created_at": "2021-12-29T13:36:15.050523Z"
            }
        ],
        "customer_to_courier": [          
            {
                "id": 8,
                "name": "trial",
                "email": "iemmanuel785@gmail.com",
                "phone": "09137801016",
                "location__address": "6 Araoti Street, Yaba, Lagos, Nigeria",
                "city": "lagos",
                "status": "assigned",
                "drop_off": "HU2E",
                "pick_up": "AMTF",
                "created_at": "2021-12-28T13:27:24.680994Z"
            },
            {
                "id": 10,
                "name": "person",
                "email": "emembest10@yahoo.com",
                "phone": "+2349137801016",
                "location__address": "18,oyekan Street, Surulere, Lagos, Nigeria",
                "city": "lagos",
                "status": "assigned",
                "drop_off": "Q73H",
                "pick_up": "3NVJ",
                "created_at": "2021-12-29T13:27:55.866595Z"
            }
        ],
        "payment_history": [          
            {
                "id": 11,
                "user_id": "29727e2f-b6b4-4cde-99fc-eb5de36413c8",
                "amount": 1000.0,
                "payment_for": "self_storage",
                "reference": "tzyccci21w",
                "currency": "NGN",
                "transaction_date": "2021-12-29T13:30:15Z",
                "is_active": true,
                "created_at": "2021-12-29T13:30:35.939240Z"
            },
            {
                "id": 12,
                "user_id": "29727e2f-b6b4-4cde-99fc-eb5de36413c8",
                "amount": 1000.0,
                "payment_for": "customer_to_customer",
                "reference": "ilnnqcaz2m",
                "currency": "NGN",
                "transaction_date": "2021-12-29T13:35:52Z",
                "is_active": true,
                "created_at": "2021-12-29T13:36:15.046415Z"
            }
        ],
        "parcel_stats": {
            "pending": 7,
            "dropped": 0,
            "assigned": 5,
            "completed": 0
        }
    }
}''';

// const parcelResponse = ParcelResponse(
//     status: true,
//     message: 'Successful',
//     data: ParcelData(selfStorages: [
//       SelfStorage(
//           id: 11,
//           userId: '',
//           duration: '12',
//           locationId: 0,
//           status: 'pending',
//           isActive: false,
//           createdAt: '2021-12-29T13:30:35.942771Z',
//           address: '18,oyekan Street, Surulere, Lagos, Nigeria',
//           pickUp: '9HO9',
//           dropOff: '8MFT')
//     ], customerToCustomer: [
//       CustomerToCustomer(
//           id: 9,
//           userId: '',
//           name: 'mary',
//           email: 'emembest10@yahoo.com',
//           phone: '08044755575',
//           locationId: 0,
//           status: 'pending',
//           address: '10, Fola Osibo Road, Lekki, Lagos, Nigeria',
//           dropOff: 'WM10',
//           pickUp: '44TP',
//           isActive: false,
//           createdAt: '2021-12-29T09:27:02.192370Z'),
//       CustomerToCustomer(
//           id: 12,
//           userId: '',
//           name: 'trey',
//           email: 'trey@young.com',
//           phone: '+2349155588724',
//           locationId: 0,
//           status: 'pending',
//           address: '1-3, Ijaoye Street, Yaba, Nigeria',
//           dropOff: 'JIZ5',
//           pickUp: '8148',
//           isActive: false,
//           createdAt: '2021-12-29T13:36:15.050523Z')
//     ], customerToCourier: [
//       CustomerToCourier(
//           id: 8,
//           name: 'trial',
//           email: 'iemmanuel785@gmail.com',
//           phone: '09137801016',
//           locationAddress: '6 Araoti Street, Yaba, Lagos, Nigeria',
//           city: 'lagos',
//           status: 'assigned',
//           dropOff: 'HU2E',
//           pickUp: 'AMTF',
//           createdAt: '2021-12-28T13:27:24.680994Z'),
//       CustomerToCourier(
//           id: 10,
//           name: 'person',
//           email: 'emembest10@yahoo.com',
//           phone: '+2349137801016',
//           locationAddress: '18,oyekan Street, Surulere, Lagos, Nigeria',
//           city: 'lagos',
//           status: 'assigned',
//           dropOff: 'Q73H',
//           pickUp: '3NVJ',
//           createdAt: '2021-12-29T13:27:55.866595Z')
//     ]));

const parcelResponse = ParcelResponse(
    status: true,
    message: 'Successful',
    data: ParcelData(
        selfStorages: [
          SelfStorage(
              id: 11,
              userId: '',
              duration: '12',
              locationId: 0,
              status: 'pending',
              isActive: false,
              createdAt: '2021-12-29T13:30:35.942771Z',
              address: '18,oyekan Street, Surulere, Lagos, Nigeria',
              pickUp: '9HO9',
              dropOff: '8MFT')
        ],
        customerToCustomer: [
          CustomerToCustomer(
              id: 9,
              userId: '',
              name: 'mary',
              email: 'emembest10@yahoo.com',
              phone: '08044755575',
              locationId: 0,
              status: 'pending',
              address: '10, Fola Osibo Road, Lekki, Lagos, Nigeria',
              dropOff: 'WM10',
              pickUp: '44TP',
              isActive: false,
              createdAt: '2021-12-29T09:27:02.192370Z'),
          CustomerToCustomer(
              id: 12,
              userId: '',
              name: 'trey',
              email: 'trey@young.com',
              phone: '+2349155588724',
              locationId: 0,
              status: 'pending',
              address: '1-3, Ijaoye Street, Yaba, Nigeria',
              dropOff: 'JIZ5',
              pickUp: '8148',
              isActive: false,
              createdAt: '2021-12-29T13:36:15.050523Z')
        ],
        customerToCourier: [
          CustomerToCourier(
              id: 8,
              name: 'trial',
              email: 'iemmanuel785@gmail.com',
              phone: '09137801016',
              locationAddress: '6 Araoti Street, Yaba, Lagos, Nigeria',
              city: 'lagos',
              status: 'assigned',
              dropOff: 'HU2E',
              pickUp: 'AMTF',
              createdAt: '2021-12-28T13:27:24.680994Z'),
          CustomerToCourier(
              id: 10,
              name: 'person',
              email: 'emembest10@yahoo.com',
              phone: '+2349137801016',
              locationAddress: '18,oyekan Street, Surulere, Lagos, Nigeria',
              city: 'lagos',
              status: 'assigned',
              dropOff: 'Q73H',
              pickUp: '3NVJ',
              createdAt: '2021-12-29T13:27:55.866595Z')
        ],
        parcelStats: ParcelStats(
          pending: 7,
          dropped: 0,
          assigned: 5,
          completed: 0,
        )));
