import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../generated/l10n.dart';

class OnBoardingHeaderWidget extends StatelessWidget {
  final double currentIndexPage;
  const OnBoardingHeaderWidget({super.key, required this.currentIndexPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${currentIndexPage.toInt() + 1}",style: AppTextStyles.montserrat18SemiBold,),
        Text('/3',style: AppTextStyles.montserrat18SemiBold.copyWith(color: AppColors.grey),),
        Spacer(),
        Text( S.of(context).Skip,style: AppTextStyles.montserrat18SemiBold,)
      ],
    );
  }
}
