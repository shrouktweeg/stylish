import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_outlined_button.dart';
import '../../../../../core/widgets/custom_sized_box.dart';
import '../../../../../generated/l10n.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String title;
  final String subTitle;
  final IconData icon;
  const CustomContainer({super.key, required this.color, required this.title, required this.subTitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Stack(
        children:[
          Container(
            width: 343.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 8.h,bottom: 8.h,right: 16.w,left: 8.w),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: AppTextStyles.montserrat16Medium,),
                    CustomHeightSizedBox(height: 8),
                    Row(
                      children: [
                        Icon(icon,color: AppColors.white,size: 16,),
                        CustomWidthSizedBox(width: 4),
                        Text(subTitle,style: AppTextStyles.montserrat12Regular.copyWith(color: AppColors.white),
                        )
                      ],
                    ),

                  ],
                ),
                Spacer(),
                CustomOutlinedButton(text: S.of(context).ViewAll,)
              ],
            ),
          ),
          CustomHeightSizedBox(height: 16),


        ],
      ),
    );
  }
}
