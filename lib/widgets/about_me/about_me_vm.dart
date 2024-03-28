import 'dart:ui';

import 'package:flutter/material.dart';

class AboutMeVm {
  final image = "profile_pic.jpeg";
  final aboutMe = "About me";
  final curious = 'Curious about me? Here you have it:';
  final descriptions = [
    "I'm a passionate, self-proclaimed designer who specializes in full stack development (React.js & Node.js). I am very enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.",
    "I began my journey as a web developer in 2015, and since then, I've continued to grow and evolve as a developer, taking on new challenges and learning the latest technologies along the way. Now, in my early thirties, 7 years after starting my web development journey, I'm building cutting-edge web applications using modern technologies such as Next.js, TypeScript, Nestjs, Tailwindcss, Supabase and much more.",
    "I am very much a progressive thinker and enjoy working on products end to end, from ideation all the way to development.",
    "When I'm not in full-on developer mode, you can find me hovering around on twitter or on indie hacker, witnessing the journey of early startups or enjoying some free time. You can follow me on Twitter where I share tech-related bites and build in public, or you can follow me on GitHub.",
  ];
  final quickBits = "Finally, some quick bits about me.";
  final abilities = [
    "B.E. in Computer Engineering",
    "Avid learner",
    "Full time freelancer",
    "Aspiring indie hacker"
  ];
  final oneLastThing =
      "One last thing, I'm available for freelance work, so feel free to reach out and say hello! I promise I don't bite 😉";

  final imageSize = const Size(386, 466);
  final textBoxWidth = 584.0;
  double get bulletTextGap => 10;
  double get gridViewHeight => 58;
  final padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 0);
  double get verticalSpace => 48.0;
  double get verticalSpace2 => 24.0;
  double get verticalSpace3 => 16.0;
}
