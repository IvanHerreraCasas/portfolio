import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/ui/widgets/logo_widget.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1000),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),        
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Programming languages',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 20),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              spacing: 30,
              children: languageLogos.map((logo) => LogoWidget(logo: logo)).toList(),
            ),
            const SizedBox(height: 40),
            Text(
              'Flutter',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 20),
            ...flutterSkills.map((skill) => Text(skill, style: Theme.of(context).textTheme.bodyText1,)),
            const SizedBox(height: 40),
            Text(
              'Databases',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 20),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              spacing: 30,
              children: dataBaseLogos.map((logo) => LogoWidget(logo: logo)).toList(),
            ),
            Text(
              'Version control',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 20),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              spacing: 30,
              children: versionControlLogos.map((logo) => LogoWidget(logo: logo)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
