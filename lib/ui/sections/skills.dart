import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/ui/widgets/skill_category_widget.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: Theme.of(context).textTheme.headline3,
          ),
          ...skillCategories
              .map(
                (skillCategory) => SkillCategoryWidget(skillCategory: skillCategory),
              )
              .toList()
        ],
      ),
    );
  }
}
