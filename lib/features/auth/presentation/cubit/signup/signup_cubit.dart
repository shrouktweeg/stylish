import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/errors/error_model.dart';
import 'package:stylish/features/auth/presentation/cubit/signup/signup_state.dart';

import '../../../data/models/userModel.dart';
import '../../../repo/auth_repo_impl.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepoImpl _authRepo;

  SignupCubit(this._authRepo) : super(InitialSignUpState());

  Future<void> signUp({
    required String username,
    required String password,
    required String email,
    String avatar = 'https://picsum.photos/800',
  }) async {
    emit(LoadingSignUpState());

    final Either<ErrorModel, UserModel> response = await _authRepo.signUp(
      email: email,
      username: username,
      avatar: avatar,
      password: password,
    );

    response.fold(
          (error) {
        emit(FailureSignUpState(message: error.errorMessage));
      },
          (user) {
        emit(SuccessSignUpState(userModel: user));
      },
    );
  }
}