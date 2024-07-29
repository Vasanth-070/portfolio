import 'package:flutter/material.dart';
import 'package:portfolio/theme_data/app_theme_data.dart';
import 'package:portfolio/theme_data/color/app_color_theme_data.dart';

extension Colorss on Colors {
    static AppColorTheme get themeColor => AppThemeData.instance.themeColor;
}