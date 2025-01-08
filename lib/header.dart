import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWidget({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _copyToClipboard(BuildContext context) async {
    const email = "felicianojulian1@gmail.com";
    await Clipboard.setData(const ClipboardData(text: email));
    
    // Show a snackbar to confirm the copy
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email copied to clipboard'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const SelectableText(
        "Julian Feliciano",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      actions: [
        // const Text(
        //   "Important Links",
        //   style: TextStyle(
        //     fontSize: 12,
        //   ),
        // ),

        // const SizedBox(width: 8),

        // const Icon(
        //   Icons.arrow_forward,
        //   size: 18,
        //   color: Colors.black,
        // ),

        // const SizedBox(width: 8),

        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => _launchURL('https://github.com/jfelic'),
            child: const Image(
              image: AssetImage('assets/github.png'),
              height: 30,
              width: 30,
            ),
          ),
        ),
        const SizedBox(width: 10),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => _launchURL('https://www.linkedin.com/in/jfelic/'),
            child: const Image(
              image: AssetImage('assets/linkedin.png'),
              height: 30,
              width: 30,
            ),
          ),
        ),
        const SizedBox(width: 10),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => _copyToClipboard(context),
            child: const Image(
              image: AssetImage('assets/email.png'),
              height: 30,
              width: 30,
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}