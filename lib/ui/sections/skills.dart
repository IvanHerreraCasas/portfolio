import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/ui/widgets/skill_category_widget.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: skillCategories
                .map(
                  (skillCategory) => SkillCategoryWidget(skillCategory: skillCategory),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
