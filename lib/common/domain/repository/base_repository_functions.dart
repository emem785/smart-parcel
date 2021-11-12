import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

Future<Either<Failure, List<T>>> getListResponse<T>(
  Future<Response<List<T>>> Function() getData,
) async {
  try {
    final response = await getData();
    return right(response.body!);
  } catch (e) {
    return left(Failure(e.toString()));
  }
}

Future<Either<Failure, T>> getResponse<T>(
  Future<Response<T>> Function() getData,
) async {
  try {
    final response = await getData();
    return right(response.body!);
  } catch (e) {
    return left(Failure(e.toString()));
  }
}

Future<Either<Failure, T>> getResponseWithParam<T>(
  Future<Response<T>> Function(int) getData,
  int id,
) async {
  try {
    final response = await getData(id);
    return right(response.body!);
  } catch (e) {
    return left(Failure(e.toString()));
  }
}

Future<Either<Failure, T>> postData<T>(
  Future<Response<T>> Function(Map<String, dynamic>) postData,
  Map<String, dynamic> body,
) async {
  try {
    final response = await postData(body);
    return right(response.body!);
  } catch (e) {
    print("err: ${e.toString()}");
    return left(Failure(e.toString()));
  }
}
