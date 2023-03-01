// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;
import 'package:next_starter/common/network/network_info.dart' as _i8;
import 'package:next_starter/common/utils/image_resize.dart' as _i6;
import 'package:next_starter/data/datasources/session/session_source.dart'
    as _i9;
import 'package:next_starter/presentation/routes/app_router.dart' as _i3;

import 'data/datasources/network/network_source.dart' as _i10;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final apiService = _$ApiService();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.Dio>(() => apiService.dio());
  gh.lazySingleton<_i5.ImagePicker>(() => apiService.imagePicker);
  gh.lazySingleton<_i6.ImageResizeUtils>(() => _i6.ImageResizeUtils());
  gh.lazySingleton<_i7.InternetConnectionChecker>(
      () => apiService.internetConnectionChecker());
  gh.lazySingleton<_i8.NetworkInfo>(
      () => _i8.NetworkInfoImpl(gh<_i7.InternetConnectionChecker>()));
  gh.lazySingleton<_i9.SessionSource>(() => _i9.SessionSource());
  return getIt;
}

class _$ApiService extends _i10.ApiService {}
