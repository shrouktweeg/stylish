import 'package:flutter/material.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_text_style.dart';

import '../../../../../generated/l10n.dart';

class CustomOrWidget extends StatelessWidget {
  const CustomOrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: AppColors.dividerColor,
            indent: 67,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            S.of(context).ORContinueWith,
            style: AppTextStyles.montserrat12Medium.copyWith(color: Color(0xff575757)),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: AppColors.dividerColor,
            endIndent: 67,

          ),
        ),
      ],
    );
  }
}
