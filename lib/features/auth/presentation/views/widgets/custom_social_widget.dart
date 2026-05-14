import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_sized_box.dart';
import '../../../../../generated/assets.dart';
import 'custom_social_button.dart';

class CustomSocialWidget extends StatelessWidget {
  const CustomSocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      CustomSocialButton(height: 54, width: 54 ,onPressed: (){}, icon: Assets.icons.google.path),
      CustomWidthSizedBox(width: 10),
      CustomSocialButton(height: 54, width: 54 ,onPressed: (){}, icon: Assets.icons.apple.path),
      CustomWidthSizedBox(width: 10),
      CustomSocialButton(height: 54, width: 54 ,onPressed: (){}, icon: Assets.icons.facebook.path),

    ],);
  }
}
