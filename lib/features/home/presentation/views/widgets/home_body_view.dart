import 'package:flutter/material.dart';


import 'package:stylish/core/widgets/custom_search_bar.dart';
import 'package:stylish/core/widgets/custom_sized_box.dart';

import '../../../../../core/widgets/custom_header.dart';
import '../../../../../generated/l10n.dart';
import 'custom_category_widget.dart';
import 'custom_item_slider.dart';

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
        ],
      ),
    );
  }
}
