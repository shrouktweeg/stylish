import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_outlined_button.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';

class CustomItemContent extends StatelessWidget {
  const CustomItemContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 189.h,
      decoration: BoxDecoration(
        color: AppColors.lightPink,
        image: DecorationImage(
          image: AssetImage(Assets.images.itemImage.path),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.only( left: 8.w, right: 8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              S.of(context).Discount,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.montserrat20Bold.copyWith(
                color: Colors.white,
              ),
            ),

            SizedBox(height: 8.h),

            Text(
              S.of(context).NowInProduct,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.montserrat12Regular.copyWith(
                color: AppColors.white,
              ),
            ),

            SizedBox(height: 10.h),

            CustomOutlinedButton(text: S.of(context).ShopNow,),

          ],
        ),
      ),
    );
  }
}
