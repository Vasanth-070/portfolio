import 'package:flutter/material.dart';
import 'package:portfolio/theme_data/color/app_color_theme_data.dart';
import 'package:portfolio/ui_utils/colors.dart';

class AppColorThemeDataLight implements AppColorTheme {
  @override
  final defaultt = Colors.white;

  @override
  final gray100 = ColorConstants.whiteF3F4F6;

  @override
  final gray200 = ColorConstants.blackE5E7EB;

  @override
  final gray300 = ColorConstants.blackD1D5Db;

  @override
  final gray400 = ColorConstants.black9CA3AF;

  @override
  final gray50 = ColorConstants.whiteF9FAFB;

  @override
  final gray500 = ColorConstants.black6b7280;

  @override
  final gray600 = ColorConstants.black4B5563;

  @override
  final gray700 = ColorConstants.black374151;

  @override
  final gray800 = ColorConstants.black1f2937;

  @override
  final gray900 = ColorConstants.black111827;

  @override
  final gray950 = ColorConstants.black030712;

  @override
  ThemeExtension<AppColorTheme> copyWith() {
    return this;
  }

  @override
  ThemeExtension<AppColorTheme> lerp(
      covariant ThemeExtension<AppColorTheme>? other, double t) {
    return this;
  }

  @override
  Object get type => AppColorTheme;
}
