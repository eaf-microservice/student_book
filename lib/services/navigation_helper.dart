import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:student_books/Pages/open_book.dart';

class NavigationHelper {
  static Future<void> navigateToBook(
    BuildContext context,
    String bookName,
    String driveId,
  ) async {
    // Check if it's a valid Google Drive ID (not a URL)
    if (driveId.startsWith('http')) {
      await launchExternalLink(driveId);
    } else {
      if (context.mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Book(bookName, driveId),
          ),
        );
      }
    }
  }

  static Future<void> launchExternalLink(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  static Future<void> launchPaymentLink(BuildContext context) async {
    const paymentUrl = 'https://www.paypal.com/paypalme/FouadE0F';
    await launchExternalLink(paymentUrl);
  }
}
