import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/widgets/custom_app_bar.dart';
import 'package:stylish/features/home/presentation/views/widgets/home_body_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(),
          body: Padding(padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
          child: HomeBodyView(),),
    ));
  }
}
