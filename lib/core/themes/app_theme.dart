import 'package:smart_ahwa/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  // the mian colors for the app light theme and is gonna be the main color for the app
  static ThemeData lightTheme = ThemeData(
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.brown,
      selectionColor: AppColors.brown.withValues(alpha: 0.5),
      selectionHandleColor: AppColors.brown.withValues(alpha: 0.5),
    ),
    brightness: Brightness.light,
    // the font for the app and its temp font for now
    fontFamily: 'Cairo',
    // the main background color for the app by default
    scaffoldBackgroundColor: AppColors.lightWhite,
    // app main color
    primaryColor: AppColors.brown,
    // the main color for the app light theme and is gonna be the main color for the app
    primaryColorLight: AppColors.lightBrown,
    // the main color for the app dark theme and is gonna be the main color for the app
    primaryColorDark: AppColors.black,
    colorScheme: ColorScheme.light(
      // main 1
      primary: AppColors.brown,
      // main 2
      secondary: AppColors.lightBrown,
      // main 3
      surface: AppColors.lightBeige,

      onPrimary: AppColors.white,
      onSecondary: AppColors.black,
      onSurface: AppColors.lightGray,
      // for the shadows
      shadow: AppColors.lightBrown,
    ),
    // the text theme for the app - optimized for readability and accessibility
    textTheme: TextTheme(
      // for all the titles - used for main headings and important titles
      displayLarge: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w800,
        color: AppColors.brown,
        height: 1.4,
        letterSpacing: 0.5,
      ),
      displayMedium: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.brown,
        height: 1.3,
      ),
      displaySmall: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.brown,
        height: 1.2,
      ),
      // for all the main text - used for section headers and emphasized content
      titleLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.black,
        height: 1.4,
      ),
      titleMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        height: 1.3,
      ),
      titleSmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        height: 1.2,
      ),
      // for all the subtext after the main text - used for descriptions and secondary content
      bodyLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.lightGray,
        height: 1.5,
      ),
      bodyMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.lightGray,
        height: 1.4,
      ),
      bodySmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.lightGray,
        height: 1.3,
      ),
      // for the buttons - optimized for button text readability
      labelLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.white,
        letterSpacing: 0.5,
      ),
      labelMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        letterSpacing: 0.25,
      ),
      labelSmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        letterSpacing: 0.25,
      ),
    ),
  );
}
