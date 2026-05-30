import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:stylish/features/auth/presentation/cubit/login/login_state.dart';

import '../../../repo/auth_repo_impl.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepoImpl _authRepo;

  LoginCubit(this._authRepo) : super(InitialLoginState());

  Future<void> login({required String userName, required String password}) async {
    emit(LoadingLoginState());

    final response = await _authRepo.login(username: userName, password: password);

    response.fold(
          (error) => emit(FailureLoginState(message: error.errorMessage)),
          (tokenModel) => emit(SuccessLoginState(message: 'Login Successfully')),
    );
  }
}