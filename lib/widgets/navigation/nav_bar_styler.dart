import 'package:flutter/material.dart';
import 'package:portfolio/app_context.dart';

import '../../theme_data/app_text_theme_data.dart';
import '../../ui_utils/colors.dart';
import '../components/cta.dart';
import '../components/hoverable_widget.dart';
import '../components/icon_with_image.dart';

class NavBarStyler {
  final ctaData = CTAData(
      text: "Download CV",
      size: const Size(136, 36),
      textStyle:
          AppTextThemeData.body2Medium(color: ColorConstants.whiteF9FAFB),
      backgroundColor: Theme.of(AppContext.context).primaryColor,
      hoverColor: ColorConstants.black374151,
      cornerRadius: 12,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4));

  final themeIconData = const IconWithImageData(
      iconSize: Size(24, 24),
      imageSize: Size(24, 24),
      imagePath: "assets/images/sun-light.png");

  final themeIconHoverData = HoverableWidgetData(
    backgroundColor: Colors.transparent,
    hoveredColor: Theme.of(AppContext.context).hoverColor,
    size: const Size(36, 36),
    borderRadius: 12,
  );
}
