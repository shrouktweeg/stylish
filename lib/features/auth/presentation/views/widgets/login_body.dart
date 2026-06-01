import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/routing/app_routes.dart';
import 'package:stylish/core/utils/app_text_style.dart';
import 'package:stylish/core/utils/validators.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_sized_box.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import '../../cubit/login/login_cubit.dart';
import '../../cubit/login/login_state.dart';
import 'custom_auth_text.dart';
import 'custom_or_widget.dart';
import 'custom_social_widget.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  late TextEditingController emailController;
  late TextEditingController passController;
  GlobalKey<FormState> formKey = GlobalKey();
  bool isHidden = true;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is SuccessLoginState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.green,
            ),
          );
          // context.goNamed(AppRoutes.home);
        }

        if (state is FailureLoginState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18.w, horizontal: 26.h),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 185.w,
                    child: Text(
                      S.of(context).WelcomeBack,
                      style: AppTextStyles.montserrat36Bold,
                    ),
                  ),
                  CustomHeightSizedBox(height: 36),
                  CustomTextFormField(
                    hintText: S.of(context).Email,
                    prefixIcon: Icons.person,
                    borderRadius: 8,
                    validator: (value) => Validators.validateEmail(value),
                    textEditingController: emailController,
                  ),
                  CustomHeightSizedBox(height: 31),
                  CustomTextFormField(
                    isPassword: true,
                    obscureText: isHidden,
                    hintText: S.of(context).Password,
                    suffixIcon: isHidden
                        ? Icons.remove_red_eye_outlined
                        : Icons.remove_red_eye,
                    prefixIcon: Icons.lock,
                    onPressedIcon: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                    borderRadius: 8,
                    validator: (value) => Validators.validatePassword(value),
                    textEditingController: passController,
                  ),
                  CustomHeightSizedBox(height: 9),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        context.pushNamed(AppRoutes.forgotPass);
                      },
                      child: Text(
                        S.of(context).ForgotPassword,
                        style: AppTextStyles.montserrat12Regular,
                      ),
                    ),
                  ),
                  CustomHeightSizedBox(height: 52),

                  state is LoadingLoginState
                      ? const Center(child: CircularProgressIndicator(
                    color: AppColors.primaryRed,
                  ))
                      : CustomButton(
                    height: 55,
                    width: 317,
                    title: S.of(context).Login,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<LoginCubit>().login(
                          userName: emailController.text.trim(),
                          password: passController.text,
                        );
                      }
                    },
                  ),

                  CustomHeightSizedBox(height: 75),
                  CustomOrWidget(),
                  CustomHeightSizedBox(height: 20),
                  CustomSocialWidget(),
                  CustomHeightSizedBox(height: 28),
                  CustomAuthText(
                    text: S.of(context).CreateAnAccount,
                    textButton: S.of(context).SignUp,
                    onPressed: () {
                      context.pushNamed(AppRoutes.getStarted);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}