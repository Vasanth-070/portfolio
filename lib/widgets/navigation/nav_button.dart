import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/navigation/nav_bar.dart';

import '../../theme_data/app_text_theme_data.dart';

class NavButton extends StatefulWidget {
  final NavButtonType type;
  final VoidCallback onTap;
  const NavButton({super.key, required this.type, required this.onTap});

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
          child: InkWell(
            onTap: widget.onTap,
            child: Text(widget.type.value,
                style: AppTextTheme.body2Medium(
                    color: onHover
                        ? Constants.themeColor.gray900
                        : Constants.themeColor.gray600)),
          )),
    );
  }
}
