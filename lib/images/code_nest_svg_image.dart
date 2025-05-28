import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CodeNestSvgImage extends StatelessWidget {
  final String assetPath;
  final double? width;
  final double? height;
  final BoxFit fit;

  const CodeNestSvgImage({
    super.key,
    required this.assetPath,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetPath, width: width, height: height, fit: fit);
  }
}
