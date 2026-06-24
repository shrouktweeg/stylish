import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_sized_box.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';

class TrendingProductsWidget extends StatelessWidget {
  const TrendingProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 16.w),
      child: SizedBox(
        height: 186.h,
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
                        width: 142.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            image: DecorationImage(image: AssetImage(Assets.images.item1.path),fit: BoxFit.cover)
                        ),
                      ),
                      CustomHeightSizedBox(height: 8),
                      SizedBox(
                          width: 134.w,
                          child: Text(S.of(context).WomenPrintedKurta,style:AppTextStyles.montserrat14Medium,maxLines: 1,)),
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
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
