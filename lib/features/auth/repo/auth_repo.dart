import 'package:dartz/dartz.dart';
import 'package:stylish/core/errors/error_model.dart';


import '../data/models/tokenModel.dart';
import '../data/models/userModel.dart';

abstract class AuthRepo {

  AuthRepo();

  Future<Either<ErrorModel, TokenModel>> login({
    required String username,
    required String password,
  }) ;
  Future<Either<ErrorModel, UserModel>> signUp({
    required String username,
    required String password,
    required String email,
    String avatar = 'https://picsum.photos/800',
  }) ;
}