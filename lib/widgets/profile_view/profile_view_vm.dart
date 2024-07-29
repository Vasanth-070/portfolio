import 'package:portfolio/models/connectivity_app_model.dart';

class ProfileViewViewModel {
  final String title = 'Hi, I’m Vasanth 👋';
  final String subtitle =
      "I'm a full stack developer (React.js & Node.js) with a focus on creating (and occasionally designing) exceptional digital experiences that are fast, accessible, visually appealing, and responsive. Even though I have been creating web applications for over 7 years, I still love it as if it was something new.";
  final availability = "Available for new projects";
  final location = "Ahmedabad, India";
  final image = "profile_pic.jpeg";
  final connectivityApps = [ConnectivityAppModel(imageName: 'git.png', url: 'https://www.github.com'),ConnectivityAppModel(imageName: 'twitter.png', url: 'https://www.x.com'),ConnectivityAppModel(imageName: 'figma.png', url: 'https://www.figma.com')];
}
