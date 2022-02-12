import 'package:flutter/material.dart';
import 'package:portfolio/ui/sections/sections.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemScrollController = ItemScrollController();
    final width = MediaQuery.of(context).size.width;
    const widthBreakPoint = 450;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: width > widthBreakPoint ? 50 : 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'About',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                onTap: () => itemScrollController.scrollTo(
                  index: 0,
                  duration: kTabScrollDuration,
                ),
              ),
              SizedBox(width: width > widthBreakPoint ? 50 : 20),
              InkWell(
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Skills',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                onTap: () => itemScrollController.scrollTo(
                  index: 1,
                  duration: kTabScrollDuration,
                ),
              ),
              SizedBox(width: width > widthBreakPoint ? 50 : 20),
              InkWell(
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Projects',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                onTap: () => itemScrollController.scrollTo(
                  index: 2,
                  duration: kTabScrollDuration,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ScrollablePositionedList.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemScrollController: itemScrollController,
        itemCount: 3,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return const About();
            case 1:
              return const Skills();
            case 2:
              return const Projects();
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
