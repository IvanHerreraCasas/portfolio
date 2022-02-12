import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/ui/widgets/project_widget.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headline3,
          ),
          ...List.generate(
            projects.length,
            (index) => ProjectWidget(project: projects[index], isLeft: index % 2 != 0),
          ),
        ],
      ),
    );
  }
}
