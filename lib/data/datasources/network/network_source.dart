import 'package:dio/dio.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../common/storage/storage_path.dart';

@module
abstract class ApiService {
  @LazySingleton()
  Dio dio() {
    final dio = Dio(
      BaseOptions(
        // baseUrl: 'https://cuaca-gempa-rest-api.vercel.app/',
        baseUrl: Flavor.I.getString(Keys.apiUrl) ??
            'https://jsonplaceholder.typicode.com/',
        sendTimeout: const Duration(minutes: 3),
        connectTimeout: const Duration(minutes: 3),
        receiveTimeout: const Duration(minutes: 3),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    dio.httpClientAdapter = Http2Adapter(
      ConnectionManager(idleTimeout: const Duration(seconds: 15)),
    );
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
    }

    return dio;
  }

  @lazySingleton
  InternetConnection internetConnectionChecker() =>
      InternetConnection.createInstance(
        customCheckOptions: [
          InternetCheckOption(
            uri: Uri.parse(
              Flavor.I.getString(Keys.apiUrl) ??
                  'https://jsonplaceholder.typicode.com/',
            ),
            timeout: const Duration(seconds: 1),
          ),
        ],
        useDefaultOptions: false,
      );

  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();

  @preResolve
  Future<StoragePathInterface> init() async => StoragePath().initialize();
}
