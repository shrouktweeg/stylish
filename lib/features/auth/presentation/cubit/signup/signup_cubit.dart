import 'package:dartz/dartz.dart';
import 'package:e_commerce_udemy/features/auth/cubit/signup/signup_state.dart';
import 'package:e_commerce_udemy/features/auth/models/userModel.dart';
import 'package:e_commerce_udemy/features/auth/repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignupCubit extends Cubit<SignupState>{
  final AuthRepo _authRepo;
  SignupCubit( this._authRepo):super(InitialSignUpState());
  signUp({required String username,required String password,required String email,String avatar='https://picsum.photos/800'})async{
    emit(LoadingSignUpState());
    final Either<String, UserModel> response= await _authRepo.signUp(email: email,username: username,avatar: avatar, password: password);
    response.fold((error){
      emit(FailureSignUpState(message: error));
    }, (user){
      emit(SuccessSignUpState(userModel: user));
    });
  }

}