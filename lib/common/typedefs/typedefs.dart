import 'result.dart';

export 'result.dart';

/// An asynchronous operation that yields a value or an `AppError`.
typedef FutureResult<T> = Future<Result<T>>;
