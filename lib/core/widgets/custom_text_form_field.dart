import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final double? borderRadius;
  final  IconData prefixIcon;
  final IconData? suffixIcon;
  final bool? obscureText;
  final bool? isPassword;
  final void Function()? onPressedIcon;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    this.textEditingController,
    this.hintText,
    this.borderRadius,
    required this.prefixIcon,
    this.obscureText,
    this.isPassword,
    this.validator,
    this.suffixIcon, this.onPressedIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: textEditingController,
      obscureText: obscureText ?? false,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsetsGeometry.only(top: 18.r, left: 18.r),
        filled: true,
        fillColor: AppColors.textFieldColor,
        hint: Text(
          hintText ?? '',
          style: AppTextStyles.montserrat12Medium,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: BorderSide(color: AppColors.hintColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: BorderSide(color: AppColors.hintColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: BorderSide(color: AppColors.hintColor),
        ),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon != null?IconButton(icon: Icon(suffixIcon),onPressed: onPressedIcon, color: AppColors.prefixIconColor):null,

      ),
    );
  }
}
