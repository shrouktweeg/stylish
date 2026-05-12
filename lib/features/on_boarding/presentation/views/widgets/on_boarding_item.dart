import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_sized_box.dart';
import '../data/models/on_boarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  final OnBoardingModel model;

  const OnBoardingItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        model.image.image(height: 300.h),
        CustomHeightSizedBox(height: 15.h),
        Text(
          model.title,
          style: AppTextStyles.montserrat24ExtraBold,
        ),
        CustomHeightSizedBox(height: 10.h),
        SizedBox(
          width: 340.w,
          child: Text(
            model.description,
            textAlign: TextAlign.center,
            style: AppTextStyles.montserrat14semiBold.copyWith(
              color: AppColors.greyText,
            ),
          ),
        ),
      ],
    );
  }
}