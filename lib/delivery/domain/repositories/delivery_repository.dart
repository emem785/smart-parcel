import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';
import 'package:smart_parcel/delivery/domain/models/booking_response.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/delivery/infrastructure/services/delivery_http_service.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class DeliveryRepository {
  final ChopperClient chopperClient;
  final CommonStorageInterface commonStorageInterface;
  late DeliveryHttpService deliveryHttpService;

  DeliveryRepository(this.chopperClient, this.commonStorageInterface) {
    deliveryHttpService = DeliveryHttpService.create(chopperClient);
  }

  SingleResponse<BookingResponse> bookSelfStorage({
    required String duration,
    required String userId,
    required int location,
  }) {
    final Map<String, dynamic> body = {"duration": duration};
    body.addAll({"user": userId, "location": location});
    return postDataAuth(deliveryHttpService.bookSelfStorage, body);
  }

  SingleResponse<BookingResponse> bookCustomerToCustomer({
    required String name,
    required String email,
    required String phone,
    required String userId,
    required int location,
  }) {
    final Map<String, dynamic> body = {
      "name": name,
      "email": email,
      "phone": phone,
      "user": userId,
      "location": location,
    };
    return postDataAuth(deliveryHttpService.bookCustomerToCustomer, body);
  }

  ListResponse<CenterDistrict> getParcelCenters() {
    return getListDataAuth(deliveryHttpService.getParcelCenters);
  }

  Either<Failure, User> getUserFromStorage() {
    try {
      final user = commonStorageInterface.getUser();
      return Right(user);
    } catch (_) {
      return const Left(Failure("No User in storage"));
    }
  }
}
