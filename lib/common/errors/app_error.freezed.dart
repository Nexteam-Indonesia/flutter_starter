// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppError {

 String get message;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppError(message: $message)';
}


}




/// Adds pattern-matching-related methods to [AppError].
extension AppErrorPatterns on AppError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerError value)?  serverError,TResult Function( ValidationError value)?  validationError,TResult Function( NoInternetError value)?  noInternet,TResult Function( TimeOutError value)?  timeOut,TResult Function( BadCertificateError value)?  badCertificate,TResult Function( BadResponseError value)?  badResponse,TResult Function( UnAuthorizedError value)?  unAuthorized,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError(_that);case ValidationError() when validationError != null:
return validationError(_that);case NoInternetError() when noInternet != null:
return noInternet(_that);case TimeOutError() when timeOut != null:
return timeOut(_that);case BadCertificateError() when badCertificate != null:
return badCertificate(_that);case BadResponseError() when badResponse != null:
return badResponse(_that);case UnAuthorizedError() when unAuthorized != null:
return unAuthorized(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerError value)  serverError,required TResult Function( ValidationError value)  validationError,required TResult Function( NoInternetError value)  noInternet,required TResult Function( TimeOutError value)  timeOut,required TResult Function( BadCertificateError value)  badCertificate,required TResult Function( BadResponseError value)  badResponse,required TResult Function( UnAuthorizedError value)  unAuthorized,}){
final _that = this;
switch (_that) {
case ServerError():
return serverError(_that);case ValidationError():
return validationError(_that);case NoInternetError():
return noInternet(_that);case TimeOutError():
return timeOut(_that);case BadCertificateError():
return badCertificate(_that);case BadResponseError():
return badResponse(_that);case UnAuthorizedError():
return unAuthorized(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerError value)?  serverError,TResult? Function( ValidationError value)?  validationError,TResult? Function( NoInternetError value)?  noInternet,TResult? Function( TimeOutError value)?  timeOut,TResult? Function( BadCertificateError value)?  badCertificate,TResult? Function( BadResponseError value)?  badResponse,TResult? Function( UnAuthorizedError value)?  unAuthorized,}){
final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError(_that);case ValidationError() when validationError != null:
return validationError(_that);case NoInternetError() when noInternet != null:
return noInternet(_that);case TimeOutError() when timeOut != null:
return timeOut(_that);case BadCertificateError() when badCertificate != null:
return badCertificate(_that);case BadResponseError() when badResponse != null:
return badResponse(_that);case UnAuthorizedError() when unAuthorized != null:
return unAuthorized(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int code,  String message)?  serverError,TResult Function( String message,  Map<String, dynamic> errors)?  validationError,TResult Function( String message)?  noInternet,TResult Function( String message)?  timeOut,TResult Function( String message)?  badCertificate,TResult Function( String message)?  badResponse,TResult Function( String message)?  unAuthorized,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError(_that.code,_that.message);case ValidationError() when validationError != null:
return validationError(_that.message,_that.errors);case NoInternetError() when noInternet != null:
return noInternet(_that.message);case TimeOutError() when timeOut != null:
return timeOut(_that.message);case BadCertificateError() when badCertificate != null:
return badCertificate(_that.message);case BadResponseError() when badResponse != null:
return badResponse(_that.message);case UnAuthorizedError() when unAuthorized != null:
return unAuthorized(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int code,  String message)  serverError,required TResult Function( String message,  Map<String, dynamic> errors)  validationError,required TResult Function( String message)  noInternet,required TResult Function( String message)  timeOut,required TResult Function( String message)  badCertificate,required TResult Function( String message)  badResponse,required TResult Function( String message)  unAuthorized,}) {final _that = this;
switch (_that) {
case ServerError():
return serverError(_that.code,_that.message);case ValidationError():
return validationError(_that.message,_that.errors);case NoInternetError():
return noInternet(_that.message);case TimeOutError():
return timeOut(_that.message);case BadCertificateError():
return badCertificate(_that.message);case BadResponseError():
return badResponse(_that.message);case UnAuthorizedError():
return unAuthorized(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int code,  String message)?  serverError,TResult? Function( String message,  Map<String, dynamic> errors)?  validationError,TResult? Function( String message)?  noInternet,TResult? Function( String message)?  timeOut,TResult? Function( String message)?  badCertificate,TResult? Function( String message)?  badResponse,TResult? Function( String message)?  unAuthorized,}) {final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError(_that.code,_that.message);case ValidationError() when validationError != null:
return validationError(_that.message,_that.errors);case NoInternetError() when noInternet != null:
return noInternet(_that.message);case TimeOutError() when timeOut != null:
return timeOut(_that.message);case BadCertificateError() when badCertificate != null:
return badCertificate(_that.message);case BadResponseError() when badResponse != null:
return badResponse(_that.message);case UnAuthorizedError() when unAuthorized != null:
return unAuthorized(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ServerError implements AppError {
  const ServerError({this.code = 400, required this.message});
  

@JsonKey() final  int code;
@override final  String message;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,code,message);

@override
String toString() {
  return 'AppError.serverError(code: $code, message: $message)';
}


}




/// @nodoc


class ValidationError implements AppError {
  const ValidationError({required this.message, final  Map<String, dynamic> errors = const {}}): _errors = errors;
  

@override final  String message;
 final  Map<String, dynamic> _errors;
@JsonKey() Map<String, dynamic> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'AppError.validationError(message: $message, errors: $errors)';
}


}




/// @nodoc


class NoInternetError implements AppError {
  const NoInternetError({this.message = "Anda Tidak terhubung ke internet!"});
  

@override@JsonKey() final  String message;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppError.noInternet(message: $message)';
}


}




/// @nodoc


class TimeOutError implements AppError {
  const TimeOutError({this.message = "Koneksi gagal karena waktu habis!"});
  

@override@JsonKey() final  String message;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeOutError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppError.timeOut(message: $message)';
}


}




/// @nodoc


class BadCertificateError implements AppError {
  const BadCertificateError({this.message = "Sertifikat tidak valid!"});
  

@override@JsonKey() final  String message;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadCertificateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppError.badCertificate(message: $message)';
}


}




/// @nodoc


class BadResponseError implements AppError {
  const BadResponseError({this.message = "Respon tidak valid!"});
  

@override@JsonKey() final  String message;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadResponseError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppError.badResponse(message: $message)';
}


}




/// @nodoc


class UnAuthorizedError implements AppError {
  const UnAuthorizedError({this.message = "Anda tidak memiliki akses!"});
  

@override@JsonKey() final  String message;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnAuthorizedError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppError.unAuthorized(message: $message)';
}


}




// dart format on
