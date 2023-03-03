import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/common/base/base_dio_remote_source.dart';
import 'package:next_starter/data/contract/quake_contract.dart';
import 'package:next_starter/data/datasources/session/session_source.dart';
import 'package:next_starter/data/models/quake/quake_model.dart';
import 'package:next_starter/data/models/exception_model.dart';
import 'package:next_starter/data/utils/api_path.dart';
import 'package:next_starter/data/utils/exception_wrapper.dart';

@LazySingleton(as: QuakeContract)
class QuakeRepository extends BaseDioRemoteSource implements QuakeContract {
  QuakeRepository(
    this._dio,
    this._session,
  ) : super(_dio, _session);

  final Dio _dio;
  final SessionSource _session;
  final storage = const FlutterSecureStorage();

  @override
  Future<Either<ExceptionModel, QuakeModel>> getLatestQuake() async {
    try {
      final result = await networkRequest(
        request: (dio) => dio.get(ApiPath.latestQuake),
        onResponse: (json) => QuakeModel.fromJson(json['data']),
        isAuth: false,
      );
      return Right(result);
    } catch (e) {
      return ExceptionWrapper<QuakeModel>().wrapError(e);
    }
  }
}
