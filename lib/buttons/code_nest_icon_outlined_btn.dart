import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CodeNestIconOutlinedBtn extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onPressed;
  final Color borderColor;
  final double borderWidth;
  final double size;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;

  const CodeNestIconOutlinedBtn({
    super.key,
    required this.icon,
    required this.onPressed,
    this.borderColor = Colors.blue,
    this.borderWidth = 1.5,
    this.size = 48.0,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.all(8.0),
    this.backgroundColor,
  });

  /// Factory constructor for [IconData]
  factory CodeNestIconOutlinedBtn.icon({
    required IconData iconData,
    required VoidCallback? onPressed,
    Color iconColor = Colors.blue,
    Color borderColor = Colors.blue,
    double borderWidth = 1.5,
    double size = 48.0,
    double borderRadius = 12.0,
    EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
    Color? backgroundColor,
  }) {
    return CodeNestIconOutlinedBtn(
      icon: Icon(iconData, color: iconColor),
      onPressed: onPressed,
      borderColor: borderColor,
      borderWidth: borderWidth,
      size: size,
      borderRadius: borderRadius,
      padding: padding,
      backgroundColor: backgroundColor,
    );
  }

  /// Factory constructor for SVG icon
  factory CodeNestIconOutlinedBtn.svg({
    required String assetPath,
    required VoidCallback? onPressed,
    Color iconColor = Colors.blue,
    Color borderColor = Colors.blue,
    double borderWidth = 1.5,
    double size = 48.0,
    double borderRadius = 12.0,
    EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
    Color? backgroundColor,
  }) {
    return CodeNestIconOutlinedBtn(
      icon: SvgPicture.asset(assetPath, color: iconColor),
      onPressed: onPressed,
      borderColor: borderColor,
      borderWidth: borderWidth,
      size: size,
      borderRadius: borderRadius,
      padding: padding,
      backgroundColor: backgroundColor,
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
          border: Border.all(color: borderColor, width: borderWidth),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(child: icon),
      ),
    );
  }
}
