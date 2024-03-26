import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppContext {
  static late final BuildContext context;
  static AppTheme theme = AppTheme.light;

  static bool get isLightThemeEnabled {
    return theme == AppTheme.light;
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

enum AppTheme { light, dark }
