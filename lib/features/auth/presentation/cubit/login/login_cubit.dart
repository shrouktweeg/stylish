import 'package:dartz/dartz.dart';
import 'package:e_commerce_udemy/features/auth/cubit/login/login_state.dart';
import 'package:e_commerce_udemy/features/auth/repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/tokenModel.dart';

class LoginCubit extends Cubit<LoginState>{
  final AuthRepo _authRepo;
  LoginCubit( this._authRepo):super(InitialLoginState());
  login({required String userName,required String password})async{
    emit(LoadingLoginState());
    final Either<String, TokenModel> response= await _authRepo.login(username: userName, password: password);
    response.fold((error){
      emit(FailureLoginState(message: error));
    }, (success){
      emit(SuccessLoginState(message: 'Login Successfully'));
    });
  }

}