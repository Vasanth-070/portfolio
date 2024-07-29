import 'package:portfolio/models/connectivity_app_model.dart';

class GetInTouchVm {
  final String title = 'Get in touch';
  final String subtitle =
      "What’s next? Feel free to reach out to me if you're looking for a developer, have a query, or simply want to connect";
  final email = 'vasanthkzoomin@gmail.com';
  final phoneNumber = '6303999699';
  final socialMediaTitle = 'You may also find me on these platforms!';
  final connectivityApps = [ConnectivityAppModel(imageName: 'git.png', url: 'https://www.github.com'),ConnectivityAppModel(imageName: 'twitter.png', url: 'https://www.x.com'),ConnectivityAppModel(imageName: 'figma.png', url: 'https://www.figma.com')];
}
