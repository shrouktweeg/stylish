import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_color.dart';
import '../utils/app_text_style.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final Color? color;
  final double? width;
  final double? height;

  const CustomOutlinedButton({super.key, required this.text,  this.color, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 89.w,
      height: height ?? 28.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.white, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
          backgroundColor: color ?? Colors.transparent,
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTextStyles.montserrat12SemiBold.copyWith(
                color: AppColors.white,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(width: 4.w),
            Icon(
              Icons.arrow_forward,
              size: 10.sp,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
