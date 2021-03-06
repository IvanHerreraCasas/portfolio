import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/models/category.dart';
import 'package:portfolio/ui/widgets/skill_widget.dart';

class SkillCategoryWidget extends StatelessWidget {
  const SkillCategoryWidget({Key? key, required this.skillCategory}) : super(key: key);

  final SkillCategory skillCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: ExpandablePanel(
          header: Text(
            skillCategory.name,
            style: Theme.of(context).textTheme.headline4,
          ),
          collapsed: Wrap(
            alignment: WrapAlignment.center,
            spacing: 30,
            runSpacing: 30,
            children: skillCategory.skills
                .map(
                  (skill) => SvgPicture.asset(
                    skill.svgAssetpath,
                    height: 45,
                    width: 45,
                  ),
                )
                .toList(),
          ),
          expanded: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: skillCategory.skills
                .map(
                  (skill) => SkillWidget(skill: skill),
                )
                .toList(),
          ),
          theme: const ExpandableThemeData(
            iconPlacement: ExpandablePanelIconPlacement.left,
            bodyAlignment: ExpandablePanelBodyAlignment.center,
            tapBodyToExpand: true,
            useInkWell: false,
            iconSize: 30,
          ),
        ),
      ),
    );
  }
}
