import 'package:flutter/material.dart';
import 'package:portfolio/ui_utils/ui_util.dart';
import 'package:portfolio/widgets/components/cta.dart';
import 'package:portfolio/widgets/navigation/nav_bar_styler.dart';

import '../../app_context.dart';
import '../../utils/constants.dart';
import '../components/hoverable_widget.dart';
import '../components/icon_with_image.dart';
import 'nav_button.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
      color: Colors.transparent,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "Vasanth",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            RightNavView()
          ]),
    );
  }
}

class RightNavView extends StatelessWidget {
  const RightNavView({super.key});

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
    final styler = NavBarStyler();
    return IntrinsicHeight(
      child: SizedBox(
        height: 36,
        child: Row(
          children: [
            ...navButtons,
            hSpace(24),
            VerticalDivider(
              width: 1,
              color: Theme.of(AppContext.context).primaryColor,
            ),
            hSpace(24),
            HoverableWidget(
              data: styler.themeIconHoverData,
              child: IconWithImage(data: styler.themeIconData),
            ),
            hSpace(16),
            CTA(data: styler.ctaData)
          ],
        ),
      ),
    );
  }
}
