import 'package:flutter/material.dart';

class CodeNestAdaptiveSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  // Optional styling
  final Color? activeColor;
  final Color? trackColor;
  final Color? inactiveThumbColor;
  final Color? thumbColor;
  final EdgeInsetsGeometry? padding;

  // For scaling the switch
  final double scale;

  // Only affects Cupertino style
  final bool? applyCupertinoTheme;

  const CodeNestAdaptiveSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.trackColor,
    this.inactiveThumbColor,
    this.thumbColor,
    this.padding,
    this.scale = 1.0,
    this.applyCupertinoTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: Switch.adaptive(
        value: value,
        onChanged: onChanged,
        activeColor: activeColor,
        activeTrackColor: trackColor,
        inactiveThumbColor: inactiveThumbColor,
        thumbColor: thumbColor != null
            ? MaterialStateProperty.all(thumbColor)
            : null,
        trackColor: trackColor != null
            ? MaterialStateProperty.all(trackColor)
            : null,
        applyCupertinoTheme: applyCupertinoTheme ?? true,
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
    );
  }
}
