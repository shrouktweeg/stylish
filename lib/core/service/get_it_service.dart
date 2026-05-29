import 'package:dio/dio.dart';
import 'package:stylish/core/netwoking/api_consumer.dart';
import 'package:stylish/core/netwoking/dio_consumer.dart';
import 'package:stylish/core/service/storage_helper.dart';

import '../../features/auth/presentation/cubit/login/login_cubit.dart';
import '../../features/auth/presentation/cubit/signup/signup_cubit.dart';
import '../../features/auth/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setupServiceLocator() {

  // 1- StorageHelper
  sl.registerLazySingleton<StorageHelper>(() => StorageHelper());

  // 2- Dio
  sl.registerLazySingleton<Dio>(() => Dio());

  // 3- ApiConsumer
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: sl<Dio>()));

  // 4- Repositories
  sl.registerLazySingleton<AuthRepo>(() => AuthRepo(sl<ApiConsumer>()));

  // 5- Cubits
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl<AuthRepo>()));
  sl.registerFactory<SignupCubit>(() => SignupCubit(sl<AuthRepo>()));
}