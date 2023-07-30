import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrl(String url) async {
  // ignore: deprecated_member_use
  if (!await launch(url)) {
    throw Exception('Could not launch $url');
  }
}