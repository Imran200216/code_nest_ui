import 'package:flutter/material.dart';

class CodeNestVerticalSpacer extends StatelessWidget {
  final double space;

  const CodeNestVerticalSpacer(this.space, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: space);
  }
}

class CodeNestHorizontalSpacer extends StatelessWidget {
  final double space;

  const CodeNestHorizontalSpacer(this.space, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: space);
  }
}