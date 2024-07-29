import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/ui_utils/scale_on_hover.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/url_util.dart';
import 'package:portfolio/widgets/components/section_tag.dart';
import 'package:portfolio/widgets/skills_view/skills_view_vm.dart';

class SkillsView extends StatelessWidget {
  SkillsView({super.key});
  final vm = SkillsViewVm();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SectionTag(text: vm.skillsTitle),
        Gap(vm.verticalSpace),
        Text(
          vm.skillsGoodAt,
          style: AppTextTheme.subtitle(color: Constants.themeColor.gray600),
        ),
        Gap(vm.verticalSpace2),
        Wrap(
          spacing: vm.skillsHorizontalSpacing,
          runSpacing: vm.skillsVerticalSpacing,
          children: [
            for (var skill in vm.skills)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ScaleOnHoverWidget(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeOut,
                    hoveredScale: 1.5,
                    child: InkWell(
                      onTap: () => checAndLaunchUrl(url: skill.url),
                      child: ImageIcon(
                        AssetImage(getAssetPath(skill.imageName)),
                        size: vm.skillIconSize.height,
                      ),
                    ),
                  ),
                  Gap(vm.verticalSpace3),
                  Text(skill.name,
                      style: AppTextTheme.body1(
                        color: Constants.themeColor.gray600,
                      )),
                ],
              )
          ],
        )
      ],
    );
  }
}
