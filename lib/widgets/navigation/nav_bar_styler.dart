import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

import '../../theme_data/app_text_theme_data.dart';
import '../components/cta.dart';
import '../components/hoverable_widget.dart';
import '../components/icon_with_image.dart';

class NavBarStyler {
  late BuildContext context;
  NavBarStyler();

  setupBuildContext(BuildContext bContext) {
    context = bContext;
  }

  CTAData get ctaData => CTAData(
      text: "Download CV",
      size: const Size(136, 36),
      textStyle: AppTextTheme.body2Medium(color: Constants.themeColor.gray50),
      backgroundColor: Constants.themeColor.gray900,
      hoverColor: Constants.themeColor.gray700,
      cornerRadius: 12,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4));

  final themeIconData = const IconWithImageData(
      iconSize: Size(24, 24),
      imageSize: Size(24, 24),
      imagePath: "assets/images/sun-light.png");

  HoverableWidgetData get themeIconHoverData => HoverableWidgetData(
        backgroundColor: Colors.transparent,
        hoveredColor: Constants.themeColor.gray100,
        size: const Size(36, 36),
        borderRadius: 12,
      );
}
