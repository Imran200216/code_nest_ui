import 'package:flutter/material.dart';

class CodeNestContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final AlignmentGeometry? alignment;
  final Gradient? gradient;

  const CodeNestContainer({
    super.key,
    this.width,
    this.height,
    this.color,
    this.borderRadius,
    this.padding,
    this.margin,
    this.border,
    this.boxShadow,
    this.child,
    this.alignment,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: alignment,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        border: border,
        boxShadow: boxShadow,
        gradient: gradient,
      ),
      child: child,
    );
  }
}
