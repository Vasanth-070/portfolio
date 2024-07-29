import 'package:portfolio/utils/log_util.dart';
import 'package:url_launcher/url_launcher.dart';

checAndLaunchUrl({required String url}) async {
  try {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  } catch (err) {
    debugLog('Invalid Url', error: err);
  }
}
