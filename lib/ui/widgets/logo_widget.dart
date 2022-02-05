import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/models/logo.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key, required this.logo}) : super(key: key);

  final Logo logo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          logo.svgAssetpath,
          width: 50,
          height: 50,
        ),
        Text(logo.name),
      ],
    );
  }
}
