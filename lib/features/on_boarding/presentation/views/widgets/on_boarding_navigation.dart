import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../generated/l10n.dart';

class OnBoardingNavigation extends StatelessWidget {
  final double currentIndex;
  final int totalCount;
  final VoidCallback onNext;
  final VoidCallback onPrev;

  const OnBoardingNavigation({
    super.key,
    required this.currentIndex,
    required this.totalCount,
    required this.onNext,
    required this.onPrev,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        currentIndex == 0
            ? SizedBox(width: 40.w)
            : GestureDetector(
          onTap: onPrev,
          child: Text(S.of(context).Prev,
              style: AppTextStyles.montserrat18SemiBold.copyWith(color: Colors.grey)),
        ),


        DotsIndicator(
          position: currentIndex,
          dotsCount: totalCount,
          decorator: DotsDecorator(
            color: const Color(0xffC4C4C4),
            activeColor: const Color(0xff17223B),
            size: Size(10.w, 10.h),
            activeSize: Size(40.w, 8.h),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.sp),
            ),
          ),
        ),

        GestureDetector(
          onTap: onNext,
          child: Text(
            currentIndex != (totalCount - 1)
                ? S.of(context).Next
                : S.of(context).GetStarted,
            style: AppTextStyles.montserrat18SemiBold.copyWith(
              color: AppColors.primaryRed,
            ),
          ),
        ),
      ],
    );
  }
}