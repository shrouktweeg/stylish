import 'package:e_commerce_udemy/core/networking/api_helper.dart';
import 'package:e_commerce_udemy/core/utils/storage_helper.dart';
import 'package:e_commerce_udemy/features/auth/cubit/login/login_cubit.dart';
import 'package:e_commerce_udemy/features/auth/cubit/signup/signup_cubit.dart';
import 'package:e_commerce_udemy/features/auth/repo/auth_repo.dart';
import 'package:e_commerce_udemy/features/home/cubit/categories/category_cubit.dart';
import 'package:e_commerce_udemy/features/home/cubit/products/products_cubit.dart';
import 'package:e_commerce_udemy/features/home/repos/home_repo.dart';
import 'package:e_commerce_udemy/features/item_details_screen/cubit/product_details_cubit.dart';
import 'package:e_commerce_udemy/features/item_details_screen/repos/product_details_repo.dart';
import 'package:get_it/get_it.dart';

GetIt sl=GetIt.instance;
void setupServiceLocator(){

  ApiHelper dioHelper=ApiHelper();
  // Dio Helper
  sl.registerSingleton<ApiHelper>(dioHelper);

  //storage Helper
  sl.registerLazySingleton<StorageHelper>(()=>StorageHelper());

  // Repo
  sl.registerLazySingleton<AuthRepo>(()=>AuthRepo(sl<ApiHelper>()));
  sl.registerLazySingleton<HomeRepo>(()=>HomeRepo(sl<ApiHelper>()));
  sl.registerLazySingleton<ProductDetailsRepo>(()=>ProductDetailsRepo(sl<ApiHelper>()));

  // Cubit
  sl.registerFactory<LoginCubit>(()=>LoginCubit(sl()));
  sl.registerFactory<SignupCubit>(()=>SignupCubit(sl()));
  sl.registerFactory<CategoryCubit>(()=>CategoryCubit(categoriesRepo: sl()));
  sl.registerFactory<ProductsCubit>(()=>ProductsCubit(productCategory: sl()));
  sl.registerFactory<ProductDetailsCubit>(()=>ProductDetailsCubit(productDetailsRepo: sl()));
}