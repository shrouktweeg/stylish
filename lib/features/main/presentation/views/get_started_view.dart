import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_text_style.dart';
import 'package:stylish/core/widgets/custom_button.dart';
import 'package:stylish/core/widgets/custom_sized_box.dart';

import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Stack(
        children: [
          Assets.images.getStarted.image(
            height: 844.h,
            width: 390.w,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 34.h,
              left: 37.w,
              child:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                      width: 315.w,
                      child: Text(S.of(context).YouWantAuthenticHereYouGo,style: AppTextStyles.montserrat20SemiBold.copyWith(fontSize: 34.sp),textAlign: TextAlign.center,),),
                ),
                CustomHeightSizedBox(height: 14),
                Text(S.of(context).FindItHereBuyItNow,style: AppTextStyles.montserrat14Regular.copyWith(color: Color(0xffF2F2F2),),textAlign: TextAlign.center,),
                CustomHeightSizedBox(height: 40),
                CustomButton(height: 55, width: 279,title: S.of(context).GetStarted,style: AppTextStyles.montserrat20SemiBold.copyWith(color: AppColors.white),onPressed: (){},),

              ],
            ),
          ))
        ],
      ),
    )

    );
  }
}
