import 'package:flutter/material.dart';
import 'package:portfolio/ui/sections/sections.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            About(),
            Skills(),
            Projects(),
            Contacts(),
          ],
        ),
      ),
    );
  }
}