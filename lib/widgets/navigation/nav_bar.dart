import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_theme_data.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/components/cta.dart';
import 'package:portfolio/widgets/navigation/nav_bar_styler.dart';

import '../components/hoverable_widget.dart';
import '../components/icon_with_image.dart';
import 'nav_button.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late NavBarStyler styler;

  @override
  void initState() {
    super.initState();
    styler = NavBarStyler();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    styler.setupBuildContext(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
      decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(bottom: BorderSide(color: Colors.white))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Text(
            "Vasanth",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Constants.themeColor.gray900),
          ),
        ),
        RightNavView(
          styler: styler,
        )
      ]),
    );
  }
}

class RightNavView extends StatelessWidget {
  final NavBarStyler styler;
  const RightNavView({super.key, required this.styler});

  List<Widget> get navButtons {
    return const [
      NavButton(title: 'About'),
      NavButton(title: 'Work'),
      NavButton(title: 'Testimonial'),
      NavButton(title: 'Contact')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SizedBox(
        height: 36,
        child: Row(
          children: [
            ...navButtons,
            const Gap(24),
            VerticalDivider(
              width: 1,
              color: Constants.themeColor.gray100,
            ),
            const Gap(24),
            HoverableWidget(
              data: styler.themeIconHoverData,
              onTapped: AppThemeData.instance.toggleAppTheme,
              child: IconWithImage(data: styler.themeIconData),
            ),
            const Gap(16),
            CTA(data: styler.ctaData)
          ],
        ),
      ),
    );
  }
}
