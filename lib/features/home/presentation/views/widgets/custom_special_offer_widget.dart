import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_sized_box.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';

class CustomSpecialOfferWidget extends StatelessWidget {
  const CustomSpecialOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 343.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.w,vertical: 12.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Assets.images.specialOffer.path,width: 75.w,height: 60.h,fit: BoxFit.cover,),
              CustomWidthSizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(S.of(context).SpecialOffers,style: AppTextStyles.montserrat16Medium.copyWith(color: AppColors.black),),
                      CustomWidthSizedBox(width: 8),
                      SvgPicture.asset(Assets.icons.imoji.path,width: 20.w,height: 20.h,fit: BoxFit.cover,)
                    ],
                  ),
                  CustomHeightSizedBox(height: 8),
                  SizedBox(
                      width: 171.w,
                      child: Text(S.of(context).WeMakeSureYouGetTheOfferYouNeedAtBestPrices,style: AppTextStyles.montserrat12Light,))
                ],
              )

            ],
          ),
        ),
      ),
    )
    ;
  }
}
