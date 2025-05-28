import 'package:flutter/material.dart';

class CodeNestToolTip extends StatelessWidget {
  final String message;
  final Widget child;

  // Tooltip customization
  final TextStyle? textStyle;
  final Color? tooltipColor;
  final double? verticalOffset;
  final EdgeInsetsGeometry? padding;
  final Duration? waitDuration;
  final Duration? showDuration;
  final bool? preferBelow;
  final Decoration? decoration;
  final double? height;
  final double? margin;

  const CodeNestToolTip({
    super.key,
    required this.message,
    required this.child,
    this.textStyle,
    this.tooltipColor,
    this.verticalOffset,
    this.padding,
    this.waitDuration,
    this.showDuration,
    this.preferBelow,
    this.decoration,
    this.height,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      textStyle: textStyle,
      decoration: decoration ??
          BoxDecoration(
            color: tooltipColor ?? Colors.black.withOpacity(0.9),
            borderRadius: BorderRadius.circular(6),
          ),
      verticalOffset: verticalOffset ?? 24,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      waitDuration: waitDuration ?? const Duration(milliseconds: 500),
      showDuration: showDuration ?? const Duration(seconds: 2),
      preferBelow: preferBelow ?? true,
      height: height,
      margin: margin != null ? EdgeInsets.all(margin!) : null,
      child: child,
    );
  }
}
