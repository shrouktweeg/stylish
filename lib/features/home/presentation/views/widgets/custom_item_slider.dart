import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/app_color.dart';

import 'custom_item_content.dart';

class CustomItemSlider extends StatefulWidget {
  const CustomItemSlider({super.key});

  @override
  State<CustomItemSlider> createState() => _CustomItemSliderState();
}

class _CustomItemSliderState extends State<CustomItemSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, index, realIndex) {

            return CustomItemContent();
          },
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            autoPlayInterval: const Duration(seconds: 3),
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),

        const SizedBox(height: 12),

        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: 5,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            dotColor: AppColors.dotsInActiveColor,
            activeDotColor: AppColors.lightPink,
          ),
        ),
      ],
    );
  }


}

