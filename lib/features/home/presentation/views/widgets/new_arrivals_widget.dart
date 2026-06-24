import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_text_style.dart';
import 'package:stylish/core/widgets/custom_sized_box.dart';

import '../../../../../core/widgets/custom_outlined_button.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';

class NewArrivalsWidget extends StatelessWidget {
  const NewArrivalsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        width: 343.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 343.w,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left:Radius.circular(8.r),right:Radius.circular(8.r), ),
                image: DecorationImage(image: AssetImage(Assets.images.newArrivals.path),fit: BoxFit.fill),
              ),
            ),
            CustomHeightSizedBox(height: 8),
            Padding(
              padding:  EdgeInsets.only(left: 8.w),
              child: Text(S.of(context).NewArrivals,style: AppTextStyles.montserrat20Medium,),
            ),
            CustomHeightSizedBox(height: 4),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(S.of(context).Summer25Collections,style: AppTextStyles.montserrat16Regular,),
                  Spacer(),
                  CustomOutlinedButton(text: S.of(context).ViewAll,width: 89.w,height: 28.h,color: AppColors.primaryRed),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
