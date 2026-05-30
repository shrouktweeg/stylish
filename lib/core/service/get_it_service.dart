import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish/core/netwoking/api_consumer.dart';
import 'package:stylish/core/netwoking/dio_consumer.dart';
import 'package:stylish/core/service/secure_storage_service.dart';
import 'package:stylish/core/service/shared_pref_service.dart';

import '../../features/auth/presentation/cubit/login/login_cubit.dart';
import '../../features/auth/presentation/cubit/signup/signup_cubit.dart';
import '../../features/auth/repo/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> setupServiceLocator() async{

  // 1- StorageHelper
  sl.registerLazySingleton<SecureStorageService>(() => SecureStorageService());

  //2- shared pref
  final pref=await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPrefService>(()=>SharedPrefService(pref));

  // 2- Dio
  sl.registerLazySingleton<Dio>(() => Dio());

  // 3- ApiConsumer
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: sl<Dio>()));

  // 4- Repositories
  sl.registerLazySingleton<AuthRepoImpl>(() => AuthRepoImpl(
      apiConsumer: sl<ApiConsumer>(),
      secureStorage: sl<SecureStorageService>(),
    sharedPrefService:sl<SharedPrefService>()

  ));

  // 5- Cubits
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl<AuthRepoImpl>()));
  sl.registerFactory<SignupCubit>(() => SignupCubit(sl<AuthRepoImpl>()));
}