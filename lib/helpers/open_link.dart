import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openLink({required String link}) async {
  if (!await launchUrl(
    Uri.parse(link),
    mode: LaunchMode.externalApplication,
  )) debugPrint('Could not launch $link');
}