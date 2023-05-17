import 'package:dio/dio.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class ApiService {
  @LazySingleton()
  Dio dio() {
    final dio = Dio(
      BaseOptions(
        // baseUrl: 'https://cuaca-gempa-rest-api.vercel.app/',
        baseUrl: Flavor.I.getString(Keys.apiUrl) ?? 'https://jsonplaceholder.typicode.com/',
        sendTimeout: const Duration(milliseconds: 1000 * 60 * 3),
        connectTimeout: const Duration(milliseconds: 1000 * 60 * 3),
        receiveTimeout: const Duration(milliseconds: 1000 * 60 * 3),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
    }

    return dio;
  }

  @lazySingleton
  InternetConnectionChecker internetConnectionChecker() => InternetConnectionChecker();

  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();
}
