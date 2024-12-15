import 'package:farm_management_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryGreen,
        onPrimary: AppColors.secondaryGreen,
        secondary: AppColors.lightGreen,
        onSecondary: AppColors.primaryYellow,
        error: AppColors.mainBlack,
        surface: AppColors.mainWhite,
        onError: Colors.transparent,
        onSurface: Colors.transparent,
      ),
      scaffoldBackgroundColor: AppColors.mainWhite,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: AppColors.mainBlack,
          fontWeight: FontWeight.w800,
          fontSize: 25,
        ),
        bodyMedium: TextStyle(
          color: AppColors.mainBlack,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        bodySmall: TextStyle(
          color: AppColors.mainBlack,
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
    );
  }
}
