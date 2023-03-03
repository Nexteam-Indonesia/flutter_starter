import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:next_starter/data/models/validation_exception_model.dart';

import '../models/exception_model.dart';

class ExceptionWrapper<R extends Object> {
  Left<ExceptionModel, R> wrapError(e) {
    if (e is DioError) {
      final message = e.response?.data['message'];
      if (e.response?.statusCode == 422) {
        return Left(ValidationExceptionModel(message ?? e.message, e.response?.data['data'] as Map<String, dynamic>));
      } else {
        return Left(ExceptionModel(message ?? e.message));
      }
    } else {
      return Left(ExceptionModel(e.toString()));
    }
  }
}
