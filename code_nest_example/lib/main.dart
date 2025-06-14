import 'package:code_nest_example/switch/code_nest_switch_example.dart';
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
      home: CodeNestSwitchExample(),
    );
  }
}
