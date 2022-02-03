import 'package:flutter/material.dart';
import 'package:portfolio/theme/theme.dart';
import 'package:portfolio/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: AppTheme.light(),
      home: const HomePage(),
    );
  }
}
