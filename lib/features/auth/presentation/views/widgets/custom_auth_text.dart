import 'package:flutter/material.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_text_style.dart';

class CustomAuthText extends StatelessWidget {
  final String text;
  final String textButton;
  final  void Function()? onPressed;
  const CustomAuthText({super.key, required this.text, required this.textButton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text( text,style: AppTextStyles.montserrat14Regular.copyWith(color: Color(0xff575757))),
        TextButton(
            onPressed: onPressed,
            child:Text(textButton,style: AppTextStyles.montserrat14semiBold.copyWith(decoration: TextDecoration.underline,decorationColor: AppColors.primaryRed),),
        )
      ],
    );
  }
}
