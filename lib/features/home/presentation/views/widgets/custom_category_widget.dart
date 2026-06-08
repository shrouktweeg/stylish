import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_sized_box.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';

class CustomCategoryWidget extends StatelessWidget {
  const CustomCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsetsGeometry.directional(start: 8.w,bottom: 8.h,top: 8.h),
      height: 87.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ListView.builder(
        itemBuilder: (context,index){
          return Padding(
            padding:  EdgeInsets.only(right: 16.w),
            child: Column(
              children: [
                ClipRRect(
                  child: Image.asset(Assets.images.beauty.path,width: 56.w,height: 56.h,fit: BoxFit.cover,),
                ),
                CustomHeightSizedBox(height: 4),
                Text(S.of(context).Beauty,style: AppTextStyles.montserrat10Regular.copyWith(color: AppColors.itemTextColor),)

              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: 7,

      ),
    );
  }
}
