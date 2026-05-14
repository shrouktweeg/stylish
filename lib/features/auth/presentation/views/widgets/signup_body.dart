import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/routing/app_routes.dart';
import 'package:stylish/core/utils/app_text_style.dart';
import 'package:stylish/core/utils/validators.dart';
import 'package:stylish/features/auth/presentation/views/widgets/sign_up_description.dart';


import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_sized_box.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import 'custom_auth_text.dart';
import 'custom_or_widget.dart';
import 'custom_social_widget.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  late TextEditingController emailController;
  late TextEditingController passController;
  late TextEditingController confirmPassController;
  GlobalKey<FormState> formKey = GlobalKey();
  bool isHiddenFirst=true;
  bool isHiddenSecond=true;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passController = TextEditingController();
    confirmPassController = TextEditingController();
  }
  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 18.w,horizontal: 26.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizedBox(
                  width:191.w,
                  child: Text(S.of(context).CreateAnAccount,style: AppTextStyles.montserrat36Bold,)),
              CustomHeightSizedBox(height: 36),
              CustomTextFormField(
                hintText: S.of(context).UsernameOrEmail,
                prefixIcon: Icons.person,
                borderRadius: 8,
                validator: (value) => Validators.validateEmail(value),
                textEditingController: emailController,
              ),
              CustomHeightSizedBox(height: 31),
              CustomTextFormField(
                isPassword: true,
                obscureText: isHiddenFirst,
                hintText: S.of(context).Password,
                suffixIcon: isHiddenFirst ? Icons.remove_red_eye_outlined
                    :Icons.remove_red_eye,
                prefixIcon: Icons.lock,
                onPressedIcon: () {
                  setState(() {
                    isHiddenFirst = !isHiddenFirst;
                  });
                },
                borderRadius: 8,
                validator: (value) => Validators.validatePassword(value),
                textEditingController: passController,
              ),
              CustomHeightSizedBox(height: 31),
              CustomTextFormField(
                isPassword: true,
                obscureText: isHiddenSecond,
                hintText: S.of(context).ConfirmPassword,
                suffixIcon: isHiddenSecond ? Icons.remove_red_eye_outlined
                    :Icons.remove_red_eye,
                prefixIcon: Icons.lock,
                onPressedIcon: () {
                  setState(() {
                    isHiddenSecond = !isHiddenSecond;
                  });
                },
                borderRadius: 8,
                validator: (value) => Validators.validatePassword(value),
                textEditingController: confirmPassController,
              ),
              CustomHeightSizedBox(height: 19),
              SignUpDescription(),
              CustomHeightSizedBox(height: 38),
              CustomButton(height: 55, width: 317,title:S.of(context).Login ,onPressed: (){
                if (formKey.currentState!.validate()) {
                   //  context.go(RoutesName.main);
                }
              },),
              CustomHeightSizedBox(height: 40),
              CustomOrWidget(),
              CustomHeightSizedBox(height: 20),
              CustomSocialWidget(),
              CustomHeightSizedBox(height: 28),
              CustomAuthText(text: S.of(context).IAlreadyHaveAnAccount,textButton:S.of(context).Login,onPressed:(){
                context.go(AppRoutes.login);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
