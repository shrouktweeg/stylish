
import '../../../data/models/userModel.dart';

abstract class SignupState{}
class InitialSignUpState extends SignupState{}
class LoadingSignUpState extends SignupState{}
class SuccessSignUpState extends SignupState{
  final UserModel userModel;
  SuccessSignUpState({required this.userModel});
}
class FailureSignUpState extends SignupState{
  final String message;
  FailureSignUpState({required this.message});
}
