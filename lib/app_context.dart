import 'package:flutter/material.dart';
import 'package:portfolio/theme_data/app_theme_data.dart';
import 'package:portfolio/theme_data/color/app_color_theme_data.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppContext {
  static late BuildContext context;

  static void setupThemeColorAndContext(BuildContext bContext) {
    context = bContext;
    AppThemeData.instance.themeColor =
        Theme.of(context).extension<AppColorTheme>()!;
  }
}

bool get isMobile {
  return ResponsiveWrapper.of(AppContext.context).isMobile;
}

bool get isTablet {
  return ResponsiveWrapper.of(AppContext.context).isTablet;
}

bool get isDesktop {
  return ResponsiveWrapper.of(AppContext.context).isDesktop;
}
