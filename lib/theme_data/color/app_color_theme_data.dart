import 'package:flutter/material.dart';
import 'package:portfolio/theme_data/color/app_colo_theme_data_dark.dart';
import 'package:portfolio/theme_data/color/app_color_theme_data_light.dart';

abstract class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final Color defaultt;
  final Color gray50;
  final Color gray100;
  final Color gray200;
  final Color gray300;
  final Color gray400;
  final Color gray500;
  final Color gray600;
  final Color gray700;
  final Color gray800;
  final Color gray900;
  final Color gray950;
  AppColorTheme(
      this.defaultt,
      this.gray50,
      this.gray100,
      this.gray200,
      this.gray300,
      this.gray400,
      this.gray500,
      this.gray600,
      this.gray700,
      this.gray800,
      this.gray900,
      this.gray950);

  factory AppColorTheme.from(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.dark:
        return AppColorThemeDataDark();
      default:
        return AppColorThemeDataLight();
    }
  }
}
