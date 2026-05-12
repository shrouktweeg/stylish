import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';


  final ThemeData  lightTheme =
     ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.primaryRed,
      scaffoldBackgroundColor: AppColors.background,

      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryRed,
        secondary: AppColors.secondaryBlue,
        surface: AppColors.background,
        error: Colors.red,
        onPrimary: AppColors.white,
        onSecondary: AppColors.white,
        onSurface: AppColors.black,
      ),
textButtonTheme: TextButtonThemeData(
  style: TextButton.styleFrom(
   // textStyle: AppTextStyles.montserrat14semiBold,
  )
),
      textTheme: GoogleFonts.montserratTextTheme().copyWith(
        displayLarge: GoogleFonts.montserrat(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
        ),
        titleMedium: GoogleFonts.montserrat(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
        bodyLarge: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        bodySmall: GoogleFonts.montserrat(
          fontSize: 12,
          color: AppColors.greyText,
        ),
      ),

      searchBarTheme: SearchBarThemeData(
        backgroundColor: WidgetStateProperty.all(AppColors.greyLight),
        elevation: WidgetStateProperty.all(0),
        hintStyle: WidgetStateProperty.all(
          const TextStyle(color: AppColors.greyText, fontSize: 14),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryRed,
          foregroundColor: AppColors.white,
          minimumSize: const Size(double.infinity, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
       //   textStyle: AppTextStyles.montserrat20SemiBold
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.greyLight,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.inputBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.inputBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.primaryRed, width: 1.5),
        ),
        hintStyle: GoogleFonts.montserrat(
          color: AppColors.greyText,
          fontSize: 14,
        ),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.black),
        titleTextStyle: TextStyle(
          color: AppColors.secondaryBlue,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.primaryRed,
        unselectedItemColor: AppColors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
