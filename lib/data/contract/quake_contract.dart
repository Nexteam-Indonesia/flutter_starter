import 'package:dartz/dartz.dart';
import 'package:next_starter/data/models/exception_model.dart';
import 'package:next_starter/data/models/quake/quake_model.dart';

abstract class QuakeContract {
  Future<Either<ExceptionModel, QuakeModel>> getLatestQuake();
}
