import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/ui/widgets/contact_widget.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      width: double.infinity,
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi I\'m',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      kname,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      kabout,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        ContactWidget(
                          icon: FontAwesomeIcons.github,
                          link: 'https://github.com/Ivan-H-C',
                        ),
                        ContactWidget(
                          icon: FontAwesomeIcons.twitter,
                          link: 'https://twitter.com/ivanhc_pp',
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    child: Placeholder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
