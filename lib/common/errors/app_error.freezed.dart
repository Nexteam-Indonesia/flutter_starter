// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppError {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationError,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) timeOut,
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) badResponse,
    required TResult Function(String message) unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult? Function(String message)? noInternet,
    TResult? Function(String message)? timeOut,
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? timeOut,
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? badResponse,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl({this.code = 400, required this.message});

  @override
  @JsonKey()
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'AppError.serverError(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationError,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) timeOut,
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) badResponse,
    required TResult Function(String message) unAuthorized,
  }) {
    return serverError(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult? Function(String message)? noInternet,
    TResult? Function(String message)? timeOut,
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? unAuthorized,
  }) {
    return serverError?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? timeOut,
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? badResponse,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AppError {
  const factory _ServerError({final int code, required final String message}) =
      _$ServerErrorImpl;

  int get code;
  @override
  String get message;
}

/// @nodoc

class _$ValidationErrorImpl implements _ValidationError {
  const _$ValidationErrorImpl(
      {required this.message, final Map<String, dynamic> errors = const {}})
      : _errors = errors;

  @override
  final String message;
  final Map<String, dynamic> _errors;
  @override
  @JsonKey()
  Map<String, dynamic> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'AppError.validationError(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_errors));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationError,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) timeOut,
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) badResponse,
    required TResult Function(String message) unAuthorized,
  }) {
    return validationError(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult? Function(String message)? noInternet,
    TResult? Function(String message)? timeOut,
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? unAuthorized,
  }) {
    return validationError?.call(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? timeOut,
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? badResponse,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(message, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return validationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class _ValidationError implements AppError {
  const factory _ValidationError(
      {required final String message,
      final Map<String, dynamic> errors}) = _$ValidationErrorImpl;

  @override
  String get message;
  Map<String, dynamic> get errors;
}

/// @nodoc

class _$NoInternetImpl implements _NoInternet {
  const _$NoInternetImpl({this.message = "Anda Tidak terhubung ke internet!"});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppError.noInternet(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationError,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) timeOut,
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) badResponse,
    required TResult Function(String message) unAuthorized,
  }) {
    return noInternet(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult? Function(String message)? noInternet,
    TResult? Function(String message)? timeOut,
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? unAuthorized,
  }) {
    return noInternet?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? timeOut,
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? badResponse,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements AppError {
  const factory _NoInternet({final String message}) = _$NoInternetImpl;

  @override
  String get message;
}

/// @nodoc

class _$TimeOutImpl implements _TimeOut {
  const _$TimeOutImpl({this.message = "Koneksi gagal karena waktu habis!"});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppError.timeOut(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeOutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationError,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) timeOut,
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) badResponse,
    required TResult Function(String message) unAuthorized,
  }) {
    return timeOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult? Function(String message)? noInternet,
    TResult? Function(String message)? timeOut,
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? unAuthorized,
  }) {
    return timeOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? timeOut,
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? badResponse,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class _TimeOut implements AppError {
  const factory _TimeOut({final String message}) = _$TimeOutImpl;

  @override
  String get message;
}

/// @nodoc

class _$BadCertificateImpl implements _BadCertificate {
  const _$BadCertificateImpl({this.message = "Sertifikat tidak valid!"});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppError.badCertificate(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadCertificateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationError,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) timeOut,
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) badResponse,
    required TResult Function(String message) unAuthorized,
  }) {
    return badCertificate(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult? Function(String message)? noInternet,
    TResult? Function(String message)? timeOut,
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? unAuthorized,
  }) {
    return badCertificate?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? timeOut,
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? badResponse,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return badCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return badCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate(this);
    }
    return orElse();
  }
}

abstract class _BadCertificate implements AppError {
  const factory _BadCertificate({final String message}) = _$BadCertificateImpl;

  @override
  String get message;
}

/// @nodoc

class _$BadResponseImpl implements _BadResponse {
  const _$BadResponseImpl({this.message = "Respon tidak valid!"});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppError.badResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationError,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) timeOut,
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) badResponse,
    required TResult Function(String message) unAuthorized,
  }) {
    return badResponse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult? Function(String message)? noInternet,
    TResult? Function(String message)? timeOut,
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? unAuthorized,
  }) {
    return badResponse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? timeOut,
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? badResponse,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return badResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(this);
    }
    return orElse();
  }
}

abstract class _BadResponse implements AppError {
  const factory _BadResponse({final String message}) = _$BadResponseImpl;

  @override
  String get message;
}

/// @nodoc

class _$UnAuthorizedImpl implements _UnAuthorized {
  const _$UnAuthorizedImpl({this.message = "Anda tidak memiliki akses!"});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppError.unAuthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationError,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) timeOut,
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) badResponse,
    required TResult Function(String message) unAuthorized,
  }) {
    return unAuthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult? Function(String message)? noInternet,
    TResult? Function(String message)? timeOut,
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? unAuthorized,
  }) {
    return unAuthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? timeOut,
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? badResponse,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements AppError {
  const factory _UnAuthorized({final String message}) = _$UnAuthorizedImpl;

  @override
  String get message;
}
