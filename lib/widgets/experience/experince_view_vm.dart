class ExperinceViewVm {
  final experienceTag = "Experience";
  final title = "Here is a quick summary of my most recent experiences:";
  final List<ExperienceData> experienceData = [
    ExperienceData('profile_pic.jpeg','Splashlearn','Nov 2021 - Present',[
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Ut pretium arcu et massa semper, id fringilla leo semper.",
            "Sed quis justo ac magna.",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
          ]),
    ExperienceData('profile_pic.jpeg','HomeCredit','Nov 2021 - Present',[
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Ut pretium arcu et massa semper, id fringilla leo semper.",
            "Sed quis justo ac magna.",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
          ]),
          ExperienceData('profile_pic.jpeg','SocGen','Nov 2021 - Present',[
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Ut pretium arcu et massa semper, id fringilla leo semper.",
            "Sed quis justo ac magna.",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
          ])
  ];
  double get verticalSpace => 16;
  double get verticalSpace2 => 48;
}

class ExperienceData {
  final String companyImage;
  final String companyName;
  final String duration;
  final List<String> expDescription;
  ExperienceData(this.companyImage, this.companyName, this.duration, this.expDescription);
}
