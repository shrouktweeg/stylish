import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTextStyles {
  static TextStyle montserrat30Bold = GoogleFonts.montserrat(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );  static TextStyle montserrat36Bold = GoogleFonts.montserrat(
    fontSize: 36.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  ); static TextStyle montserrat12Regular = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryRed,
  ); static TextStyle montserrat24ExtraBold = GoogleFonts.montserrat(
    fontSize: 24.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
  );static TextStyle montserrat12Medium = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle libreCaslonText40Bold = GoogleFonts.libreCaslonText(
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryRed,
  );

  static TextStyle montserrat24Bold = GoogleFonts.montserrat(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static TextStyle montserrat18Bold = GoogleFonts.montserrat(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  ); static TextStyle montserrat14semiBold = GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryRed,
  );

  static TextStyle montserrat20SemiBold = GoogleFonts.montserrat(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
  static TextStyle montserrat18SemiBold = GoogleFonts.montserrat(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static TextStyle montserrat14Medium = GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static TextStyle montserrat12SemiBold = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static TextStyle montserrat14Regular = GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.greyText,
  );

  static TextStyle montserrat10Regular = GoogleFonts.montserrat(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.greyText,
  );

  static TextStyle montserrat12BoldRed = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryRed,
    decoration: TextDecoration.underline,
  );
}