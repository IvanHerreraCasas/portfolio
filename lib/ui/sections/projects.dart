import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/ui/widgets/project_widget.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1000),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          projects.length,
          (index) => ProjectWidget(project: projects[index], isLeft: index % 2 != 0),
        ),
      ),
    );
  }
}
