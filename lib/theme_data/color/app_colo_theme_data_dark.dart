import 'package:flutter/material.dart';
import 'package:portfolio/theme_data/color/app_color_theme_data.dart';
import 'package:portfolio/ui_utils/colors.dart';

class AppColorThemeDataDark implements AppColorTheme {
  @override
  final defaultt = ColorConstants.black030712;

  @override
  final gray100 = ColorConstants.black1f2937;

  @override
  final gray200 = ColorConstants.black374151;

  @override
  final gray300 = ColorConstants.black4B5563;

  @override
  final gray400 = ColorConstants.black6b7280;

  @override
  final gray50 = ColorConstants.black111827;

  @override
  final gray500 = ColorConstants.black9CA3AF;

  @override
  final gray600 = ColorConstants.blackD1D5Db;

  @override
  final gray700 = ColorConstants.blackE5E7EB;

  @override
  final gray800 = ColorConstants.whiteF3F4F6;

  @override
  final gray900 = ColorConstants.whiteF9FAFB;

  @override
  final gray950 = Colors.white;

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
