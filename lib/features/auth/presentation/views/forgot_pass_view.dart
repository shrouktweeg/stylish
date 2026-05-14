import 'package:flutter/material.dart';
import 'package:stylish/features/auth/presentation/views/widgets/forgot_pass_body.dart';

class ForgotPassView extends StatelessWidget {
  const ForgotPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ForgotPasswordBody(),
      ),
    );
  }
}
