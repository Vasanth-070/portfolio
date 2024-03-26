import 'package:flutter/material.dart';
import 'package:portfolio/app_context.dart';

class AppTextThemeData {
  static final fontColor = Theme.of(AppContext.context).primaryColor;

  static final heading1 = TextStyle(
      fontSize: isTablet ? 48 : 36,
      fontWeight: isTablet ? FontWeight.w700 : FontWeight.w600,
      color: fontColor);

  static final heading2 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: fontColor);

  static final heading3SemiBold =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: fontColor);

  static final heading3Bold =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: fontColor);

  static final subtitle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w400, color: fontColor, height: 1.5);

  static final subtitleBold = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: fontColor,
      height: 1.55);

  static final body1 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: fontColor, height: 1.5);

  static final body2 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: fontColor, height: 1.5);

  static TextStyle body2Medium({required Color color}) {
    return TextStyle(
        fontSize: 16, fontWeight: FontWeight.w500, color: color, height: 1.5);
  }

  static final body2SemiBold = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: fontColor, height: 1.5);

  static final body2UnderLine = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: fontColor,
      height: 1.5,
      decoration: TextDecoration.underline);

  static final body3 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: fontColor,
      height: 1.42);

  static final body3Medium = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: fontColor,
      height: 1.42);
}
