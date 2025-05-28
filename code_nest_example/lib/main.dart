import 'package:code_nest_example/nav/code_nest_app_bar_example.dart';
import 'package:code_nest_example/nav/code_nest_bottom_nav_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Nest Widgets',
      home: CodeNestBottomNavExample(),
    );
  }
}
