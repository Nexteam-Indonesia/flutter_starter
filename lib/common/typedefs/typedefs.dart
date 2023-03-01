import 'package:dartz/dartz.dart';

import '../errors/app_error.dart';

typedef EitherResponse<T> = Future<Either<AppError, T>>;
