import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/core/utils/app_color.dart';

class CustomSocialButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double height;
  final double width;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? verticalPadding;
  final double? horizontalPadding;
  final String icon;

  const CustomSocialButton({
    super.key,
    this.onPressed,
    required this.height,
    required this.width,
    this.borderRadius,
    this.backgroundColor,
    this.verticalPadding,
    this.horizontalPadding,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(50.r),
        color: backgroundColor,
        border: Border.all(
          color: AppColors.primaryRed
        )
      ),
      child: Center(
        child: SvgPicture.asset(
          icon,
          width: 25.w,
          height: 25.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}