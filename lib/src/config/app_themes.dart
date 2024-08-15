import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

final class AppThemes {
  AppThemes._();

  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primary,
    ),
    scaffoldBackgroundColor: AppColors.myWhite,
    textTheme: GoogleFonts.interTextTheme(
      const TextTheme(
        bodyLarge: TextStyle(color: AppColors.mySecondDark),
        bodyMedium: TextStyle(color: AppColors.mySecondDark),
        bodySmall: TextStyle(color: AppColors.mySecondDark),
      ),
    ),
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.myWhite),
    datePickerTheme: const DatePickerThemeData(
      todayBorder: BorderSide(color: AppColors.primary),
      rangePickerSurfaceTintColor: AppColors.primary,
    ),
  );

  static final darkTheme = lightTheme.copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.primary,
    ),
    scaffoldBackgroundColor: AppColors.myDark,
  );

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
