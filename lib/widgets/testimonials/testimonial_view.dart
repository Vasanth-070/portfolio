import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/components/section_tag.dart';
import 'package:portfolio/widgets/testimonials/testimonial_card/testimonial_card.dart';
import 'package:portfolio/widgets/testimonials/testimonial_view_model.dart';
import 'package:portfolio/widgets/testimonials/testimonial_view_style.dart';

class TestimonialView extends StatelessWidget {
  TestimonialView({super.key});
  final vm = TestimonialViewModel();
  @override
  Widget build(BuildContext context) {
    final style = TestimonialViewStyle();
    return Container(
      padding: style.columnPadding,
      child: Column(
        children: [
          SectionTag(text: vm.sectionTitle),
          Gap(style.verticalSpace),
          Text(
            vm.description,
            style: AppTextTheme.subtitle(color: Constants.themeColor.gray600),
          ),
          Gap(style.verticalSpace2),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < vm.testimonials.length; i++)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TestimonialCard(model: vm.testimonials[i]),
                    if (i != vm.testimonials.length - 1)
                      Gap(style.horizontalSpace)
                  ],
                )
            ],
          )
        ],
      ),
    );
  }
}
