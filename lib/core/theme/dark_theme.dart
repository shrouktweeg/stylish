import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';


  final ThemeData darkTheme =
     ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryRed,
      scaffoldBackgroundColor: AppColors.darkBackground,

      // إعدادات الألوان (ColorSchemes)
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryRed,
        secondary: AppColors.secondaryBlue,
        surface: AppColors.darkSurface,
        onSurface: AppColors.white,
      ),

      // إعدادات النصوص
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme).copyWith(
        displayLarge: GoogleFonts.montserrat(color: AppColors.white, fontWeight: FontWeight.bold),
        bodyLarge: GoogleFonts.montserrat(color: AppColors.white),
        bodySmall: GoogleFonts.montserrat(color: AppColors.greyText),
      ),

      // --- ستايل Text Button (مهم للروابط مثل Login و Register) ---
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primaryRed,
          textStyle: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ),

      // ستايل الحقول النصية في الوضع الداكن
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.darkInputFill,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white24),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white12),
        ),
        hintStyle: const TextStyle(color: AppColors.greyText),
      ),

      // ستايل أزرار الـ Elevated Button (نفس التصميم في Sign Up.jpg)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryRed,
          foregroundColor: AppColors.white,
          minimumSize: const Size(double.infinity, 55),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),

      // AppBar في الوضع الداكن
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkBackground,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.white),
      ),

      // Bottom Navigation Bar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.darkSurface,
        selectedItemColor: AppColors.primaryRed,
        unselectedItemColor: Colors.white70,
      ),
    );
