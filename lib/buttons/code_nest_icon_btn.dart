import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CodeNestIconBtn extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final double borderWidth;
  final BorderStyle borderStyle;
  final double strokeAlign;
  final double size;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CodeNestIconBtn({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth = 1.0,
    this.borderStyle = BorderStyle.solid,
    this.strokeAlign = BorderSide.strokeAlignInside,
    this.size = 48.0,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.all(8.0),
  });

  /// Flutter Icon button
  factory CodeNestIconBtn.icon({
    required IconData iconData,
    required VoidCallback? onPressed,
    Color iconColor = Colors.white,
    Color? backgroundColor,
    Color? borderColor,
    double borderWidth = 1.0,
    BorderStyle borderStyle = BorderStyle.solid,
    double strokeAlign = BorderSide.strokeAlignInside,
    double size = 48.0,
    double borderRadius = 12.0,
    EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
  }) {
    return CodeNestIconBtn(
      icon: Icon(iconData, color: iconColor),
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      borderWidth: borderWidth,
      borderStyle: borderStyle,
      strokeAlign: strokeAlign,
      size: size,
      borderRadius: borderRadius,
      padding: padding,
    );
  }

  /// SVG icon button
  factory CodeNestIconBtn.svg({
    required String assetPath,
    required VoidCallback? onPressed,
    Color iconColor = Colors.white,
    Color? backgroundColor,
    Color? borderColor,
    double borderWidth = 1.0,
    BorderStyle borderStyle = BorderStyle.solid,
    double strokeAlign = BorderSide.strokeAlignInside,
    double size = 48.0,
    double borderRadius = 12.0,
    EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
  }) {
    return CodeNestIconBtn(
      icon: SvgPicture.asset(assetPath, color: iconColor),
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      borderWidth: borderWidth,
      borderStyle: borderStyle,
      strokeAlign: strokeAlign,
      size: size,
      borderRadius: borderRadius,
      padding: padding,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        width: size,
        height: size,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          border: borderColor != null
              ? Border.all(
                  color: borderColor!,
                  width: borderWidth,
                  style: borderStyle,
                  strokeAlign: strokeAlign, // Flutter 3.10+
                )
              : null,
        ),
        child: Center(child: icon),
      ),
    );
  }
}
