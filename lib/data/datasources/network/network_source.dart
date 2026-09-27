import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';
import 'package:flavor/flavor.dart';
import 'package:image_picker/image_picker.dart';

abstract class ApiService {
  Dio dio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Flavor.I.getString(Keys.apiUrl) ?? 'https://jsonplaceholder.typicode.com/',
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json; charset=UTF-8",
        },
      ),
    );
    dio.httpClientAdapter = Http2Adapter(
      ConnectionManager(idleTimeout: const Duration(seconds: 15)),
    );

    return dio;
  }

  Connectivity internetConnectionChecker() => Connectivity();

  ImagePicker get imagePicker => ImagePicker();
}
