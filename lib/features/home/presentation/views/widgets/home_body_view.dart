import 'package:flutter/material.dart';


import 'package:stylish/core/widgets/custom_search_bar.dart';
import 'package:stylish/core/widgets/custom_sized_box.dart';
import 'package:stylish/features/home/presentation/views/widgets/custom_container.dart';
import 'package:stylish/features/home/presentation/views/widgets/sponsored_custom_widget.dart';
import 'package:stylish/features/home/presentation/views/widgets/trending_products_widget.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/widgets/custom_header.dart';

import '../../../../../generated/l10n.dart';
import 'custom_category_widget.dart';
import 'custom_item_slider.dart';
import 'custom_offer_item.dart';
import 'custom_special_offer_widget.dart';
import 'flat_heels_widget.dart';
import 'new_arrivals_widget.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomSearchBar(),
          CustomHeightSizedBox(height: 16),
          CustomHeader(
            mainTitle: S.of(context).AllFeatured,
            titleFirstButton: S.of(context).Sort,
            titleSecondButton: S.of(context).Filter,
          ),
          CustomHeightSizedBox(height: 17),
          CustomCategoryWidget(),
          CustomHeightSizedBox(height: 16),
          CustomItemSlider(),
          CustomHeightSizedBox(height: 16),
          CustomContainer(
            icon: Icons.alarm,
            color: AppColors.secondaryBlue,
            title: S.of(context).DealOfTheDay,
            subTitle: S.of(context).Time22h55m20sRemaining,
          ),
          CustomHeightSizedBox(height: 16),
          CustomOfferItem(),
          CustomHeightSizedBox(height: 16),
          CustomSpecialOfferWidget(),
          CustomHeightSizedBox(height: 16),
          FlatHeelsWidget(),
          CustomHeightSizedBox(height: 16),
          CustomContainer(
            icon: Icons.calendar_month,
            color: AppColors.trendingCoral,
            title: S.of(context).TrendingProducts,
            subTitle: S.of(context).LastDate,
          ),
          CustomHeightSizedBox(height: 16),
          TrendingProductsWidget(),
          CustomHeightSizedBox(height: 16),
          NewArrivalsWidget(),
          CustomHeightSizedBox(height: 16),
          SponsoredCustomWidget(),
          CustomHeightSizedBox(height: 16),








        ],
      ),
    );
  }
}
