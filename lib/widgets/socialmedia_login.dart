import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaLogin extends StatefulWidget {
  final String url,image;
  const SocialMediaLogin({super.key, required this.url, required this.image});

  @override
  State<SocialMediaLogin> createState() => _SocialMediaLoginState();
}

class _SocialMediaLoginState extends State<SocialMediaLogin> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final Uri url = Uri.parse(widget.url);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child:  CircleAvatar(
        backgroundImage: AssetImage(widget.image),
        radius: 13,
      ),
    );
  }
}
