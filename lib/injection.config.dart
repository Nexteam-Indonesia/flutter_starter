// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;

import 'application/bloc/pagination_bloc.dart' as _i17;
import 'common/network/network_info.dart' as _i8;
import 'common/utils/image_resize.dart' as _i6;
import 'data/datasources/network/network_source.dart' as _i18;
import 'data/datasources/remote_datasources/post_remote/post_remote.dart'
    as _i10;
import 'data/datasources/remote_datasources/post_remote/post_remote_impl.dart'
    as _i11;
import 'data/datasources/remote_datasources/quake_remote/quake_remote.dart'
    as _i13;
import 'data/datasources/remote_datasources/quake_remote/quake_remote_impl.dart'
    as _i14;
import 'data/datasources/session/session_source.dart' as _i9;
import 'data/repositories/post_repository.dart' as _i12;
import 'data/repositories/quake_repository.dart' as _i15;
import 'presentation/pages/home/cubit/home_cubit.dart' as _i16;
import 'presentation/routes/app_router.dart' as _i3;

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
  gh.lazySingleton<_i10.PostRemote>(() => _i11.PostRemoteImpl(
        gh<_i4.Dio>(),
        gh<_i9.SessionSource>(),
      ));
  gh.lazySingleton<_i12.PostRepository>(() => _i12.PostRepository(
        gh<_i8.NetworkInfo>(),
        gh<_i10.PostRemote>(),
      ));
  gh.lazySingleton<_i13.QuakeRemote>(() => _i14.QuakeRemoteImpl(
        gh<_i4.Dio>(),
        gh<_i9.SessionSource>(),
      ));
  gh.lazySingleton<_i15.QuakeRepository>(() => _i15.QuakeRepository(
        gh<_i13.QuakeRemote>(),
        gh<_i8.NetworkInfo>(),
      ));
  gh.factory<_i16.HomeCubit>(() => _i16.HomeCubit(gh<_i15.QuakeRepository>()));
  gh.factory<_i17.PaginationBloc>(
      () => _i17.PaginationBloc(gh<_i12.PostRepository>()));
  return getIt;
}

class _$ApiService extends _i18.ApiService {}
