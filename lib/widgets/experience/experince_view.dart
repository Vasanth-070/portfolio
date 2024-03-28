import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/components/section_tag.dart';
import 'package:portfolio/widgets/experience/experience_tile.dart';
import 'package:portfolio/widgets/experience/experince_view_vm.dart';

class ExperienceView extends StatelessWidget {
  ExperienceView({super.key});
  final vm = ExperinceViewVm();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTag(text: vm.experienceTag),
        Gap(vm.verticalSpace),
        Text(
          vm.title,
          style: AppTextTheme.subtitle(color: Constants.themeColor.gray600),
        ),
        Gap(vm.verticalSpace2),
        for (var data in vm.experienceData)
          Container(
            margin: EdgeInsets.only(bottom: vm.verticalSpace2),
            child: ExperienceTile(
              companyLogo: Image.asset(
                getAssetPath(data.companyImage),
                height: 100,
                width: 200,
              ),
              companyName: data.companyName,
              duration: data.duration,
              description: data.expDescription,
            ),
          )
      ],
    );
  }
}
