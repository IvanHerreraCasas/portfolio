import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/models/contact.dart';
import 'package:url_launcher/link.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key, required this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(contact.link),
      target: LinkTarget.blank,
      builder: (context, followLink) => IconButton(
        padding: const EdgeInsets.all(20),
        onPressed: followLink,
        icon: FaIcon(
          IconDataBrands(contact.brandCodePoint),
        ),
      ),
    );
  }
}
