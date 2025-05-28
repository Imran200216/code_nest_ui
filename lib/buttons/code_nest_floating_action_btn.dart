import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CodeNestFloatingActionBtn extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double elevation;
  final double size;
  final ShapeBorder shape;

  const CodeNestFloatingActionBtn({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    this.elevation = 6.0,
    this.size = 56.0,
    this.shape = const CircleBorder(),
  });

  /// Constructor for using Flutter [IconData]
  factory CodeNestFloatingActionBtn.icon({
    required IconData iconData,
    required VoidCallback onPressed,
    Color iconColor = Colors.white,
    Color backgroundColor = Colors.blue,
    double elevation = 6.0,
    double size = 56.0,
    ShapeBorder shape = const CircleBorder(),
  }) {
    return CodeNestFloatingActionBtn(
      icon: Icon(iconData, color: iconColor),
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      elevation: elevation,
      size: size,
      shape: shape,
    );
  }

  /// Constructor for using an SVG asset
  factory CodeNestFloatingActionBtn.svg({
    required String assetPath,
    required VoidCallback onPressed,
    Color iconColor = Colors.white,
    Color backgroundColor = Colors.blue,
    double elevation = 6.0,
    double size = 56.0,
    ShapeBorder shape = const CircleBorder(),
  }) {
    return CodeNestFloatingActionBtn(
      icon: SvgPicture.asset(assetPath, color: iconColor),
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      elevation: elevation,
      size: size,
      shape: shape,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      shape: shape,
      elevation: elevation,
      child: InkWell(
        onTap: onPressed,
        customBorder: shape,
        child: SizedBox(
          width: size,
          height: size,
          child: Center(child: icon),
        ),
      ),
    );
  }
}
