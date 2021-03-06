import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/models/skill.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({Key? key, required this.skill}) : super(key: key);

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(skill.colorValue),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                skill.svgAssetpath,
                height: 50,
                width: 50,
              ),
              const SizedBox(width: 10),
              Text(
                skill.name,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: MarkdownBody(
              data: skill.description,  
              onTapLink: (text, href, title) {
                href != null ? launch(href) : null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
