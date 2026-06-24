import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_text_style.dart';
import 'package:stylish/core/widgets/custom_sized_box.dart';

import '../../../../../generated/assets.dart';

class SponsoredCustomWidget extends StatelessWidget {
  const SponsoredCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
      child:SizedBox(
        width: 359.w,
        child: Padding(
          padding: EdgeInsets.only(top: 8.h,right: 8.w,bottom: 8.h,left: 16.w),
          child: Container(
            color: AppColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sponserd",style: AppTextStyles.montserrat20Medium,),
                CustomHeightSizedBox(height: 12),
                Container(
                  width: 343.w,
                  height: 291.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(image: AssetImage(Assets.images.sponsored.path),fit: BoxFit.cover)
                  ),
                ),
                CustomHeightSizedBox(height: 13),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('up to 50% Off',style: AppTextStyles.montserrat16Bold,),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,size: 20.sp,color: AppColors.iconColor,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),



    );
  }
}
