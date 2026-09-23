import 'package:url_launcher/url_launcher.dart';

class SocialLinks {
  static Future<void> whatsapp() async {
    final Uri url = Uri.parse(
      'https://wa.me/34694293628',
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  static Future<void> instagram() async {
    final Uri url = Uri.parse(
      'https://www.instagram.com/innestetic',
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  static Future<void> facebook() async {
    final Uri url = Uri.parse(
      'https://www.facebook.com/innestetic',
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  static Future<void> email() async {
    final Uri url = Uri(
      scheme: 'mailto',
      path: 'info@innestetic.es',
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}