import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/models/project.dart';
import 'package:url_launcher/link.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    Key? key,
    required this.project,
    required this.isLeft,
  }) : super(key: key);

  final Project project;
  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Row(
              textDirection: isLeft ? TextDirection.ltr : TextDirection.rtl,
              children: [
                Expanded(
                  child: Image.asset(
                    project.assetName,
                  ),
                ),
                const SizedBox(width: 50),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project.title,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(height: 20),
                      project.sourceCodePath != null
                          ? Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(project.sourceCodePath!),
                              builder: (context, followLink) {
                                return ElevatedButton(
                                  onPressed: followLink,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      FaIcon(
                                        FontAwesomeIcons.github,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'Source code',
                                      ),
                                    ],
                                  ),
                                );
                              },
                            )
                          : const SizedBox(),
                      const SizedBox(height: 20),
                      Text(
                        project.description,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
          return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 20),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Image.asset(
                      project.assetName,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                project.sourceCodePath != null
                    ? Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(project.sourceCodePath!),
                        builder: (context, followLink) {
                          return ElevatedButton(
                            onPressed: followLink,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.github,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Source code',
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    : const SizedBox(),
                const SizedBox(height: 20),
                Text(
                  project.description,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            );
        },
      ),
    );
  }
}
