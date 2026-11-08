import 'package:flutter/foundation.dart' show debugPrint;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

/// The privacy policy, published on GitHub Pages from docs/privacy/ (via the
/// pratiyush.github.io repository). Also the stores' privacy policy URL.
final privacyPolicyUrl = Uri.parse(
  'https://pratiyush.github.io/tongue-twisters/privacy/',
);

/// Opens a link in the browser; false if no app takes it. Tests override it.
final linkOpenerProvider = Provider<Future<bool> Function(Uri)>(
  (ref) => (uri) async {
    try {
      // No canLaunchUrl first: on Android 11+ it needs a <queries> entry,
      // while launching simply reports false when no app takes the link.
      return await launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (e) {
      debugPrint('No app for $uri: $e');
      return false;
    }
  },
);
