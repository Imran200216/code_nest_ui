import 'package:flutter/material.dart';

class CodeNestCircularProgressLoader extends StatelessWidget {
  final double size;
  final Color? color;
  final Color? backgroundColor;
  final double strokeWidth;
  final StrokeCap strokeCap;
  final String? semanticsLabel;
  final double? value;

  const CodeNestCircularProgressLoader({
    super.key,
    this.size = 24.0,
    this.color,
    this.backgroundColor,
    this.strokeWidth = 4.0,
    this.strokeCap = StrokeCap.round,
    this.semanticsLabel,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        color: color ?? Theme.of(context).colorScheme.primary,
        backgroundColor: backgroundColor,
        semanticsLabel: semanticsLabel,
        value: value,
        strokeCap: strokeCap,
      ),
    );
  }
}
