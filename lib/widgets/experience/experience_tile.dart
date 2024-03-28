import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/theme_data/app_theme_data.dart';
import 'package:portfolio/ui_utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:super_bullet_list/bullet_list.dart';

class ExperienceTile extends StatelessWidget {
  const ExperienceTile(
      {super.key,
      required this.companyLogo,
      required this.companyName,
      required this.duration,
      required this.description});
  final Image companyLogo;
  final String companyName;
  final String duration;
  final List<String> description;
  final padding = const EdgeInsets.all(32);
  final radius = 12.0;
  final gap = 48.0;
  final verticalSpace = 16.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 4),
                blurRadius: 3)
          ],
          color: bgColor,
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          companyLogo,
          Gap(gap),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                companyName,
                style: AppTextTheme.subtitleBold(
                    color: Constants.themeColor.gray900),
              ),
              Gap(verticalSpace),
              SuperBulletList(
                crossAxisMargin: 9.5,
                items: bulletWidgets,
                iconColor: Constants.themeColor.gray600,
                gap: 10,
                iconSize: 5,
              ),
            ],
          ),
          Gap(gap),
          Text(
            duration,
            style: AppTextTheme.body2(color: Constants.themeColor.gray700),
          ),
        ],
      ),
    );
  }

  List<Widget> get bulletWidgets {
    final List<Widget> list = [];
    for (var desc in description) {
      list.add(Text(
        desc,
        style: AppTextTheme.body2(color: Constants.themeColor.gray600),
      ));
    }
    return list;
  }

  Color get bgColor => AppThemeData.instance.theme == ThemeMode.light
      ? Colors.white
      : ColorConstants.black1f2937;
}
