import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';
import 'package:smart_parcel/parcels/domain/models/parcel_response.dart';
import 'package:smart_parcel/parcels/infrastructure/services/parcel_http_service.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class ParcelRepository {
  final ChopperClient chopperClient;
  final CommonStorageInterface commonStorageInterface;
  late ParcelHttpService parcelHttpService;

  ParcelRepository(this.chopperClient, this.commonStorageInterface) {
    parcelHttpService = ParcelHttpService.create(chopperClient);
  }

  SingleResponse<ParcelResponse> getParcelHistory() {
    return getDataAuth(parcelHttpService.getParcelHistory);
  }
}
