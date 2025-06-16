import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CodeNestShimmerLoader extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final Color baseColor;
  final Color highlightColor;
  final bool isCircle;
  final Widget? child;

  const CodeNestShimmerLoader({
    super.key,
    this.width = double.infinity,
    this.height = 16.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.baseColor = const Color(0xFFE0E0E0),        // default: grey[300]
    this.highlightColor = const Color(0xFFF5F5F5),   // default: grey[100]
    this.isCircle = false,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: child ??
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: baseColor,
              shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
              borderRadius: isCircle ? null : borderRadius,
            ),
          ),
    );
  }
}
