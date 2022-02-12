import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/ui/widgets/contact_widget.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 700) {
            return ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi I\'m',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          kname,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          kabout,
                          style: Theme.of(context).textTheme.headline6,
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
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: FractionallySizedBox(
                        widthFactor: 0.5,
                        child: Image.asset('assets/profile.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Hi I\'m',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            kname,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      'assets/profile.jpg',
                      width: MediaQuery.of(context).size.width / 3,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  kabout,
                  style: Theme.of(context).textTheme.headline6,
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
            );
        },
      ),
    );
  }
}
