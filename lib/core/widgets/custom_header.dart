import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../utils/app_color.dart';
import '../utils/app_text_style.dart';
import 'custom_button_with_icon.dart';

class CustomHeader extends StatelessWidget {
  final String mainTitle;
  final String titleFirstButton;
  final String titleSecondButton;
  const CustomHeader({super.key, required this.mainTitle, required this.titleFirstButton, required this.titleSecondButton});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          mainTitle,
          style: AppTextStyles.montserrat20SemiBold.copyWith(
            color: AppColors.black,
          ),
        ),

        const Spacer(),

        CustomButtonWithIcon(
          height: 24,
          width: 61,
          onPressed: () {},
          title: titleFirstButton,
          style: AppTextStyles.montserrat12Regular.copyWith(
            color: AppColors.black,
          ),
          icon: Assets.icons.sort.path,
        ),

        const SizedBox(width: 8),

        CustomButtonWithIcon(
          height: 24,
          width: 67,
          onPressed: () {},
          title: titleSecondButton,
          style: AppTextStyles.montserrat12Regular.copyWith(
            color: AppColors.black,
          ),
          icon: Assets.icons.filter.path,
        ),
      ],
    );
  }
}
