import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_text_style.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final void Function()? onPressed;
  final double height;
  final double width;
  final double? borderRadius;
  final String title;
  final Color? backgroundColor;
  final double? verticalPadding;
  final double? horizontalPadding;
  final TextStyle? style;
  final String icon;
  const CustomButtonWithIcon({super.key, this.onPressed, required this.height, required this.width, required this.title, this.borderRadius,  this.backgroundColor, this.verticalPadding, this.horizontalPadding, this.style, required this.icon,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 0, horizontal: horizontalPadding ?? 0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width:width.w,
          height:height.h,
          decoration:BoxDecoration(
            color:backgroundColor ?? AppColors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(1, 1),
                  blurRadius: 16,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            borderRadius:BorderRadius.circular(borderRadius ?? 6.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: style ?? AppTextStyles.montserrat20SemiBold),
              SizedBox(width: 10.w),
              SvgPicture.asset(icon, width: 12.w, height: 15.h, fit: BoxFit.contain,),
            ],
          ),
        ),
      ),
    );
  }
}
