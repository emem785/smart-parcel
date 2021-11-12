import 'package:chopper/chopper.dart';
import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

class JsonSerializableConverter extends JsonConverter {
  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    final jsonResponse = super.convertResponse(response);
    return decode<BodyType, InnerType>(jsonResponse);
  }

  dynamic decode<BodyType, InnerType>(Response<dynamic> response) {
    return response.copyWith<BodyType>(
      body: JsonParser.decode<InnerType>(response.body),
    );
  }
}
