import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' show MultipartFile;
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
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
  Future<Response<T>> Function(Map<String, dynamic>, String, String) postData,
  Map<String, dynamic> body, [
  AuthToken authToken = const AuthToken.empty(),
]) async {
  try {
    final response =
        await postData(body, authToken.refresh, "Bearer ${authToken.access}");
    return right(response.body!);
  } on FormatException {
    return left(const Failure("Unexpected Server error"));
  } catch (e) {
    print("err: ${e.toString()}");
    return left(Failure(e.toString()));
  }
}

Future<Either<Failure, T>> getData<T>(
  Future<Response<T>> Function(String, String) getData, [
  AuthToken authToken = const AuthToken.empty(),
]) async {
  try {
    final response =
        await getData(authToken.refresh, "Bearer ${authToken.access}");
    return right(response.body!);
  } on FormatException {
    return left(const Failure("Unexpected Server error"));
  } catch (e) {
    print("err: ${e.toString()}");
    return left(Failure(e.toString()));
  }
}

Future<Either<Failure, T>> getDataAuth<T>(
  Future<Response<T>> Function(String, String) getData,
) async {
  try {
    const authToken = AuthToken.placeHolder();
    final response =
        await getData(authToken.refresh, "Bearer ${authToken.access}");
    return right(response.body!);
  } on FormatException {
    return left(const Failure("Unexpected Server error"));
  } catch (e) {
    print("err: ${e.toString()}");
    return left(Failure(e.toString()));
  }
}

Future<Either<Failure, List<T>>> getListDataAuth<T>(
  Future<Response<List<T>>> Function(String, String) getData,
) async {
  try {
    const authToken = AuthToken.placeHolder();
    final response =
        await getData(authToken.refresh, "Bearer ${authToken.access}");
    return right(response.body!);
  } on FormatException {
    return left(const Failure("Unexpected Server error"));
  } catch (e) {
    print("err: ${e.toString()}");
    return left(Failure(e.toString()));
  }
}

Future<Either<Failure, T>> postDataAuth<T>(
  Future<Response<T>> Function(Map<String, dynamic>, String, String) postData,
  Map<String, dynamic> body,
) async {
  try {
    const authToken = AuthToken.placeHolder();
    final response =
        await postData(body, authToken.refresh, "Bearer ${authToken.access}");
    return right(response.body!);
  } on FormatException {
    return left(const Failure("Unexpected Server error"));
  } catch (e) {
    print("err: ${e.toString()}");
    return left(Failure(e.toString()));
  }
}

Future<Either<Failure, T>> postDataPaystack<T>(
  Future<Response<T>> Function(Map<String, dynamic>, String, String) postData,
  Map<String, dynamic> body,
) async {
  try {
    const authToken = AuthToken.paystack();
    final response =
        await postData(body, authToken.refresh, "Bearer ${authToken.access}");
    return right(response.body!);
  } on FormatException {
    return left(const Failure("Unexpected Server error"));
  } catch (e) {
    print("err: ${e.toString()}");
    return left(Failure(e.toString()));
  }
}

Future<Either<Failure, T>> getDataPlacesSearch<T>(
  Future<Response<T>> Function(String, String, String) getData,
  String query,
) async {
  try {
    const authToken = AuthToken.places();
    final response =
        await getData(query, "Bearer ${authToken.access}", authToken.refresh);
    return right(response.body!);
  } on FormatException {
    return left(const Failure("Unexpected Search Error"));
  } catch (e) {
    print("err: ${e.toString()}");
    return left(Failure(e.toString()));
  }
}

Future<Either<Failure, T>> postBytes<T>(
  Future<Response<T>> Function(MultipartFile, String, String) postData,
  MultipartFile file,
) async {
  try {
    const authToken = AuthToken.placeHolder();
    final response =
        await postData(file, authToken.refresh, "Bearer ${authToken.access}");
    return right(response.body!);
  } on FormatException {
    return left(const Failure("Unexpected Search Error"));
  } catch (e) {
    print("err: ${e.toString()}");
    return left(Failure(e.toString()));
  }
}
