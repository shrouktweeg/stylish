import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_udemy/core/networking/api_end_points.dart';
import 'package:e_commerce_udemy/core/networking/api_helper.dart';
import 'package:e_commerce_udemy/core/utils/storage_helper.dart';
import 'package:e_commerce_udemy/features/auth/models/tokenModel.dart';
import 'package:e_commerce_udemy/features/auth/models/userModel.dart';

import '../../../core/utils/service_locator.dart';

class AuthRepo{
 final ApiHelper _apiHelper;
  AuthRepo( this._apiHelper);
Future<Either<String,TokenModel>>login({required String username,required String password})async{
  try{
    Response response=await _apiHelper.postRequest(endPoint: ApiEndPoints.loginApi, data: {
      'email':username,
      'password':password
    });
    if(response.statusCode==200||response.statusCode==201){
      TokenModel tokenModel=TokenModel.fromJson(response.data);
       await sl<StorageHelper>().saveAccessToken(tokenModel.accessToken);
       await sl<StorageHelper>().saveRefreshToken(tokenModel.refreshToken);
        return Right(tokenModel);


    }else{
      return Left(response.toString());
    }
  }
  catch(e){
    if(e is DioException){
      return Left(e.message ?? "Unknown error");
    }
    return Left(e.toString());
  }

}
Future<Either<String,UserModel>>signUp({required String username,required String password,required String email,String avatar='https://picsum.photos/800'})async{
  try{
    Response response=await _apiHelper.postRequest(endPoint: '${ApiEndPoints.allUsersApi}/', data: {
      "name": username,
      'email':email,
      'password':password,
      'avatar':avatar,
    });
    if(response.statusCode==200||response.statusCode==201){
      UserModel userModel=UserModel.fromJson(response.data);
        return Right(userModel);


    }else{
      return Left(response.toString());
    }
  }
  catch(e){
    if(e is DioException){
      return Left(e.message ?? "Unknown error");
    }
    return Left(e.toString());
  }

}
}