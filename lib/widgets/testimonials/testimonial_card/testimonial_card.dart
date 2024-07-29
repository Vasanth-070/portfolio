import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_text_theme_data.dart';
import 'package:portfolio/ui_utils/color_util.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/testimonials/testimonial_card/testimonial_card_model.dart';
import 'package:portfolio/widgets/testimonials/testimonial_card/testimonial_card_style.dart';

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({super.key, required this.model});
  final TestimonialCardModel model;
  @override
  Widget build(BuildContext context) {
    final style = TestimonialCardStyle();
    return Container(
      padding: style.cardPadding,
      height: style.height,
      color: Colorss.themeColor.defaultt,
      child: Column(
        children: [
          Image.asset(
            getAssetPath(model.imageUrl),
            height: style.imageSize.height,
            width: style.imageSize.width,
            fit: BoxFit.contain,
          ),
          Gap(style.verticalSpace),
          SizedBox(
            width: style.textBoxWidth,
            child: Text(
              model.review,
              style: AppTextTheme.body2(color: Colorss.themeColor.gray600),
            ),
          ),
          Gap(style.verticalSpace),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                model.name,
                style: AppTextTheme.subtitleSemiBold(
                    color: Colorss.themeColor.gray900),
                textAlign: TextAlign.start,
              ),
              Gap(style.verticalSpace2),
              Text(
                model.designation,
                style: AppTextTheme.body3(color: Colorss.themeColor.gray600),
              )
            ],
          )
        ],
      ),
    );
  }
}
