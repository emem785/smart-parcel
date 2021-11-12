import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/models/simple_auth_response.dart';
import 'package:smart_parcel/auth/domain/models/verify_otp_response.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

const registerResponse = '''{
    "status": true,
    "message": "Successful",
    "data": {
        "id": 2,
        "username": "emmz",
        "first_name": "emem",
        "last_name": "emem",
        "email": "emembest10@yahoo.com",
        "phone": "08033333333",
        "is_admin": false,
        "is_staff": false,
        "profile_pics": null,
        "profile_pics_url": null,
        "date_joined": "2021-11-10T19:47:19.079106+01:00"
    }
}''';

const mockUser = User(
    username: "emmz",
    firstName: "emem",
    lastName: "emem",
    email: "emembest10@yahoo.com",
    phone: "08033333333");

const mockPassword = "emem1234";
const mockFailure = Failure("Passwords do not match");

const mockFailureResponse = '''{
    "status": false,
    "message": "Unsuccessful",
    "error": {
        "username": [
            "user with this username already exists."
        ],
        "email": [
            "user with this email already exists."
        ]
    }
}''';

const mockOtpResponse = '''{
    "message": "Please check your email for OTP."
}''';

const mockOtpErr = '''[
  "Please confirm that the email is correct and has not been verified"
]''';

const mockOtp = SimpleAuthResponse(message: "Please check your email for OTP.");
const mockEmail = "emembest10@yahoo.com";
const mockOtpFailure = Failure("Please enter a valid email address");
const mockOtpVerifyResponse = '''{
    "message": "Verification Complete",
    "data": {
        "id": 4,
        "username": "",
        "first_name": "",
        "last_name": "",
        "email": "ememisong62@gmail.com",
        "phone": "",
        "is_admin": false,
        "is_staff": true,
        "profile_pics": null,
        "profile_pics_url": null,
        "date_joined": "2021-11-11T16:12:45.583792+01:00"
    }
}''';
const mockVerifyOtp =
    VerifyOtpResponse(message: "Verification Complete", user: mockUser);

const mockLoginResponse = '''{
    "status": true,
    "message": "Successful",
    "data": {
        "id": 1,
        "first_name": "emem",
        "last_name": "emem",
        "username": "emem",
        "email": "emmanuelisong1@gmail.com",
        "phone": "08033333333",
        "is_admin": false,
        "access": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjM2NjY5NTkxLCJqdGkiOiIzODVjNzM4ZGY2NzM0NmFlOWI0OThkODllYTNlZDFlNCIsInVzZXJfaWQiOjF9.EsG0uUr6eqmMx_ilchQdwfknZYGMVsw1aso7t0nf4Fw",
        "refresh": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzA5OTc5MSwianRpIjoiODZlY2RmNGU1YzgyNDFkNjliNjRlYjExYjQ3MTJiMjciLCJ1c2VyX2lkIjoxfQ.9rNoSvRG2Z3nID6qIGuXNy1543NIOqBu_mrwcJe7wvI"
    }
}''';

const mockAuthToken = AuthToken(
  access:
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjM2NjY5NTkxLCJqdGkiOiIzODVjNzM4ZGY2NzM0NmFlOWI0OThkODllYTNlZDFlNCIsInVzZXJfaWQiOjF9.EsG0uUr6eqmMx_ilchQdwfknZYGMVsw1aso7t0nf4Fw",
  refresh:
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzA5OTc5MSwianRpIjoiODZlY2RmNGU1YzgyNDFkNjliNjRlYjExYjQ3MTJiMjciLCJ1c2VyX2lkIjoxfQ.9rNoSvRG2Z3nID6qIGuXNy1543NIOqBu_mrwcJe7wvI",
);

const mockLoginR =
    LoginResponse(status: true, message: "Successful", data: mockAuthToken);
