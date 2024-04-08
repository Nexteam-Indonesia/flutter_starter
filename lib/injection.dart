import 'package:alice/alice.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:next_starter/application/auth/auth_cubit.dart';
import 'package:next_starter/application/bloc/pagination_bloc.dart';
import 'package:next_starter/common/network/network_info.dart';
import 'package:next_starter/common/permission/permission_impl.dart';
import 'package:next_starter/common/storage/shared_pref_storage.dart';
import 'package:next_starter/common/storage/storage.dart';
import 'package:next_starter/common/storage/storage_path.dart';
import 'package:next_starter/common/utils/image_resize.dart';
import 'package:next_starter/data/datasources/network/network_source.dart';
import 'package:next_starter/data/datasources/remote_datasources/auth_remote/auth_remote.dart';
import 'package:next_starter/data/datasources/remote_datasources/auth_remote/auth_remote_impl.dart';
import 'package:next_starter/data/datasources/remote_datasources/post_remote/post_remote.dart';
import 'package:next_starter/data/datasources/remote_datasources/post_remote/post_remote_impl.dart';
import 'package:next_starter/data/datasources/session/session_source.dart';
import 'package:next_starter/data/repositories/auth_repository.dart';
import 'package:next_starter/data/repositories/post_repository.dart';
import 'package:next_starter/presentation/routes/app_router.dart';

import 'common/permission/permission.dart';

final locator = GetIt.instance;

class ApiServiceImpl extends ApiService {}

// TODO: Register harus ada typenya jika dia punya interface contoh:
// locator.registerLazySingleton<PermissionInterface>(() => const KendaliPermission());
Future<void> initializeDependencies(GlobalKey<NavigatorState> navigatorKey) async {
  final apiService = ApiServiceImpl();
  final alice = Alice(showNotification: true, navigatorKey: navigatorKey);

  locator.registerLazySingleton<AppRouter>(() => AppRouter());
  locator.registerLazySingleton<Dio>(
      () => apiService.dio()..interceptors.add(alice.getDioInterceptor()));
  locator.registerLazySingleton<ImagePicker>(() => apiService.imagePicker);
  locator.registerFactoryAsync<StoragePathInterface>(apiService.init);
  locator.registerLazySingleton<ImageResizeUtils>(() => ImageResizeUtils());
  locator.registerLazySingleton<Connectivity>(() => apiService.internetConnectionChecker());
  locator.registerSingleton<NetworkInfo>(NetworkInfoImpl(locator.get()));
  locator.registerLazySingleton<PermissionInterface>(() => const KendaliPermission());
  locator.registerSingleton<SharedPrefStorageInterface>(SharedPreferenceStorage());
  locator.registerLazySingleton<StorageInterface>(
      () => Storage(permission: locator.get(), storagePath: locator.get()));
  locator.registerLazySingleton<SessionSource>(() => SessionSource(shared: locator()));

  // auth
  locator.registerSingleton<AuthRemote>(AuthRemoteImpl(locator.get(), locator.get()));
  locator.registerSingleton(AuthRepository(locator.get()));
  locator.registerFactory(AuthCubit.new);
  // post
  locator.registerSingleton<PostRemote>(PostRemoteImpl(locator.get(), locator.get()));
  locator.registerSingleton(PostRepository(locator.get()));
  locator.registerFactory(PaginationBloc.new);
}
