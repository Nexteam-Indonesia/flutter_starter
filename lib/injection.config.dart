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
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i7;

import 'application/auth/auth_cubit.dart' as _i21;
import 'application/bloc/pagination_bloc.dart' as _i22;
import 'common/network/network_info.dart' as _i8;
import 'common/permission/permission.dart' as _i9;
import 'common/permission/permission_impl.dart' as _i10;
import 'common/storage/shared_pref_storage.dart' as _i11;
import 'common/storage/storage.dart' as _i14;
import 'common/storage/storage_path.dart' as _i12;
import 'common/utils/image_resize.dart' as _i6;
import 'data/datasources/network/network_source.dart' as _i23;
import 'data/datasources/remote_datasources/auth_remote/auth_remote.dart'
    as _i15;
import 'data/datasources/remote_datasources/auth_remote/auth_remote_impl.dart'
    as _i16;
import 'data/datasources/remote_datasources/post_remote/post_remote.dart'
    as _i18;
import 'data/datasources/remote_datasources/post_remote/post_remote_impl.dart'
    as _i19;
import 'data/datasources/session/session_source.dart' as _i13;
import 'data/repositories/auth_repository.dart' as _i17;
import 'data/repositories/post_repository.dart' as _i20;
import 'presentation/routes/app_router.dart' as _i3;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
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
  gh.lazySingleton<_i7.InternetConnection>(
      () => apiService.internetConnectionChecker());
  gh.lazySingleton<_i8.NetworkInfo>(
      () => _i8.NetworkInfoImpl(gh<_i7.InternetConnection>()));
  gh.lazySingleton<_i9.PermissionInterface>(() => _i10.KendaliPermission());
  gh.lazySingleton<_i11.SharedPrefStorageInterface>(
      () => _i11.SharedPreferenceStorage());
  await gh.factoryAsync<_i12.StoragePathInterface>(
    () => apiService.init(),
    preResolve: true,
  );
  gh.lazySingleton<_i13.SessionSource>(
      () => _i13.SessionSource(storage: gh<_i11.SharedPrefStorageInterface>()));
  gh.lazySingleton<_i14.StorageInterface>(() => _i14.Storage(
        permission: gh<_i9.PermissionInterface>(),
        storagePath: gh<_i12.StoragePathInterface>(),
      ));
  gh.lazySingleton<_i15.AuthRemote>(() => _i16.AuthRemoteImpl(
        gh<_i4.Dio>(),
        gh<_i13.SessionSource>(),
      ));
  gh.lazySingleton<_i17.AuthRepository>(() => _i17.AuthRepository(
        gh<_i8.NetworkInfo>(),
        gh<_i15.AuthRemote>(),
        gh<_i13.SessionSource>(),
      ));
  gh.lazySingleton<_i18.PostRemote>(() => _i19.PostRemoteImpl(
        gh<_i4.Dio>(),
        gh<_i13.SessionSource>(),
      ));
  gh.lazySingleton<_i20.PostRepository>(() => _i20.PostRepository(
        gh<_i8.NetworkInfo>(),
        gh<_i18.PostRemote>(),
      ));
  gh.factory<_i21.AuthCubit>(() => _i21.AuthCubit(gh<_i17.AuthRepository>()));
  gh.factory<_i22.PaginationBloc>(
      () => _i22.PaginationBloc(gh<_i20.PostRepository>()));
  return getIt;
}

class _$ApiService extends _i23.ApiService {}
