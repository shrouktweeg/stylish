import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/routing/app_routes.dart';
import 'package:stylish/core/service/shared_pref_service.dart';
import 'package:stylish/core/utils/app_text_style.dart';

import '../../../../../core/service/get_it_service.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';
import '../../../../on_boarding/presentation/data/service/on_boarding_services.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _checkNavigation();
  }

  Future<void> _checkNavigation() async {
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    bool isFirstTime = OnBoardingServices.isFirstTime();
    if (isFirstTime) {
      context.goNamed(AppRoutes.onBoarding);
      return;
    }

    final isLoggedIn = sl<SharedPrefService>().getLoggedIn();

    if (isLoggedIn) {
      context.goNamed(AppRoutes.getStarted);
    } else {
      context.goNamed(AppRoutes.login);
    }
  }  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.splash.image(
              height: 100.h,
              width: 125.w,
              fit: BoxFit.cover,
            ),
            Transform.translate(
              offset: Offset(-20.w, 0),
              child: Text(
                S.of(context).stylish,
                style: AppTextStyles.libreCaslonText40Bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
