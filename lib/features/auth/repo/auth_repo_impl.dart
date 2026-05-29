import 'package:dartz/dartz.dart';
import 'package:stylish/core/errors/error_model.dart'; // استيراد الـ ErrorModel
import 'package:stylish/core/errors/exceptions.dart'; // استيراد الـ ServerException
import 'package:stylish/core/netwoking/api_consumer.dart'; // يفضل استخدام الـ abstract class
import 'package:stylish/core/netwoking/end_points.dart';

import '../data/models/tokenModel.dart';
import '../data/models/userModel.dart';

class AuthRepo {
  // يفضل دائماً الاعتماد على الـ Interface (ApiConsumer) بدلاً من الكلاس الملموس مباشرة
  final ApiConsumer _apiConsumer;

  AuthRepo(this._apiConsumer);

  // 🟢 تعديل الـ Left ليعود بـ ErrorModel بدلاً من String عادي
  Future<Either<ErrorModel, TokenModel>> login({
    required String username,
    required String password,
  }) async {
    try {
      // الـ _apiConsumer يعيد الـ data مباشرة (غالباً Map<String, dynamic>)
      final responseData = await _apiConsumer.post(
        EndPoints.loginApi,
        data: {
          'email': username,
          'password': password,
        },
      );

      // طالما لم يرمي الـ Consumer استثناء (Exception)، فالعملية ناجحة 200 أو 201 تلقائياً
      TokenModel tokenModel = TokenModel.fromJson(responseData);
      return Right(tokenModel);

    } on ServerException catch (e) {
      // التقاط الخطأ المنظم والقادم من الـ handleDioException المربوط داخل الـ Consumer
      return Left(e.errorModel);
    } catch (e) {
      // لأي خطأ غير متوقع آخر في الكود (مثل خطأ في الـ Parsing)
      return Left(ErrorModel(statusCode: 500, errorMessage: e.toString()));
    }
  }

  Future<Either<ErrorModel, UserModel>> signUp({
    required String username,
    required String password,
    required String email,
    String avatar = 'https://picsum.photos/800',
  }) async {
    try {
      final responseData = await _apiConsumer.post(
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