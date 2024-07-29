import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/ui_utils/color_util.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/url_util.dart';
import 'package:portfolio/widgets/components/hoverable_widget.dart';
import 'package:portfolio/widgets/components/section_tag.dart';
import 'package:portfolio/widgets/get_in_touch/get_in_touch_style.dart';
import 'package:portfolio/widgets/get_in_touch/get_in_touch_vm.dart';

class GetInTouchView extends StatelessWidget {
  GetInTouchView({super.key});
  final vm = GetInTouchVm();

  @override
  Widget build(BuildContext context) {
    final style = GetInTouchStyle();
    return Column(
      children: [
        SectionTag(text: vm.title),
        Gap(style.verticalSpace),
        SizedBox(
            width: style.subtitleWidth,
            child: Text(
              vm.subtitle,
              style: AppTextTheme.subtitle(color: Colorss.themeColor.gray600),
              textAlign: TextAlign.center,
            )),
        Gap(style.verticalSpace2),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email_outlined,
                  size: style.emailSize,
                  color: Colorss.themeColor.gray600,
                ),
                Gap(style.horizontalSpace),
                Text(
                  vm.email,
                  style: AppTextTheme.heading2SemiBold(
                      color: Colorss.themeColor.gray900),
                ),
                Gap(style.horizontalSpace),
                copyIcon(style)
              ],
            ),
            Gap(style.verticalSpace3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_outlined,
                  size: style.emailSize,
                  color: Colorss.themeColor.gray600,
                ),
                Gap(style.horizontalSpace),
                Text(
                  vm.phoneNumber,
                  style: AppTextTheme.heading2SemiBold(
                      color: Colorss.themeColor.gray900),
                ),
                Gap(style.horizontalSpace),
                copyIcon(style)
              ],
            )
          ],
        ),
        Gap(style.verticalSpace2),
        Text(
          vm.socialMediaTitle,
          style: AppTextTheme.body2(color: Colorss.themeColor.gray600),
        ),
        Gap(style.verticalSpace4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: vm.connectivityApps
              .map((e) => HoverableWidget(
                    data: HoverableWidgetData(
                        backgroundColor: Colors.transparent,
                        hoveredColor: Colorss.themeColor.gray100,
                        size: style.iconContainerSize,
                        borderRadius: style.iconContainerRadius),
                    child: InkWell(
                      onTap: () => checAndLaunchUrl(url: e.url),
                      child: ImageIcon(
                        AssetImage(getAssetPath(e.imageName)),
                        size: style.iconSize,
                        color: Colorss.themeColor.gray600,
                      ),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }

  Widget copyIcon(GetInTouchStyle style) {
    return InkWell(
      onTap: () {},
      child: Icon(
        Icons.copy_outlined,
        size: style.emailSize,
        color: Colorss.themeColor.gray600,
      ),
    );
  }
}
