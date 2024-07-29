import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/ui_utils/scale_on_hover.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/components/section_tag.dart';
import 'package:portfolio/widgets/projects_done/project_card/project_card_model.dart';
import 'package:portfolio/widgets/projects_done/project_card/projects_card_style.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final ProjectCardModel model;
  final bool showPreviewOnLeft;
  const ProjectCard(
      {super.key, required this.model, required this.showPreviewOnLeft});

  List<Widget> children(ProjectsCardStyle style) {
    final children = [
      Container(
        padding: style.imagePadding,
        color: Constants.themeColor.gray50,
        child: ScaleOnHoverWidget(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          hoveredScale: 1.03,
          child: Container(
            decoration:
                BoxDecoration(borderRadius: style.imageRadius, boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  offset: const Offset(0, 10),
                  blurRadius: 12),
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 0),
                blurRadius: 12,
              )
            ]),
            height: style.imageSize.height,
            width: style.imageSize.width,
            child: Image.asset(
              getAssetPath(model.preview),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Container(
        padding: style.imagePadding,
        color: Constants.themeColor.defaultt,
        child: SizedBox(
          width: style.textBoxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: AppTextTheme.subtitleSemiBold(
                    color: Constants.themeColor.gray900),
              ),
              Gap(style.verticalSpace),
              Text(model.description,
                  style: AppTextTheme.body2(
                    color: Constants.themeColor.gray600,
                  )),
              Gap(style.verticalSpace),
              Wrap(
                runSpacing: style.wrapinternalGap,
                spacing: style.wrapCrossGap,
                children: [
                  for (var tech in model.techStacksUsed) SectionTag(text: tech)
                ],
              ),
              Gap(style.verticalSpace),
              InkWell(
                onTap: _launchUrl,
                child: Icon(
                  Icons.open_in_new,
                  size: style.openIconSize,
                  color: Constants.themeColor.gray600,
                ),
              )
            ],
          ),
        ),
      )
    ];
    return showPreviewOnLeft ? children : children.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    final style = ProjectsCardStyle();
    return Row(
      children: children(style),
    );
  }

  void _launchUrl() async {
    try {
      final url = Uri.parse(model.url);
      if (await canLaunchUrl(url)) {
        launchUrl(url);
      }
    } catch (err) {
      //error while launching url
    }
  }
}
