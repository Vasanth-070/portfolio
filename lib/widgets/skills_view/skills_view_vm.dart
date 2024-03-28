import 'dart:ui';

class SkillsViewVm {
  final skillsTitle = "Skills";
  final skillsGoodAt =
      "The skills, tools and technologies I am really good at:";
  List<(String, String)> skills = [
    ("flutter.png", "Javascript"),
    ("flutter.png", "Flutter"),
    ("flutter.png", "Typescript"),
    ("flutter.png", "Sass/Scss"),
    ("flutter.png", "Figma"),
    ("flutter.png", "Git"),
    ("flutter.png", "Postman"),
    ("flutter.png", "Xcode"),
    ("flutter.png", "Swift"),
    ("flutter.png", "Dart"),
  ];

  double get verticalSpace => 16;
  double get verticalSpace2 => 48;
  double get verticalSpace3 => 8;
  Size get skillIconSize => const Size(24, 24);
  double get skillsHorizontalSpacing => 86.87;
  double get skillsVerticalSpacing => 48;
}
