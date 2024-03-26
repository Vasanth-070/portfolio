import 'package:flutter/material.dart';
import 'package:portfolio/ui_utils/colors.dart';
import 'package:portfolio/ui_utils/ui_util.dart';
import 'package:portfolio/utils/constants.dart';

class AppThemeData {
  static final lightTheme = ThemeData(
      fontFamily: Constants.defaultFont,
      primaryColor: ColorConstants.black111827,
      primaryColorLight: ColorConstants.black4B5563,
      hoverColor: ColorConstants.whiteF3F4F6,
      highlightColor: ColorConstants.blackE5E7EB,
      dialogBackgroundColor: ColorConstants.whiteF9FAFB,
      primarySwatch: generateMaterialColor(ColorConstants.black111827),
      canvasColor: ColorConstants.white,
     );

  static final darkTheme = ThemeData(
      fontFamily: Constants.defaultFont,
      primaryColor: ColorConstants.black111827,
      primaryColorLight: ColorConstants.black4B5563,
      hoverColor: ColorConstants.whiteF3F4F6,
      highlightColor: ColorConstants.blackE5E7EB,
      dialogBackgroundColor: ColorConstants.whiteF9FAFB,
      primarySwatch: generateMaterialColor(ColorConstants.black111827),
      canvasColor: ColorConstants.white,
     );
}
