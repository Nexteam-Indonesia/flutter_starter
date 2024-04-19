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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    required TResult Function(String message) badResponse,
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
    TResult? Function(String message)? badResponse,
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
    TResult Function(String message)? badResponse,
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
abstract class _$$ServerExceptionImplCopyWith<$Res> {
  factory _$$ServerExceptionImplCopyWith(_$ServerExceptionImpl value,
          $Res Function(_$ServerExceptionImpl) then) =
      __$$ServerExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerExceptionImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ServerExceptionImpl>
    implements _$$ServerExceptionImplCopyWith<$Res> {
  __$$ServerExceptionImplCopyWithImpl(
      _$ServerExceptionImpl _value, $Res Function(_$ServerExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerExceptionImpl implements _ServerException {
  const _$ServerExceptionImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.serverException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      __$$ServerExceptionImplCopyWithImpl<_$ServerExceptionImpl>(
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
    required TResult Function(String message) badResponse,
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
    TResult? Function(String message)? badResponse,
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
    TResult Function(String message)? badResponse,
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
      _$ServerExceptionImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnprocessableEntityImplCopyWith<$Res> {
  factory _$$UnprocessableEntityImplCopyWith(_$UnprocessableEntityImpl value,
          $Res Function(_$UnprocessableEntityImpl) then) =
      __$$UnprocessableEntityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, Map<String, dynamic> errors});
}

/// @nodoc
class __$$UnprocessableEntityImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$UnprocessableEntityImpl>
    implements _$$UnprocessableEntityImplCopyWith<$Res> {
  __$$UnprocessableEntityImplCopyWithImpl(_$UnprocessableEntityImpl _value,
      $Res Function(_$UnprocessableEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_$UnprocessableEntityImpl(
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

class _$UnprocessableEntityImpl implements _UnprocessableEntity {
  const _$UnprocessableEntityImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnprocessableEntityImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnprocessableEntityImplCopyWith<_$UnprocessableEntityImpl> get copyWith =>
      __$$UnprocessableEntityImplCopyWithImpl<_$UnprocessableEntityImpl>(
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
    required TResult Function(String message) badResponse,
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
    TResult? Function(String message)? badResponse,
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
    TResult Function(String message)? badResponse,
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
      required final Map<String, dynamic> errors}) = _$UnprocessableEntityImpl;

  String get message;
  Map<String, dynamic> get errors;
  @JsonKey(ignore: true)
  _$$UnprocessableEntityImplCopyWith<_$UnprocessableEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthorizedImplCopyWith<$Res> {
  factory _$$UnAuthorizedImplCopyWith(
          _$UnAuthorizedImpl value, $Res Function(_$UnAuthorizedImpl) then) =
      __$$UnAuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnAuthorizedImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$UnAuthorizedImpl>
    implements _$$UnAuthorizedImplCopyWith<$Res> {
  __$$UnAuthorizedImplCopyWithImpl(
      _$UnAuthorizedImpl _value, $Res Function(_$UnAuthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnAuthorizedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnAuthorizedImpl implements _UnAuthorized {
  const _$UnAuthorizedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.unAuthorized(message: $message)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnAuthorizedImplCopyWith<_$UnAuthorizedImpl> get copyWith =>
      __$$UnAuthorizedImplCopyWithImpl<_$UnAuthorizedImpl>(this, _$identity);

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
    required TResult Function(String message) badResponse,
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
    TResult? Function(String message)? badResponse,
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
    TResult Function(String message)? badResponse,
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
  const factory _UnAuthorized(final String message) = _$UnAuthorizedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UnAuthorizedImplCopyWith<_$UnAuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkImplCopyWith<$Res> {
  factory _$$NetworkImplCopyWith(
          _$NetworkImpl value, $Res Function(_$NetworkImpl) then) =
      __$$NetworkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$NetworkImpl>
    implements _$$NetworkImplCopyWith<$Res> {
  __$$NetworkImplCopyWithImpl(
      _$NetworkImpl _value, $Res Function(_$NetworkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkImpl implements _Network {
  const _$NetworkImpl();

  @override
  String toString() {
    return 'ApiException.network()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkImpl);
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
    required TResult Function(String message) badResponse,
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
    TResult? Function(String message)? badResponse,
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
    TResult Function(String message)? badResponse,
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
  const factory _Network() = _$NetworkImpl;
}

/// @nodoc
abstract class _$$ConnectionTimeOutImplCopyWith<$Res> {
  factory _$$ConnectionTimeOutImplCopyWith(_$ConnectionTimeOutImpl value,
          $Res Function(_$ConnectionTimeOutImpl) then) =
      __$$ConnectionTimeOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionTimeOutImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ConnectionTimeOutImpl>
    implements _$$ConnectionTimeOutImplCopyWith<$Res> {
  __$$ConnectionTimeOutImplCopyWithImpl(_$ConnectionTimeOutImpl _value,
      $Res Function(_$ConnectionTimeOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectionTimeOutImpl implements _ConnectionTimeOut {
  const _$ConnectionTimeOutImpl();

  @override
  String toString() {
    return 'ApiException.connectionTimeOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectionTimeOutImpl);
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
    required TResult Function(String message) badResponse,
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
    TResult? Function(String message)? badResponse,
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
    TResult Function(String message)? badResponse,
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
  const factory _ConnectionTimeOut() = _$ConnectionTimeOutImpl;
}

/// @nodoc
abstract class _$$BadCertificateImplCopyWith<$Res> {
  factory _$$BadCertificateImplCopyWith(_$BadCertificateImpl value,
          $Res Function(_$BadCertificateImpl) then) =
      __$$BadCertificateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadCertificateImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$BadCertificateImpl>
    implements _$$BadCertificateImplCopyWith<$Res> {
  __$$BadCertificateImplCopyWithImpl(
      _$BadCertificateImpl _value, $Res Function(_$BadCertificateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BadCertificateImpl implements _BadCertificate {
  const _$BadCertificateImpl();

  @override
  String toString() {
    return 'ApiException.badCertificate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadCertificateImpl);
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
    required TResult Function(String message) badResponse,
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
    TResult? Function(String message)? badResponse,
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
    TResult Function(String message)? badResponse,
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
  const factory _BadCertificate() = _$BadCertificateImpl;
}

/// @nodoc
abstract class _$$BadResponseImplCopyWith<$Res> {
  factory _$$BadResponseImplCopyWith(
          _$BadResponseImpl value, $Res Function(_$BadResponseImpl) then) =
      __$$BadResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BadResponseImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$BadResponseImpl>
    implements _$$BadResponseImplCopyWith<$Res> {
  __$$BadResponseImplCopyWithImpl(
      _$BadResponseImpl _value, $Res Function(_$BadResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BadResponseImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadResponseImpl implements _BadResponse {
  const _$BadResponseImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.badResponse(message: $message)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadResponseImplCopyWith<_$BadResponseImpl> get copyWith =>
      __$$BadResponseImplCopyWithImpl<_$BadResponseImpl>(this, _$identity);

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
    required TResult Function(String message) badResponse,
    required TResult Function(String message) database,
  }) {
    return badResponse(message);
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
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? database,
  }) {
    return badResponse?.call(message);
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
    TResult Function(String message)? badResponse,
    TResult Function(String message)? database,
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
  const factory _BadResponse(final String message) = _$BadResponseImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$BadResponseImplCopyWith<_$BadResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatabaseImplCopyWith<$Res> {
  factory _$$DatabaseImplCopyWith(
          _$DatabaseImpl value, $Res Function(_$DatabaseImpl) then) =
      __$$DatabaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DatabaseImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$DatabaseImpl>
    implements _$$DatabaseImplCopyWith<$Res> {
  __$$DatabaseImplCopyWithImpl(
      _$DatabaseImpl _value, $Res Function(_$DatabaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DatabaseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DatabaseImpl implements _Database {
  const _$DatabaseImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.database(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseImplCopyWith<_$DatabaseImpl> get copyWith =>
      __$$DatabaseImplCopyWithImpl<_$DatabaseImpl>(this, _$identity);

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
    required TResult Function(String message) badResponse,
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
    TResult? Function(String message)? badResponse,
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
    TResult Function(String message)? badResponse,
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
  const factory _Database({required final String message}) = _$DatabaseImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DatabaseImplCopyWith<_$DatabaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
