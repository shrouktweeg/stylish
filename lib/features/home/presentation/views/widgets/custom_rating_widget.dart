import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRatingWidget extends StatelessWidget {
  const CustomRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   RatingBarIndicator(
      rating: 4.0, // Set the number of filled stars
      itemBuilder: (context, index) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      itemCount: 5,
      itemSize: 12.sp,
      direction: Axis.horizontal,
    );
  }
}
