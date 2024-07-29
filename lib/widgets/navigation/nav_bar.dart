// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_theme_data.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/components/cta.dart';
import 'package:portfolio/widgets/navigation/nav_bar_styler.dart';

import '../components/hoverable_widget.dart';
import 'nav_button.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.navStreamController});
  final StreamController<NavButtonType> navStreamController;
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
      decoration: BoxDecoration(
          color: Colors.transparent,
          border:
              Border(bottom: BorderSide(color: Constants.themeColor.defaultt))),
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
          navStreamController: widget.navStreamController,
        )
      ]),
    );
  }
}

class RightNavView extends StatelessWidget {
  final NavBarStyler styler;
  final StreamController<NavButtonType> navStreamController;

  const RightNavView(
      {super.key, required this.styler, required this.navStreamController});

  Iterable<Widget> get navButtons {
    return NavButtonType.values.map((btn) => NavButton(
          type: btn,
          onTap: () => navStreamController.add(btn),
        ));
  }

  String get modeChangeIcon {
    return AppThemeData.instance.theme == ThemeMode.light
        ? getAssetPath('dark_mode.png')
        : getAssetPath('sun_light.png');
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
              child: ImageIcon(
                AssetImage(modeChangeIcon),
                size: 24,
                color: Constants.themeColor.gray600,
              ),
            ),
            const Gap(16),
            CTA(data: styler.ctaData)
          ],
        ),
      ),
    );
  }
}

enum NavButtonType {
  about('About'),
  work('Work'),
  testimonial('Testimonial'),
  contact('Contact');

  const NavButtonType(this.value);
  final String value;

  int get id {
    switch (this) {
      case NavButtonType.about:
        return 1;
      case NavButtonType.work:
        return 2;
      case NavButtonType.testimonial:
        return 3;
      case NavButtonType.contact:
        return 4;
    }
  }
}
