import 'package:flutter/material.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/utils/constants.dart';

class SectionTag extends StatelessWidget {
  final String text;
  const SectionTag({super.key, required this.text});

  final radius = 12.0;
  final padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 4);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Constants.themeColor.gray200,
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      padding: padding,
      child: Text(
        text,
        style: AppTextTheme.body3Medium(color: Constants.themeColor.gray600),
      ),
    );
  }
}
