// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function(String message) unAuthorized,
    required TResult Function() network,
    required TResult Function() connectionTimeOut,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function(String message) database,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? network,
    TResult? Function()? connectionTimeOut,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function(String message)? database,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function(String message)? unAuthorized,
    TResult Function()? network,
    TResult Function()? connectionTimeOut,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function(String message)? database,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_Database value) database,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Network value)? network,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_Database value)? database,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_Database value)? database,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerExceptionCopyWith<$Res> {
  factory _$$_ServerExceptionCopyWith(
          _$_ServerException value, $Res Function(_$_ServerException) then) =
      __$$_ServerExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ServerExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_ServerException>
    implements _$$_ServerExceptionCopyWith<$Res> {
  __$$_ServerExceptionCopyWithImpl(
      _$_ServerException _value, $Res Function(_$_ServerException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ServerException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerException implements _ServerException {
  const _$_ServerException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.serverException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerExceptionCopyWith<_$_ServerException> get copyWith =>
      __$$_ServerExceptionCopyWithImpl<_$_ServerException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function(String message) unAuthorized,
    required TResult Function() network,
    required TResult Function() connectionTimeOut,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function(String message) database,
  }) {
    return serverException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? network,
    TResult? Function()? connectionTimeOut,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function(String message)? database,
  }) {
    return serverException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function(String message)? unAuthorized,
    TResult Function()? network,
    TResult Function()? connectionTimeOut,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function(String message)? database,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_Database value) database,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Network value)? network,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_Database value)? database,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_Database value)? database,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class _ServerException implements ApiException {
  const factory _ServerException({required final String message}) =
      _$_ServerException;

  String get message;
  @JsonKey(ignore: true)
  _$$_ServerExceptionCopyWith<_$_ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnprocessableEntityCopyWith<$Res> {
  factory _$$_UnprocessableEntityCopyWith(_$_UnprocessableEntity value,
          $Res Function(_$_UnprocessableEntity) then) =
      __$$_UnprocessableEntityCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, Map<String, dynamic> errors});
}

/// @nodoc
class __$$_UnprocessableEntityCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_UnprocessableEntity>
    implements _$$_UnprocessableEntityCopyWith<$Res> {
  __$$_UnprocessableEntityCopyWithImpl(_$_UnprocessableEntity _value,
      $Res Function(_$_UnprocessableEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_$_UnprocessableEntity(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_UnprocessableEntity implements _UnprocessableEntity {
  const _$_UnprocessableEntity(
      {required this.message, required final Map<String, dynamic> errors})
      : _errors = errors;

  @override
  final String message;
  final Map<String, dynamic> _errors;
  @override
  Map<String, dynamic> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'ApiException.unprocessableEntity(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnprocessableEntity &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnprocessableEntityCopyWith<_$_UnprocessableEntity> get copyWith =>
      __$$_UnprocessableEntityCopyWithImpl<_$_UnprocessableEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function(String message) unAuthorized,
    required TResult Function() network,
    required TResult Function() connectionTimeOut,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function(String message) database,
  }) {
    return unprocessableEntity(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? network,
    TResult? Function()? connectionTimeOut,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function(String message)? database,
  }) {
    return unprocessableEntity?.call(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function(String message)? unAuthorized,
    TResult Function()? network,
    TResult Function()? connectionTimeOut,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function(String message)? database,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(message, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_Database value) database,
  }) {
    return unprocessableEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Network value)? network,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_Database value)? database,
  }) {
    return unprocessableEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_Database value)? database,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(this);
    }
    return orElse();
  }
}

abstract class _UnprocessableEntity implements ApiException {
  const factory _UnprocessableEntity(
      {required final String message,
      required final Map<String, dynamic> errors}) = _$_UnprocessableEntity;

