import 'package:flutter/material.dart';
import 'package:portfolio/ui_utils/colors.dart';

import '../../app_context.dart';
import '../../theme_data/app_text_theme_data.dart';

class NavButton extends StatefulWidget {
  final String title;
  const NavButton({super.key, required this.title});

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) {
            setState(() {
              onHover = true;
            });
          },
          onExit: (event) {
            setState(() {
              onHover = false;
            });
          },
          child: Text(widget.title,
              style: AppTextThemeData.body2Medium(
                  color: onHover
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColorLight))),
    );
  }
}
