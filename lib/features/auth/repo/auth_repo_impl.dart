import 'package:dartz/dartz.dart';
import 'package:stylish/core/errors/error_model.dart'; // استيراد الـ ErrorModel
import 'package:stylish/core/errors/exceptions.dart'; // استيراد الـ ServerException
import 'package:stylish/core/netwoking/api_consumer.dart'; // يفضل استخدام الـ abstract class
import 'package:stylish/core/netwoking/end_points.dart';
import 'package:stylish/core/service/secure_storage_service.dart';
import 'package:stylish/core/service/shared_pref_service.dart';
import 'package:stylish/features/auth/repo/auth_repo.dart';

import '../data/models/tokenModel.dart';
import '../data/models/userModel.dart';

class AuthRepoImpl implements AuthRepo {
  // يفضل دائماً الاعتماد على الـ Interface (ApiConsumer) بدلاً من الكلاس الملموس مباشرة
  final ApiConsumer apiConsumer;
  final SecureStorageService secureStorage; // إضافة الخدمة هنا
  final SharedPrefService sharedPrefService; // إضافة الخدمة هنا

  AuthRepoImpl({required this.sharedPrefService, required this.apiConsumer,required this.secureStorage});

  // 🟢 تعديل الـ Left ليعود بـ ErrorModel بدلاً من String عادي
  @override
  Future<Either<ErrorModel, TokenModel>> login({
    required String username,
    required String password,
  }) async {
    try {
      final responseData = await apiConsumer.post(
        EndPoints.loginApi,
        data: {'email': username, 'password': password},
      );

      TokenModel tokenModel = TokenModel.fromJson(responseData);

      // ✅ الحفظ يتم هنا داخل الـ Repo
      await secureStorage.saveAccessToken(
        accessToken: tokenModel.accessToken,
        refreshToken: tokenModel.refreshToken,
      );
      await sharedPrefService.setLoggedIn(true);

      return Right(tokenModel);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    } catch (e) {
      return Left(ErrorModel(statusCode: 500, errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorModel, UserModel>> signUp({
    required String username,
    required String password,
    required String email,
    String avatar = 'https://picsum.photos/800',
  }) async {
    try {
      final responseData = await apiConsumer.post(
        '${EndPoints.allUsersApi}/',
        data: {
          "name": username,
          'email': email,
          'password': password,
          'avatar': avatar,
        },
      );

      UserModel userModel = UserModel.fromJson(responseData);
      return Right(userModel);

    } on ServerException catch (e) {
      return Left(e.errorModel);
    } catch (e) {
      return Left(ErrorModel(statusCode: 500, errorMessage: e.toString()));
    }
  }
}