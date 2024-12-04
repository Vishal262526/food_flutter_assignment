import 'package:flutter/material.dart';
import 'package:food/core/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    dialogBackgroundColor: AppColors.background,
    tabBarTheme: const TabBarTheme(
      indicatorColor: AppColors.pink,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: AppColors.pink,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        iconColor: AppColors.white,
      ),
    ),
    primaryColor: AppColors.primary,
  );
}
