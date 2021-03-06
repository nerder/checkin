// @dart=2.9

import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtil {
  Future<bool> launchUrl(String url) async {
    final uri = Uri.encodeFull(url);
    if (await canLaunch(uri)) {
      return await launch(uri, forceSafariVC: false);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
