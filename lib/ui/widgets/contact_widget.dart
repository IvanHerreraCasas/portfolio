import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key, required this.icon, required this.link}) : super(key: key);

  final String link;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(link),
      target: LinkTarget.blank,
      builder: (context, followLink) => IconButton(
        padding: const EdgeInsets.all(20),
        onPressed: followLink,
        icon: FaIcon(
          icon,
        ),
      ),
    );
  }
}
