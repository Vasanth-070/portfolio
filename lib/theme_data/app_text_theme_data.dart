import 'package:flutter/material.dart';
import 'package:portfolio/app_context.dart';

class AppTextTheme {
  static TextStyle heading1({required Color color}) => TextStyle(
      fontSize: isTabOrDesk ? 48 : 36,
      fontWeight: isTabOrDesk ? FontWeight.w700 : FontWeight.w600,
      color: color);

  static TextStyle heading2({required Color color}) =>
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: color);

  static TextStyle heading3SemiBold({required Color color}) =>
      TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: color);

  static TextStyle heading3Bold({required Color color}) =>
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: color);

  static TextStyle subtitle({required Color color}) => TextStyle(
      fontSize: 18, fontWeight: FontWeight.w400, color: color, height: 1.5);
  static TextStyle subtitleBold({required Color color}) => TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: color, height: 1.55);

  static TextStyle body1({required Color color}) => TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: color, height: 1.5);

  static TextStyle body2({required Color color}) => TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: color, height: 1.5);

  static TextStyle body2Medium({required Color color}) {
    return TextStyle(
        fontSize: 16, fontWeight: FontWeight.w500, color: color, height: 1.5);
  }

  static TextStyle body2SemiBold({required Color color}) => TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: color, height: 1.5);

  static TextStyle body2UnderLine({required Color color}) => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: color,
      height: 1.5,
      decoration: TextDecoration.underline);

  static TextStyle body3({required Color color}) => TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: color, height: 1.42);

  static TextStyle body3Medium({required Color color}) => TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: color, height: 1.42);
}