  String get message;
  Map<String, dynamic> get errors;
  @JsonKey(ignore: true)
  _$$_UnprocessableEntityCopyWith<_$_UnprocessableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthorizedCopyWith<$Res> {
  factory _$$_UnAuthorizedCopyWith(
          _$_UnAuthorized value, $Res Function(_$_UnAuthorized) then) =
      __$$_UnAuthorizedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnAuthorizedCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_UnAuthorized>
    implements _$$_UnAuthorizedCopyWith<$Res> {
  __$$_UnAuthorizedCopyWithImpl(
      _$_UnAuthorized _value, $Res Function(_$_UnAuthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UnAuthorized(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnAuthorized implements _UnAuthorized {
  const _$_UnAuthorized(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.unAuthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthorized &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnAuthorizedCopyWith<_$_UnAuthorized> get copyWith =>
      __$$_UnAuthorizedCopyWithImpl<_$_UnAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function(String message) unAuthorized,
    required TResult Function() network,
    required TResult Function() connectionTimeOut,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function(String message) database,
  }) {
    return unAuthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? network,
    TResult? Function()? connectionTimeOut,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function(String message)? database,
  }) {
    return unAuthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function(String message)? unAuthorized,
    TResult Function()? network,
    TResult Function()? connectionTimeOut,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function(String message)? database,
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
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_Database value) database,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Network value)? network,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_Database value)? database,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_Database value)? database,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements ApiException {
  const factory _UnAuthorized(final String message) = _$_UnAuthorized;

  String get message;
  @JsonKey(ignore: true)
  _$$_UnAuthorizedCopyWith<_$_UnAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkCopyWith<$Res> {
  factory _$$_NetworkCopyWith(
          _$_Network value, $Res Function(_$_Network) then) =
      __$$_NetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_Network>
    implements _$$_NetworkCopyWith<$Res> {
  __$$_NetworkCopyWithImpl(_$_Network _value, $Res Function(_$_Network) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Network implements _Network {
  const _$_Network();

  @override
  String toString() {
    return 'ApiException.network()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Network);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function(String message) unAuthorized,
    required TResult Function() network,
    required TResult Function() connectionTimeOut,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function(String message) database,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? network,
    TResult? Function()? connectionTimeOut,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function(String message)? database,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function(String message)? unAuthorized,
    TResult Function()? network,
    TResult Function()? connectionTimeOut,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function(String message)? database,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_Database value) database,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Network value)? network,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_Database value)? database,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_Database value)? database,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements ApiException {
  const factory _Network() = _$_Network;
}

/// @nodoc
abstract class _$$_ConnectionTimeOutCopyWith<$Res> {
  factory _$$_ConnectionTimeOutCopyWith(_$_ConnectionTimeOut value,
          $Res Function(_$_ConnectionTimeOut) then) =
      __$$_ConnectionTimeOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectionTimeOutCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_ConnectionTimeOut>
    implements _$$_ConnectionTimeOutCopyWith<$Res> {
  __$$_ConnectionTimeOutCopyWithImpl(
      _$_ConnectionTimeOut _value, $Res Function(_$_ConnectionTimeOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConnectionTimeOut implements _ConnectionTimeOut {
  const _$_ConnectionTimeOut();

  @override
  String toString() {
    return 'ApiException.connectionTimeOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ConnectionTimeOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function(String message) unAuthorized,
    required TResult Function() network,
    required TResult Function() connectionTimeOut,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function(String message) database,
  }) {
    return connectionTimeOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? network,
    TResult? Function()? connectionTimeOut,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function(String message)? database,
  }) {
    return connectionTimeOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function(String message)? unAuthorized,
    TResult Function()? network,
    TResult Function()? connectionTimeOut,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function(String message)? database,
    required TResult orElse(),
  }) {
    if (connectionTimeOut != null) {
      return connectionTimeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_Database value) database,
  }) {
    return connectionTimeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Network value)? network,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_Database value)? database,
  }) {
    return connectionTimeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_Database value)? database,
    required TResult orElse(),
  }) {
    if (connectionTimeOut != null) {
      return connectionTimeOut(this);
    }
    return orElse();
  }
}

abstract class _ConnectionTimeOut implements ApiException {
  const factory _ConnectionTimeOut() = _$_ConnectionTimeOut;
}

