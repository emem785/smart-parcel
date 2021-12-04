import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';

const registerResponse = '''{
    "status": true,
    "message": "Successful",
    "data": {
        "id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
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

const userStringResponse = '''{
        "id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
        "username": "emmz",
        "first_name": "emem",
        "last_name": "emem",
        "email": "emembest10@yahoo.com",
        "phone": "08033333333"
}''';

const mockStorageFailure = Failure("No User in storage");
const mockAuthStorageFailure = Failure("No Auth in storage");
const mockAuthTokenJson = '''{
        "access": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjM2NjY5NTkxLCJqdGkiOiIzODVjNzM4ZGY2NzM0NmFlOWI0OThkODllYTNlZDFlNCIsInVzZXJfaWQiOjF9.EsG0uUr6eqmMx_ilchQdwfknZYGMVsw1aso7t0nf4Fw",
        "refresh": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzA5OTc5MSwianRpIjoiODZlY2RmNGU1YzgyNDFkNjliNjRlYjExYjQ3MTJiMjciLCJ1c2VyX2lkIjoxfQ.9rNoSvRG2Z3nID6qIGuXNy1543NIOqBu_mrwcJe7wvI"
}''';

const getUserResponse = '''{
    "status": true,
    "message": "Successful",
    "data": {
        "id": "ff10a581-4a9e-4589-937b-df4ccb1bded4",
        "username": "emmz",
        "first_name": "emem",
        "last_name": "emem",
        "email": "emembest10@yahoo.com",
        "phone": "08033333333",
        "is_admin": false,
        "is_staff": false,
        "profile_pics": null,
        "profile_pics_url": null,
        "date_joined": "2021-11-12T16:55:42.227945+01:00"
    }
}''';

const userLoginResponse = LoginResponse(
  status: true,
  message: "Successful",
  authToken: null,
  user: User(
      id: "ff10a581-4a9e-4589-937b-df4ccb1bded4",
      firstName: "emem",
      lastName: "emem",
      email: "emembest10@yahoo.com",
      phone: "08033333333"),
);

const tokenErrorResponse = '''{
    "detail": "Given token not valid for any token type",
    "code": "token_not_valid",
    "messages": [
        {
            "token_class": "AccessToken",
            "token_type": "access",
            "message": "Token is invalid or expired"
        }
    ]
}''';

const tokenFailure = Failure("Token is invalid or expired");

const refreshTokenResponse = '''{
    "access": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjM2NjY5NTkxLCJqdGkiOiIzODVjNzM4ZGY2NzM0NmFlOWI0OThkODllYTNlZDFlNCIsInVzZXJfaWQiOjF9.EsG0uUr6eqmMx_ilchQdwfknZYGMVsw1aso7t0nf4Fw",
    "refresh": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzA5OTc5MSwianRpIjoiODZlY2RmNGU1YzgyNDFkNjliNjRlYjExYjQ3MTJiMjciLCJ1c2VyX2lkIjoxfQ.9rNoSvRG2Z3nID6qIGuXNy1543NIOqBu_mrwcJe7wvI"
}''';
