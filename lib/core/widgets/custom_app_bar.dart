import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_text_style.dart';
import 'package:stylish/core/widgets/custom_sized_box.dart';
import '../../generated/assets.dart';
import '../../generated/l10n.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,

      leading: Padding(
        padding: EdgeInsets.all(8.w),
        child: InkWell(
          borderRadius: BorderRadius.circular(50.r),
          onTap: () {},
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.greyLight,
            ),
            child: Icon(
              Icons.drag_handle_sharp,
              color: AppColors.iconColor,
              size: 18.sp,
            ),
          ),
        ),
      ),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.splash.image(
            height: 32.h,
            width: 39.w,
            fit: BoxFit.cover,
          ),
          CustomWidthSizedBox(width: 5),
          Text(S.of(context).stylish,style: AppTextStyles.libreCaslonText18Bold,)

        ],
      ),

      actions: [
        Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: Image.asset(
              Assets.images.profile.path,
              width: 40.w,
              height: 40.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}