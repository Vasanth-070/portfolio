import 'dart:ui';

import 'package:portfolio/models/skill_model.dart';

class SkillsViewVm {
  final skillsTitle = "Skills";
  final skillsGoodAt =
      "The skills, tools and technologies I am really good at:";

  List<SkillModel> skills = [
    SkillModel(imageName: "flutter.png", name:"Javascript",url: 'https://www.dart.dev/overview'),
    SkillModel(imageName:"flutter.png", name:"Flutter",url:'https://www.dart.dev/overview'),
    SkillModel(imageName:"flutter.png", name:"Typescript",url:'https://www.dart.dev/overview'),
    SkillModel(imageName:"flutter.png", name:"Sass/Scss",url:'https://www.dart.dev/overview'),
    SkillModel(imageName:"flutter.png", name:"Figma",url:'https://www.dart.dev/overview'),
    SkillModel(imageName:"flutter.png", name:"Git",url:'https://www.dart.dev/overview'),
    SkillModel(imageName:"flutter.png", name:"Postman",url:'https://www.dart.dev/overview'),
    SkillModel(imageName:"flutter.png", name:"Xcode",url:'https://www.dart.dev/overview'),
    SkillModel(imageName:"flutter.png", name:"Swift",url:'https://www.dart.dev/overview'),
    SkillModel(imageName:"flutter.png", name:"Dart",url:'https://www.dart.dev/overview'),
  ];

  double get verticalSpace => 16;
  double get verticalSpace2 => 48;
  double get verticalSpace3 => 8;
  Size get skillIconSize => const Size(64, 64);
  double get skillsHorizontalSpacing => 86.87;
  double get skillsVerticalSpacing => 48;
}