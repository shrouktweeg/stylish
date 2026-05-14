import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
 final void Function()? onPressed;
 final double height;
 final double width;
 final double? borderRadius;
 final String? title;
 final Color? backgroundColor;
 final double? verticalPadding;
 final double? horizontalPadding;
 final TextStyle? style;
  const CustomButton({super.key, this.onPressed, required this.height, required this.width,  this.title, this.borderRadius,  this.backgroundColor, this.verticalPadding, this.horizontalPadding, this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:verticalPadding??0 ,horizontal:horizontalPadding??0),
      child: ElevatedButton(
          onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(width.w, height.h),
          backgroundColor:backgroundColor??AppColors.primaryRed,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius??4.r)),
        ),
        child: Text(title??"",style:style?? AppTextStyles.montserrat20SemiBold,),
      ),
    );
  }
}
