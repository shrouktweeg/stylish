
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:stylish/core/widgets/custom_sized_box.dart';
import 'package:stylish/features/on_boarding/presentation/views/widgets/on_boarding_header_widget.dart';
import 'package:stylish/features/on_boarding/presentation/views/widgets/on_boarding_item.dart';

import '../../../../../core/routing/app_routes.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';
import '../../data/models/on_boarding_model.dart';
import '../../data/service/on_boarding_services.dart';
import 'on_boarding_navigation.dart' ;


class OnBoardingBodyView extends StatefulWidget {
  const OnBoardingBodyView({super.key});

  @override
  State<OnBoardingBodyView> createState() => OnBoardingBodyViewState();
}


class OnBoardingBodyViewState extends State<OnBoardingBodyView> {
  double currentIndexPage = 0;
  final CarouselSliderController carouselController = CarouselSliderController();

  late List<OnBoardingModel> onBoardingScreens;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    onBoardingScreens = [
      OnBoardingModel(
        image: Assets.images.onBoarding1,
        title: S.of(context).ChooseProducts,
        description: S.of(context).onBoardingDescription,
      ),
      OnBoardingModel(
        image: Assets.images.onBoarding2,
        title: S.of(context).MakePayment,
        description: S.of(context).onBoardingDescription,
      ),
      OnBoardingModel(
        image: Assets.images.onBoarding3,
        title: S.of(context).GetYourOrder,
        description: S.of(context).onBoardingDescription,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
        child: Column(
          children: [
            OnBoardingHeaderWidget(currentIndexPage: currentIndexPage),
            CustomHeightSizedBox(height: 50.h),
            Expanded(
              child: Column(
                children: [
                  CarouselSlider(
                    carouselController: carouselController,
                    options: CarouselOptions(
                      height: 450.h,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndexPage = index.toDouble();
                        });
                      },
                    ),
                    items: onBoardingScreens.map((screen) {
                      return OnBoardingItem(model: onBoardingScreens[currentIndexPage.toInt()]);
                    }).toList(),
                  ),

                  const Spacer(),

                  OnBoardingNavigation(
                    currentIndex: currentIndexPage,
                    totalCount: onBoardingScreens.length,
                    onNext: () {
                      if (currentIndexPage < onBoardingScreens.length - 1) {
                        carouselController.nextPage();
                      }
                     else {
                        OnBoardingServices.setIsFirstTime();
                        context.go(AppRoutes.login);
                      }
                    },
                    onPrev: () => carouselController.previousPage(),
                  ),
                  CustomHeightSizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}