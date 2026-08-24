// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiException {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiException()';
}


}




/// Adds pattern-matching-related methods to [ApiException].
extension ApiExceptionPatterns on ApiException {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ApiServerException value)?  serverException,TResult Function( ApiUnprocessableEntity value)?  unprocessableEntity,TResult Function( ApiUnAuthorized value)?  unAuthorized,TResult Function( ApiNetworkException value)?  network,TResult Function( ApiTimeOutException value)?  connectionTimeOut,TResult Function( ApiBadCertificate value)?  badCertificate,TResult Function( ApiBadResponse value)?  badResponse,TResult Function( ApiDatabaseException value)?  database,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ApiServerException() when serverException != null:
return serverException(_that);case ApiUnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that);case ApiUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case ApiNetworkException() when network != null:
return network(_that);case ApiTimeOutException() when connectionTimeOut != null:
return connectionTimeOut(_that);case ApiBadCertificate() when badCertificate != null:
return badCertificate(_that);case ApiBadResponse() when badResponse != null:
return badResponse(_that);case ApiDatabaseException() when database != null:
return database(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ApiServerException value)  serverException,required TResult Function( ApiUnprocessableEntity value)  unprocessableEntity,required TResult Function( ApiUnAuthorized value)  unAuthorized,required TResult Function( ApiNetworkException value)  network,required TResult Function( ApiTimeOutException value)  connectionTimeOut,required TResult Function( ApiBadCertificate value)  badCertificate,required TResult Function( ApiBadResponse value)  badResponse,required TResult Function( ApiDatabaseException value)  database,}){
final _that = this;
switch (_that) {
case ApiServerException():
return serverException(_that);case ApiUnprocessableEntity():
return unprocessableEntity(_that);case ApiUnAuthorized():
return unAuthorized(_that);case ApiNetworkException():
return network(_that);case ApiTimeOutException():
return connectionTimeOut(_that);case ApiBadCertificate():
return badCertificate(_that);case ApiBadResponse():
return badResponse(_that);case ApiDatabaseException():
return database(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ApiServerException value)?  serverException,TResult? Function( ApiUnprocessableEntity value)?  unprocessableEntity,TResult? Function( ApiUnAuthorized value)?  unAuthorized,TResult? Function( ApiNetworkException value)?  network,TResult? Function( ApiTimeOutException value)?  connectionTimeOut,TResult? Function( ApiBadCertificate value)?  badCertificate,TResult? Function( ApiBadResponse value)?  badResponse,TResult? Function( ApiDatabaseException value)?  database,}){
final _that = this;
switch (_that) {
case ApiServerException() when serverException != null:
return serverException(_that);case ApiUnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that);case ApiUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case ApiNetworkException() when network != null:
return network(_that);case ApiTimeOutException() when connectionTimeOut != null:
return connectionTimeOut(_that);case ApiBadCertificate() when badCertificate != null:
return badCertificate(_that);case ApiBadResponse() when badResponse != null:
return badResponse(_that);case ApiDatabaseException() when database != null:
return database(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  serverException,TResult Function( String message,  Map<String, dynamic> errors)?  unprocessableEntity,TResult Function( String message)?  unAuthorized,TResult Function()?  network,TResult Function()?  connectionTimeOut,TResult Function()?  badCertificate,TResult Function( String message)?  badResponse,TResult Function( String message)?  database,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ApiServerException() when serverException != null:
return serverException(_that.message);case ApiUnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that.message,_that.errors);case ApiUnAuthorized() when unAuthorized != null:
return unAuthorized(_that.message);case ApiNetworkException() when network != null:
return network();case ApiTimeOutException() when connectionTimeOut != null:
return connectionTimeOut();case ApiBadCertificate() when badCertificate != null:
return badCertificate();case ApiBadResponse() when badResponse != null:
return badResponse(_that.message);case ApiDatabaseException() when database != null:
return database(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  serverException,required TResult Function( String message,  Map<String, dynamic> errors)  unprocessableEntity,required TResult Function( String message)  unAuthorized,required TResult Function()  network,required TResult Function()  connectionTimeOut,required TResult Function()  badCertificate,required TResult Function( String message)  badResponse,required TResult Function( String message)  database,}) {final _that = this;
switch (_that) {
case ApiServerException():
return serverException(_that.message);case ApiUnprocessableEntity():
return unprocessableEntity(_that.message,_that.errors);case ApiUnAuthorized():
return unAuthorized(_that.message);case ApiNetworkException():
return network();case ApiTimeOutException():
return connectionTimeOut();case ApiBadCertificate():
return badCertificate();case ApiBadResponse():
return badResponse(_that.message);case ApiDatabaseException():
return database(_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  serverException,TResult? Function( String message,  Map<String, dynamic> errors)?  unprocessableEntity,TResult? Function( String message)?  unAuthorized,TResult? Function()?  network,TResult? Function()?  connectionTimeOut,TResult? Function()?  badCertificate,TResult? Function( String message)?  badResponse,TResult? Function( String message)?  database,}) {final _that = this;
switch (_that) {
case ApiServerException() when serverException != null:
return serverException(_that.message);case ApiUnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that.message,_that.errors);case ApiUnAuthorized() when unAuthorized != null:
return unAuthorized(_that.message);case ApiNetworkException() when network != null:
return network();case ApiTimeOutException() when connectionTimeOut != null:
return connectionTimeOut();case ApiBadCertificate() when badCertificate != null:
return badCertificate();case ApiBadResponse() when badResponse != null:
return badResponse(_that.message);case ApiDatabaseException() when database != null:
return database(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ApiServerException implements ApiException {
  const ApiServerException({required this.message});
  

 final  String message;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiServerException&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiException.serverException(message: $message)';
}


}




/// @nodoc


class ApiUnprocessableEntity implements ApiException {
  const ApiUnprocessableEntity({required this.message, required final  Map<String, dynamic> errors}): _errors = errors;
  

 final  String message;
 final  Map<String, dynamic> _errors;
 Map<String, dynamic> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiUnprocessableEntity&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ApiException.unprocessableEntity(message: $message, errors: $errors)';
}


}




/// @nodoc


class ApiUnAuthorized implements ApiException {
  const ApiUnAuthorized(this.message);
  

 final  String message;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiUnAuthorized&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiException.unAuthorized(message: $message)';
}


}




/// @nodoc


class ApiNetworkException implements ApiException {
  const ApiNetworkException();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiNetworkException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiException.network()';
}


}




/// @nodoc


class ApiTimeOutException implements ApiException {
  const ApiTimeOutException();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiTimeOutException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiException.connectionTimeOut()';
}


}




/// @nodoc


class ApiBadCertificate implements ApiException {
  const ApiBadCertificate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiBadCertificate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiException.badCertificate()';
}


}




/// @nodoc


class ApiBadResponse implements ApiException {
  const ApiBadResponse(this.message);
  

 final  String message;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiBadResponse&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiException.badResponse(message: $message)';
}


}




/// @nodoc


class ApiDatabaseException implements ApiException {
  const ApiDatabaseException({required this.message});
  

 final  String message;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiDatabaseException&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiException.database(message: $message)';
}


}




// dart format on
