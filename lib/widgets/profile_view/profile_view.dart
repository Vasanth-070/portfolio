import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/ui_utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/components/icon_with_image.dart';
import 'package:portfolio/widgets/profile_view/profile_view_style.dart';
import 'package:portfolio/widgets/profile_view/profile_view_vm.dart';

class ProfileView extends StatelessWidget {
  late final ProfileViewViewModel vm;
  ProfileView({super.key}) {
    vm = ProfileViewViewModel();
  }

  @override
  Widget build(BuildContext context) {
    final styler = ProfileViewStyle();
    return Container(
      color: Constants.themeColor.defaultt,
      padding: styler.padding,
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: styler.descriptionWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  vm.title,
                  style: AppTextTheme.heading1(
                      color: Constants.themeColor.gray900),
                ),
                Gap(styler.verticalSpace),
                Text(
                  vm.subtitle,
                  style:
                      AppTextTheme.body2(color: Constants.themeColor.gray600),
                ),
                Gap(styler.verticalSpace2),
                detailsWithIcon(
                    styler,
                    Icon(
                      Icons.location_on_outlined,
                      size: styler.locationSize,
                      color: Constants.themeColor.gray600,
                    ),
                    vm.location),
                Gap(styler.verticalSpace3),
                detailsWithIcon(
                    styler,
                    Container(
                      alignment: Alignment.center,
                      height: styler.locationSize,
                      width: styler.locationSize,
                      child: Icon(
                        Icons.circle,
                        color: ColorConstants.green10B981,
                        size: styler.onlineDotSize,
                      ),
                    ),
                    vm.availability),
                Gap(styler.verticalSpace2),
                Row(
                  children: [
                    for (var image in vm.connectivityApps)
                      Container(
                        padding: styler.connectingAppsPadding,
                        margin: styler.connectingAppsMargin,
                        child: ImageIcon(
                          AssetImage(getAssetPath(image)),
                          size: styler.socialAppSize.height,
                          color: Constants.themeColor.gray600,
                        ),
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget detailsWithIcon(
          ProfileViewStyle styler, Widget iconWidget, String text) =>
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          iconWidget,
          Gap(styler.verticalSpace3),
          Text(
            text,
            style: AppTextTheme.body2(color: Constants.themeColor.gray600),
          )
        ],
      );
}
