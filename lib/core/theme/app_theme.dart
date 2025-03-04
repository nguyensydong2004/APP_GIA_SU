import 'package:app_education/core/theme/app_typography.dart';
import 'package:app_education/services/font_service.dart';
import 'package:flutter/material.dart';
import 'package:app_education/bloc/font/font_state.dart';
import 'package:app_education/core/theme/app_colors.dart';

class AppTheme{
  static ThemeData getLightTheme(FontState fontState){
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.lightBackground,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        error: AppColors.error,
        background: AppColors.lightBackground,
        surface: AppColors.lightSurfacce,
      ),

      textTheme: FontService.getCustomTextTheme(
          AppTypography.lightTextTheme,
          fontState.fontScale,
        fontState.fontFamily,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(vertical: 16),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.lightSurfacce,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.lightDivider),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.lightDivider),
        ),
      ),
    );
  }
}