import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppContext {
  static late final BuildContext context;
  static ThemeMode theme = ThemeMode.light;

  static bool get isLightThemeEnabled {
    return theme == ThemeMode.light;
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