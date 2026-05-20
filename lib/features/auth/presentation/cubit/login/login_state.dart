abstract class LoginState{}
class InitialLoginState extends LoginState{}
class LoadingLoginState extends LoginState{}
class SuccessLoginState extends LoginState{
  final String message;
  SuccessLoginState({required this.message});
}
class FailureLoginState extends LoginState{
  final String message;
  FailureLoginState({required this.message});
}
