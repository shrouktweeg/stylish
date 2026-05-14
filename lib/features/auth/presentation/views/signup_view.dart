import 'package:flutter/material.dart';
import 'package:stylish/features/auth/presentation/views/widgets/signup_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SignupBody(),
      ),
    );
  }
}
