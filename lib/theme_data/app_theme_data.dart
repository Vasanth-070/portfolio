import 'package:flutter/material.dart';
import 'package:portfolio/app_context.dart';
import 'package:portfolio/theme_data/color/app_color_theme_data.dart';
import 'package:portfolio/theme_data/color/app_color_theme_data_light.dart';
import 'package:portfolio/ui_utils/colors.dart';
import 'package:portfolio/ui_utils/ui_util.dart';
import 'package:portfolio/utils/constants.dart';

class AppThemeData {
  factory AppThemeData() => instance;
  static final instance = AppThemeData._internal();
  AppThemeData._internal();

  late VoidCallback _toggleTheme;
  AppColorTheme themeColor = AppColorThemeDataLight();
  ThemeMode theme = ThemeMode.light;

  bool get isLightThemeEnabled {
    return theme == ThemeMode.light;
  }

  void setupCallBack(VoidCallback toggleCallback) {
    _toggleTheme = toggleCallback;
  }

  final lightTheme = ThemeData(
    fontFamily: Constants.defaultFont,
    primaryColor: ColorConstants.black111827,
    primaryColorLight: ColorConstants.black4B5563,
    hoverColor: ColorConstants.whiteF3F4F6,
    highlightColor: ColorConstants.blackE5E7EB,
    dialogBackgroundColor: ColorConstants.whiteF9FAFB,
    primarySwatch: generateMaterialColor(ColorConstants.black111827),
    canvasColor: ColorConstants.white,
  ).copyWith(extensions: <ThemeExtension<dynamic>>[
    AppColorTheme.from(ThemeMode.light)
  ]);

  final darkTheme = ThemeData(
    fontFamily: Constants.defaultFont,
    primaryColor: ColorConstants.black111827,
    primaryColorLight: ColorConstants.black4B5563,
    hoverColor: ColorConstants.whiteF3F4F6,
    highlightColor: ColorConstants.blackE5E7EB,
    dialogBackgroundColor: ColorConstants.whiteF9FAFB,
    primarySwatch: generateMaterialColor(ColorConstants.black111827),
    canvasColor: ColorConstants.white,
  ).copyWith(extensions: <ThemeExtension<dynamic>>[
    AppColorTheme.from(ThemeMode.dark)
  ]);

  void toggleAppTheme() {
    switch (theme) {
      case ThemeMode.light:
        theme = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        theme = ThemeMode.light;
        break;
      default:
        break;
    }
    _toggleTheme();
  }
}
