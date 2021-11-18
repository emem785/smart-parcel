import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';
import 'package:smart_parcel/delivery/domain/models/booking_response.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/delivery/infrastructure/services/delivery_http_service.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class DeliveryRepository {
  final ChopperClient chopperClient;
  late DeliveryHttpService deliveryHttpService;

  DeliveryRepository(this.chopperClient) {
    deliveryHttpService = DeliveryHttpService.create(chopperClient);
  }

  SingleResponse<BookingResponse> bookSelfStorage({
    required String duration,
    required String user,
    required int location,
  }) {
    final Map<String, dynamic> body = {"duration": duration};
    body.addAll({"user": user, "location": location});
    return postDataAuth(deliveryHttpService.bookSelfStorage, body);
  }

  ListResponse<CenterDistrict> getParcelCenters() {
    return getListDataAuth(deliveryHttpService.getParcelCenters);
  }
}
