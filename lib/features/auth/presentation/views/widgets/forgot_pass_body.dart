import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_text_style.dart';
import 'package:stylish/core/utils/validators.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_sized_box.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';


class ForgotPasswordBody extends StatefulWidget {
  const ForgotPasswordBody({super.key});

  @override
  State<ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}

class _ForgotPasswordBodyState extends State<ForgotPasswordBody> {
  late TextEditingController emailController;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                width: 208.w,
                child: Text(
                  S.of(context).ForgotPassword,
                  style: AppTextStyles.montserrat36Bold,
                ),
              ),
              CustomHeightSizedBox(height: 36),
              CustomTextFormField(
                hintText: S.of(context).EnterYourEmailAddress,
                prefixIcon: Icons.email,
                borderRadius: 8,
                validator: (value) => Validators.validateEmail(value),
                textEditingController: emailController,
              ),
              CustomHeightSizedBox(height: 26),
             SizedBox(
               width: 282.w,
                 child: Text(S.of(context).forgotPasswordDescription,style: AppTextStyles.montserrat12Regular.copyWith(color: Color(0xff676767)),)),
              CustomHeightSizedBox(height: 26),
              CustomButton(
                height: 55,
                width: 317,
                title: S.of(context).Submit,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    //   context.go(RoutesName.main);
                  }
                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}
