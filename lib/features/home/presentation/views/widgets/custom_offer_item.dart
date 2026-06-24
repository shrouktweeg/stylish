import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_sized_box.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';
import 'custom_rating_widget.dart';

class CustomOfferItem extends StatelessWidget {
  const CustomOfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsetsDirectional.only(start: 16.w),
      child: SizedBox(
        height: 260.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  width: 170.w,
                  height: 260.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 170.w,
                        height: 124.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            image: DecorationImage(image: AssetImage(Assets.images.item1.path),fit: BoxFit.cover)
                        ),
                      ),
                      CustomHeightSizedBox(height: 8),
                      SizedBox(
                          width: 162.w,
                          child: Text(S.of(context).WomenPrintedKurta,style:AppTextStyles.montserrat14Medium,maxLines: 1,)),
                      CustomHeightSizedBox(height: 4),
                      SizedBox(
                          width: 162.w,
                          child: Text(S.of(context).NequePorroQuisquamEstQuiDoloremIpsumQuia,style:AppTextStyles.montserrat10Regular.copyWith(color: AppColors.black),)),
                      CustomHeightSizedBox(height: 4),
                      Text(S.of(context).Price1500,style: AppTextStyles.montserrat12Medium,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(S.of(context).NewPrice2499,style: AppTextStyles.montserrat12LightDecoration,),
                          CustomWidthSizedBox(width: 4),
                          Text(S.of(context).Offer40Off,style: AppTextStyles.montserrat10Regular.copyWith(color: AppColors.offerColor),),
                        ],
                      ),
                      CustomHeightSizedBox(height: 4),
                      Row(
                        children: [
                          CustomRatingWidget(),
                          CustomWidthSizedBox(width: 4),
                          Text(
                            S.of(context).Users,
                            style: AppTextStyles.montserrat10Regular.copyWith(color: Color(0xffA4A9B3)),
                          ),
                        ],
                      )



                    ],
                  ),



                ),
              );
            }),
      ),
    );
  }
}
