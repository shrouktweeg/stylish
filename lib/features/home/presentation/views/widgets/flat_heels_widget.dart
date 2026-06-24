import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_outlined_button.dart';
import '../../../../../core/widgets/custom_sized_box.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';

class FlatHeelsWidget extends StatelessWidget {
  const FlatHeelsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 343.w,
        color: AppColors.white,
        child: Row(
          children: [
            Image.asset(Assets.images.linear.path, height: 171.h),
            Expanded(
              child: Container(
                height: 171.h,
                color: Color(0xffE7E7EB),
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          Assets.images.starsBg.path,
                          height: 156.h,
                          width: 78.w,
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          top: 24.h,
                          left: 5.w,
                          child: Image.asset(
                            Assets.images.shoes.path,
                            width: 100.w,
                            height: 108.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    CustomWidthSizedBox(width: 22),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).FlatAndHeels,
                              style: AppTextStyles.montserrat16Medium
                                  .copyWith(color: AppColors.black),
                            ),
                            Text(
                              S.of(context).StandAChanceToGetRewarded,
                              style: AppTextStyles.montserrat10Regular
                                  .copyWith(color: Color(0xff232327)),
                            ),
                            CustomHeightSizedBox(height: 16),
                            Align(
                              alignment: Alignment.centerRight,
                              child: CustomOutlinedButton(
                                text: S.of(context).VisitNow,
                                color: AppColors.primaryRed,
                                width: 89.w,
                                height: 30.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
