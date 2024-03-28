import 'package:flutter/material.dart';

class ProfileViewStyle {
  late BuildContext context;
  ProfileViewStyle();
  EdgeInsets get connectingAppsPadding => const EdgeInsets.all(12);
  EdgeInsets get connectingAppsMargin => const EdgeInsets.only(right: 8);
  Size get socialAppSize => const Size(24, 24);
  double get descriptionWidth => 768;
  double get verticalSpace => 8;
  double get verticalSpace3 => 8;
  double get verticalSpace2 => 48;
  double get locationSize => 24;
  double get onlineDotSize => 8;
  // double pictureLeftPadding = 80;
  Size profilePicSize = const Size(280 - 7 * 2, 320 - 7 * 2);
}
