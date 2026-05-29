import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/cache/storage_helper.dart';
import 'package:stylish/core/errors/error_model.dart';
import 'package:stylish/features/auth/presentation/cubit/login/login_state.dart';

import '../../../../../core/utils/service_locator.dart';
import '../../../data/models/tokenModel.dart';
import '../../../repo/auth_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;

  LoginCubit(this._authRepo) : super(InitialLoginState());

  Future<void> login({required String userName, required String password}) async {
    emit(LoadingLoginState());

    final Either<ErrorModel, TokenModel> response =
    await _authRepo.login(username: userName, password: password);

    await response.fold(
          (error) {
        emit(FailureLoginState(message: error.errorMessage));
      },
          (tokenModel) async {
        try {

          await sl<StorageHelper>().saveAccessToken(tokenModel.accessToken);
          await sl<StorageHelper>().saveRefreshToken(tokenModel.refreshToken);

          emit(SuccessLoginState(message: 'Login Successfully'));
        } catch (e) {
          emit(FailureLoginState(message: "Failed to save secure tokens localy."));
        }
      },
    );
  }
}