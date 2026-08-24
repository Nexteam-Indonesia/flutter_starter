import '../errors/app_error.dart';

/// The outcome of an operation that may fail with an [AppError].
///
/// Replaces `dartz`'s `Either<AppError, T>`. Being a Dart 3 sealed type, call
/// sites use an exhaustive `switch` instead of `fold`, so the compiler catches
/// an unhandled branch rather than deferring it to runtime.
///
/// ```dart
/// switch (await repo.login(json)) {
///   case Success(:final value) => emit(LoggedIn(value)),
///   case Failure(:final error) => emit(AuthError(error.message)),
/// }
/// ```
sealed class Result<T> {
  const Result();

  const factory Result.success(T value) = Success<T>;

  const factory Result.failure(AppError error) = Failure<T>;

  /// Whether this result carries a value.
  bool get isSuccess => this is Success<T>;

  /// Whether this result carries an [AppError].
  bool get isFailure => this is Failure<T>;

  /// The value when successful, otherwise `null`.
  T? get valueOrNull => switch (this) {
        Success<T>(:final value) => value,
        Failure<T>() => null,
      };

  /// The error when failed, otherwise `null`.
  AppError? get errorOrNull => switch (this) {
        Success<T>() => null,
        Failure<T>(:final error) => error,
      };

  /// Transforms a successful value, leaving a failure untouched.
  Result<R> map<R>(R Function(T value) transform) => switch (this) {
        Success<T>(:final value) => Success<R>(transform(value)),
        Failure<T>(:final error) => Failure<R>(error),
      };
}

/// A [Result] holding the value produced by a successful operation.
final class Success<T> extends Result<T> {
  const Success(this.value);

  final T value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Success<T> && other.value == value;

  @override
  int get hashCode => Object.hash(Success, value);

  @override
  String toString() => 'Success<$T>($value)';
}

/// A [Result] holding the [AppError] that caused an operation to fail.
final class Failure<T> extends Result<T> {
  const Failure(this.error);

  final AppError error;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Failure<T> && other.error == error;

  @override
  int get hashCode => Object.hash(Failure, error);

  @override
  String toString() => 'Failure<$T>($error)';
}
