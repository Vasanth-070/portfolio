import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/about_me/about_me_vm.dart';
import 'package:portfolio/widgets/components/section_tag.dart';
import 'package:portfolio/widgets/components/stacked_image.dart';

class AboutMeView extends StatelessWidget {
  AboutMeView({super.key});
  final vm = AboutMeVm();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: vm.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SectionTag(text: vm.aboutMe),
          Gap(vm.verticalSpace),
          Row(
            children: [
              StackedImage(
                imageAlignment: Alignment.topRight,
                imageSize: vm.imageSize,
                image: vm.image,
                borderColor: Constants.themeColor.gray50,
              ),
              const Spacer(),
              SizedBox(
                width: vm.textBoxWidth,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      vm.curious,
                      style: AppTextTheme.heading3SemiBold(
                          color: Constants.themeColor.gray900),
                    ),
                    Gap(vm.verticalSpace2),
                    for (var para in vm.descriptions)
                      Container(
                        margin: EdgeInsets.only(bottom: vm.verticalSpace3),
                        child: Text(
                          para,
                          style: AppTextTheme.body2(
                              color: Constants.themeColor.gray600),
                        ),
                      ),
                    Text(
                      vm.quickBits,
                      style: AppTextTheme.body2(
                          color: Constants.themeColor.gray600),
                    ),
                    Wrap(children: [
                      for (var ability in vm.abilities) bulletText(ability)
                    ]),
                    Gap(vm.verticalSpace2),
                    Text(
                      vm.oneLastThing,
                      style: AppTextTheme.body2(
                          color: Constants.themeColor.gray600),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget bulletText(text) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(vm.bulletTextGap),
          Container(
            decoration: BoxDecoration(
                color: Constants.themeColor.gray600, shape: BoxShape.circle),
            height: 5,
            width: 5,
          ),
          Gap(vm.bulletTextGap),
          Text(
            text,
            style: AppTextTheme.body2(color: Constants.themeColor.gray600),
          )
        ],
      );
}
