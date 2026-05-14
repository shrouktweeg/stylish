import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_text_style.dart';
import '../../../../../generated/l10n.dart';

class SignUpDescription extends StatelessWidget {
  const SignUpDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 258.w,
      child: RichText(text: TextSpan(
          children: [
            TextSpan(
                text: S.of(context).ByClickingThe,
                style: AppTextStyles.montserrat12Regular.copyWith(color: Color(0xff676767))
            ),
            TextSpan(
                text: S.of(context).Register,
                style: AppTextStyles.montserrat12Regular.copyWith(color: Color(0xffFF4B26))
            ),       TextSpan(
                text: S.of(context).buttonYouAgreeToThePublicOffer,
                style: AppTextStyles.montserrat12Regular.copyWith(color: Color(0xff676767))
            ),
          ]
      )),
    );

  }
}
