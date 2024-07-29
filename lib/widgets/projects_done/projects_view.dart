import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/components/section_tag.dart';
import 'package:portfolio/widgets/projects_done/project_card/project_card.dart';
import 'package:portfolio/widgets/projects_done/projects_view_style.dart';
import 'package:portfolio/widgets/projects_done/projects_view_vm.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final vm = ProjectsViewVm();

  @override
  Widget build(BuildContext context) {
    final style = ProjectsViewStyle();
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: 0, horizontal: style.columnPadding),
      child: Column(
        children: [
          SectionTag(text: vm.title),
          Gap(style.verticalSpace),
          Text(
            vm.subtitle,
            style: AppTextTheme.subtitle(color: Constants.themeColor.gray600),
          ),
          Gap(style.verticalSpace2),
          for (int i = 0; i < vm.projects.length; i++)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProjectCard(
                  model: vm.projects[i],
                  showPreviewOnLeft: i % 2 == 0,
                ),
                if (i != vm.projects.length - 1) Gap(style.verticalSpace2)
              ],
            )
        ],
      ),
    );
  }
}