/// @nodoc
abstract class _$$_BadCertificateCopyWith<$Res> {
  factory _$$_BadCertificateCopyWith(
          _$_BadCertificate value, $Res Function(_$_BadCertificate) then) =
      __$$_BadCertificateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BadCertificateCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_BadCertificate>
    implements _$$_BadCertificateCopyWith<$Res> {
  __$$_BadCertificateCopyWithImpl(
      _$_BadCertificate _value, $Res Function(_$_BadCertificate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BadCertificate implements _BadCertificate {
  const _$_BadCertificate();

  @override
  String toString() {
    return 'ApiException.badCertificate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BadCertificate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function(String message) unAuthorized,
    required TResult Function() network,
    required TResult Function() connectionTimeOut,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function(String message) database,
  }) {
    return badCertificate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? network,
    TResult? Function()? connectionTimeOut,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function(String message)? database,
  }) {
    return badCertificate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function(String message)? unAuthorized,
    TResult Function()? network,
    TResult Function()? connectionTimeOut,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function(String message)? database,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_Database value) database,
  }) {
    return badCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Network value)? network,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_Database value)? database,
  }) {
    return badCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_Database value)? database,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate(this);
    }
    return orElse();
  }
}

abstract class _BadCertificate implements ApiException {
  const factory _BadCertificate() = _$_BadCertificate;
}

/// @nodoc
abstract class _$$_BadResponseCopyWith<$Res> {
  factory _$$_BadResponseCopyWith(
          _$_BadResponse value, $Res Function(_$_BadResponse) then) =
      __$$_BadResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BadResponseCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_BadResponse>
    implements _$$_BadResponseCopyWith<$Res> {
  __$$_BadResponseCopyWithImpl(
      _$_BadResponse _value, $Res Function(_$_BadResponse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BadResponse implements _BadResponse {
  const _$_BadResponse();

  @override
  String toString() {
    return 'ApiException.badResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BadResponse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function(String message) unAuthorized,
    required TResult Function() network,
    required TResult Function() connectionTimeOut,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function(String message) database,
  }) {
    return badResponse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? network,
    TResult? Function()? connectionTimeOut,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function(String message)? database,
  }) {
    return badResponse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function(String message)? unAuthorized,
    TResult Function()? network,
    TResult Function()? connectionTimeOut,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function(String message)? database,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_Database value) database,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Network value)? network,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_Database value)? database,
  }) {
    return badResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_Database value)? database,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(this);
    }
    return orElse();
  }
}

abstract class _BadResponse implements ApiException {
  const factory _BadResponse() = _$_BadResponse;
}

/// @nodoc
abstract class _$$_DatabaseCopyWith<$Res> {
  factory _$$_DatabaseCopyWith(
          _$_Database value, $Res Function(_$_Database) then) =
      __$$_DatabaseCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_DatabaseCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_Database>
    implements _$$_DatabaseCopyWith<$Res> {
  __$$_DatabaseCopyWithImpl(
      _$_Database _value, $Res Function(_$_Database) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Database(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Database implements _Database {
  const _$_Database({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.database(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Database &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatabaseCopyWith<_$_Database> get copyWith =>
      __$$_DatabaseCopyWithImpl<_$_Database>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function(String message) unAuthorized,
    required TResult Function() network,
    required TResult Function() connectionTimeOut,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function(String message) database,
  }) {
    return database(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? network,
    TResult? Function()? connectionTimeOut,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function(String message)? database,
  }) {
    return database?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function(String message)? unAuthorized,
    TResult Function()? network,
    TResult Function()? connectionTimeOut,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function(String message)? database,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_Database value) database,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Network value)? network,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_Database value)? database,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_Database value)? database,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class _Database implements ApiException {
  const factory _Database({required final String message}) = _$_Database;

  String get message;
  @JsonKey(ignore: true)
  _$$_DatabaseCopyWith<_$_Database> get copyWith =>
      throw _privateConstructorUsedError;
}
