import 'package:flutter/material.dart';
import 'package:stylish/features/auth/presentation/views/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LoginBody(),
      ),
    );
  }
}
